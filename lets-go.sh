#!/bin/bash

#Error handling
set -e

# Text colors
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

endpoint=$1 #Project directory
base_path=~/Documents/MM_Dev_PC #Parent directory path
full_path="${base_path}/${endpoint}"

animation () {
    for ((i=1; i<=4; i++)); do
        printf ">"
        sleep .1
    done
}

progress () {
    animation
    echo -e " ${BLUE}Directory located at...${NC}"
    sleep .3
    animation
    echo -e " ${PURPLE}${full_path}${NC}"
    sleep .3
    animation
    echo -e " ${GREEN}Launching VS Code...${NC}" #Or "Xcode"
    sleep .3
}

lets_go () { 
    cd ${full_path}
    progress
    printf "\v      ------------------     \n" 
    printf "::... BEAST MODE ENGAGED ...::\n" 
    printf "      ------------------     \n" 
    code . #Opens VS Code at project directory
    # For Xcode, use "xed ."
}

lets_go

# Place script in your home/root dir., and run via: 
# $ . lets-go.sh "<project-directory>"