#!/bin/bash

# LICENSE LOKAXDEV 2024 - 20XX
# https://github.com/lokaxdev
# This script is free. Do not sell this script.
# GRAHHH

# Colors
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e ""
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BLUE}[+]                AUTO INSTALLER THEME             [+]${NC}"
  echo -e "${BLUE}[+]                  © LOKAXDEV                     [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${RED}[+] =============================================== [+]${NC}"
  echo -e ""
  echo -e "This script was created to simplify Pterodactyl theme installation."
  echo -e "Selling this script is strictly prohibited."
  echo -e ""
  echo -e "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :"
  echo -e "@LokaXDev"
  echo -e "𝗖𝗥𝗘𝗗𝗜𝗧𝗦 :"
  echo -e "@LokaXDev"
  sleep 4
  clear
}

# Update and install jq
install_jq() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]             UPDATE & INSTALL JQ                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sudo apt update && sudo apt install -y jq
  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+]              JQ INSTALLATION SUCCESSFUL         [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
  else
    echo -e "                                                       "
    echo -e "${RED}[+] =============================================== [+]${NC}"
    echo -e "${RED}[+]              JQ INSTALLATION FAILED             [+]${NC}"
    echo -e "${RED}[+] =============================================== [+]${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
  clear
}

# Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]               LICENSE LOKAXDEV                  [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "${YELLOW}ENTER TOKEN:${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "lokaxdevgithub" ]; then
    echo -e "${GREEN}ACCESS GRANTED${NC}"
  else
    echo -e "${GREEN}This project is under development.${NC}"
    echo -e "${YELLOW}TELEGRAM : @LokaXDev${NC}"
    echo -e "${YELLOW}WHATSAPP : UNDEFINED (404 NOT FOUND)${NC}"
    echo -e "${YELLOW}HOW TO GET TOKEN : Ask me on t.me/lokaxdev${NC}"
    echo -e "${YELLOW}©LokaXDev${NC}"
    exit 1
  fi
  clear
}

# Install theme
install_theme() {
  while true; do
    echo -e "                                                       "
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${BLUE}[+]                   SELECT THEME                  [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    echo -e "Select the theme you want to install:"
    echo "1. Stellar"
    echo "2. Billing"
    echo "3. Enigma"
    echo "x. Go back"
    echo -e "Enter your choice (1/2/3/x):"
    read -r SELECT_THEME
    case "$SELECT_THEME" in
      1)
        THEME_URL="https://github.com/gitfdil1248/thema/raw/main/C2.zip"
        break
        ;;
      2)
        THEME_URL="https://github.com/DITZZ112/foxxhostt/raw/main/C1.zip"
        break
        ;;
      3)
        THEME_URL="https://github.com/gitfdil1248/thema/raw/main/C3.zip"
        break
        ;; 
      x)
        return
        ;;
      *)
        echo -e "${RED}Invalid choice, please try again.${NC}"
        ;;
    esac
  done
  
  if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
  if [ "$SELECT_THEME" -eq 1 ]; then
    echo -e "${GREEN}Installing Stellar Theme...${NC}"
    # (Add installation process for Stellar theme)
    exit 0
  elif [ "$SELECT_THEME" -eq 2 ]; then
    echo -e "${GREEN}Installing Billing Theme...${NC}"
    # (Add installation process for Billing theme)
    return
  elif [ "$SELECT_THEME" -eq 3 ]; then
    echo -e "${GREEN}Installing Enigma Theme...${NC}"
    # (Add installation process for Enigma theme)
    exit 0
  else
    echo -e "${RED}Invalid choice.${NC}"
  fi
}

# (Repeat similar changes for other functions)
