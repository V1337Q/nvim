#!/bin/bash
INSTALL_DIR="$HOME/.config/nvim"

WELCOME_MSG="🚀 Welcome to the installation script!"
CONTINUE_PROMPT="Do you want to install to $INSTALL_DIR? [Y/n] "
OVERWRITE_PROMPT="Directory exists! Overwrite? [y/N] "
BACKUP_PROMPT="Create backup first? [Y/n] "
SUCCESS_MSG="✅ Installation successful!"
CANCEL_MSG="❌ Installation canceled."
BACKUP_MSG="🔄 Created backup at:"

COLOR_RESET="\033[0m"
COLOR_RED="\033[31m"
COLOR_GREEN="\033[32m"
COLOR_YELLOW="\033[33m"
COLOR_BLUE="\033[34m"

message() {
    local color="$1"
    local msg="$2"
    echo -e "${color}${msg}${COLOR_RESET}"
}

confirm() {
    local prompt="$1"
    local default="$2"
    local response
    
    read -r -p "$prompt" response
    case "${response:-$default}" in
        [yY]) return 0 ;;
        [nN]) return 1 ;;
        *) message "$COLOR_RED" "Invalid option!"; confirm "$prompt" "$default" ;;
    esac
}

main() {
    message "$COLOR_BLUE" "$WELCOME_MSG"
    
    if ! confirm "$CONTINUE_PROMPT" "Y"; then
        message "$COLOR_YELLOW" "$CANCEL_MSG"
        exit 1
    fi

    if [ -d "$INSTALL_DIR" ]; then
        if confirm "$OVERWRITE_PROMPT" "N"; then
            if confirm "$BACKUP_PROMPT" "Y"; then
                backup_dir="${INSTALL_DIR}.bak.$(date +%s)"
                mv "$INSTALL_DIR" "$backup_dir"
                message "$COLOR_YELLOW" "$BACKUP_MSG $backup_dir"
            fi
            rm -rf "$INSTALL_DIR"
        else
            message "$COLOR_YELLOW" "$CANCEL_MSG"
            exit 1
        fi
    fi

    mkdir -p "$INSTALL_DIR"
    message "$COLOR_BLUE" "📁 Copying files to $INSTALL_DIR..."
    
    shopt -s dotglob
    cp -r ./* "$INSTALL_DIR"/
    shopt -u dotglob

    message "$COLOR_GREEN" "$SUCCESS_MSG"
}


