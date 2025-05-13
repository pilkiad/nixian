#!/bin/bash
sleep 10

# Function to display the window name
display_window_name() {
    clear

    echo -e "\\033[47m\\033[30m"
    echo " -=- -=- -=- -=- -=- -=- -=- -=-"
    echo "           +---------+"
    echo "           |   NOW   |"
    echo "           | PLAYING |"
    echo "           |    _    |"
    echo "           |   / \\   |"
    echo "           |  ( o )  |"
    echo "           |   \\_/   |"
    echo "           +---------+"
    echo ""
    echo " $1"
}

# Main loop
while true; do
    # Get all Spotify PIDs
    pids=$(pgrep -f spotify)

    # Check if any PIDs were found
    if [ -z "$pids" ]; then
        display_window_name "Nothing :("
    else
        # Get the first PID
        first_pid=$(echo "$pids" | head -n 1)

        # Get the window ID associated with the first PID
        window_info=$(wmctrl -lp | grep "$first_pid" | head -n 1)

        # Check if a window was found
        if [ -z "$window_info" ]; then
            display_window_name "Nothing"
        else
            # Extract the window ID
            window_id=$(echo "$window_info" | awk '{print $1}')

            # Get the window name using xprop
            window_name=$(xprop -id "$window_id" WM_NAME)

            # Display the window name
            display_window_name "${window_name#*= }"
        fi
    fi

    # Wait for a few seconds before updating
    sleep 10
done
