print_credits_box() {
    local width=40
    local title="Credits"
    local content=(
        "Script created by: Prayas Mittal"
        "Date: 9th August 2023"
        "Version: 1.0"
    )
    
    printf '\e[1;33m'   # Set text color to yellow
    
    # Print the top of the box
    printf '=%.0s' $(seq 1 $width)
    printf '\n'
    
    # Print the title centered within the box
    printf '%*s\n' $((($width + ${#title}) / 2)) "$title"
    
    # Print the content lines centered within the box
    for line in "${content[@]}"; do
        printf '%*s\n' $((($width + ${#line}) / 2)) "$line"
    done
    
    # Print the bottom of the box
    printf '=%.0s' $(seq 1 $width)
    printf '\n'
    
    printf '\e[0m'     # Reset text color
}

# Call the function to print the fancy box
print_credits_box