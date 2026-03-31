#!/bin/bash

# Mouse Movement Script
# Moves mouse from edge to edge repeatedly for 10 seconds, every 3 minutes
# Designed for macOS
# Usage: ./mouse_mover.sh [duration_in_minutes]

# Parse command line arguments
DURATION_MINUTES=${1:-0}  # Default to 0 (infinite) if no argument provided

# Check if cliclick is installed, if not use AppleScript fallback
if command -v cliclick >/dev/null 2>&1; then
    USE_CLICLICK=true
    echo "Using cliclick for mouse control"
else
    USE_CLICLICK=false
    echo "Using AppleScript for mouse control"
    echo "Note: You can install cliclick with: brew install cliclick"
fi

# Get screen dimensions
if $USE_CLICLICK; then
    # Get screen size using system_profiler (more reliable)
    SCREEN_WIDTH=$(system_profiler SPDisplaysDataType | grep Resolution | awk '{print $2}' | head -1)
    SCREEN_HEIGHT=$(system_profiler SPDisplaysDataType | grep Resolution | awk '{print $4}' | head -1)
else
    # Fallback dimensions (common MacBook sizes)
    SCREEN_WIDTH=1440
    SCREEN_HEIGHT=900
fi

echo "Screen dimensions: ${SCREEN_WIDTH}x${SCREEN_HEIGHT}"

# Function to move mouse using cliclick
move_mouse_cliclick() {
    local x=$1
    local y=$2
    cliclick m:$x,$y
}

# Function to move mouse using AppleScript
move_mouse_applescript() {
    local x=$1
    local y=$2
    osascript -e "tell application \"System Events\" to set the mouse coordinates to {$x, $y}"
}

# Function to perform mouse movement for 10 seconds
perform_mouse_movement() {
    echo "Starting mouse movement for 10 seconds..."
    local start_time=$(date +%s)
    local end_time=$((start_time + 10))
    local y_center=$((SCREEN_HEIGHT / 2))
    
    while [ $(date +%s) -lt $end_time ]; do
        # Move to left edge
        if $USE_CLICLICK; then
            move_mouse_cliclick 0 $y_center
        else
            move_mouse_applescript 0 $y_center
        fi
        sleep 0.5
        
        # Move to right edge
        if $USE_CLICLICK; then
            move_mouse_cliclick $SCREEN_WIDTH $y_center
        else
            move_mouse_applescript $SCREEN_WIDTH $y_center
        fi
        sleep 0.5
    done
    echo "Mouse movement completed."
}

# Function to check for stop signal or time limit
check_stop_conditions() {
    # Check for manual stop signal
    if [ -f "/tmp/stop_mouse_mover" ]; then
        echo "Stop signal detected. Exiting..."
        rm -f "/tmp/stop_mouse_mover"
        exit 0
    fi
    
    # Check time limit if specified
    if [ $DURATION_MINUTES -gt 0 ]; then
        local current_time=$(date +%s)
        if [ $current_time -ge $end_time ]; then
            echo "Time limit of $DURATION_MINUTES minutes reached. Exiting..."
            exit 0
        fi
    fi
}

# Main loop
if [ $DURATION_MINUTES -gt 0 ]; then
    echo "Mouse mover started. Will run for $DURATION_MINUTES minutes."
    # Calculate end time
    start_time=$(date +%s)
    end_time=$((start_time + DURATION_MINUTES * 60))
    echo "Will stop automatically at $(date -r $end_time)"
else
    echo "Mouse mover started (infinite duration)."
fi

echo "Create file '/tmp/stop_mouse_mover' to stop gracefully."
echo "Press Ctrl+C to stop immediately."
echo ""

# Trap Ctrl+C to clean exit
trap 'echo "Stopping mouse mover..."; exit 0' INT

while true; do
    check_stop_conditions
    perform_mouse_movement
    
    # Show remaining time if duration is set
    if [ $DURATION_MINUTES -gt 0 ]; then
        local current_time=$(date +%s)
        local remaining_seconds=$((end_time - current_time))
        local remaining_minutes=$((remaining_seconds / 60))
        echo "Time remaining: $remaining_minutes minutes"
    fi
    
    echo "Waiting 3 minutes before next movement cycle..."
    
    # Wait 3 minutes (180 seconds) with periodic stop condition checks
    for i in $(seq 1 36); do  # 36 * 5 = 180 seconds
        sleep 5
        check_stop_conditions
    done
done