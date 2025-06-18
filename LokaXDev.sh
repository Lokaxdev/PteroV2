#!/bin/bash

# Color
BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e "\n\n"
  echo -e " ██▓     ▒█████   ██ ▄█▀▄▄▄      ▒██   ██▒▓█████▄ ▓█████ ██▒   █▓"
  echo -e "▓██▒    ▒██▒  ██▒ ██▄█▒▒████▄    ▒▒ █ █ ▒░▒██▀ ██▌▓█   ▀▓██░   █▒"
  echo -e "▒██░    ▒██░  ██▒▓███▄░▒██  ▀█▄  ░░  █   ░░██   █▌▒███   ▓██  █▒░"
  echo -e "▒██░    ▒██   ██░▓██ █▄░██▄▄▄▄██  ░ █ █ ▒ ░▓█▄   ▌▒▓█  ▄  ▒██ █░░"
  echo -e "░██████▒░ ████▓▒░▒██▒ █▄▓█   ▓██▒▒██▒ ▒██▒░▒████▓ ░▒████▒  ▒▀█░"
  echo -e "░ ▒░▓  ░░ ▒░▒░▒░ ▒ ▒▒ ▓▒▒▒   ▓▒█░▒▒ ░ ░▓ ░ ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░"
  echo -e "░ ░ ▒  ░  ░ ▒ ▒░ ░ ░▒ ▒░ ▒   ▒▒ ░░░   ░▒ ░ ░ ▒  ▒  ░ ░  ░  ░ ░░"
  echo -e "  ░ ░   ░ ░ ░ ▒  ░ ░░ ░  ░   ▒    ░    ░   ░ ░  ░    ░       ░░"
  echo -e "    ░  ░    ░ ░  ░  ░        ░  ░ ░    ░     ░       ░  ░     ░"
  echo -e "\n\n"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                AUTO INSTALLER THEMA             [+]${NC}"
  echo -e "${BLUE}[+]                  © LOKAXDEV                     [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e ""
  echo -e "Suicide a mistake"
  echo -e "It's so hard to stay attached to this world.."
  echo -e ""
  echo -e "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 : @LokaXDev"
  echo -e "𝗖𝗥𝗘𝗗𝗜𝗧𝗦 : @LokaXDev"
  sleep 4
  clear
}

install_jq() {
  echo -e "\n${BLUE}[+] Updating and installing jq...${NC}"
  sudo apt update && sudo apt install -y jq
  [ $? -eq 0 ] && echo -e "${GREEN}[+] jq installed successfully${NC}" || { echo -e "${RED}[!] Failed to install jq${NC}"; exit 1; }
  sleep 1
  clear
}

check_token() {
  echo -e "\n${BLUE}[+] Enter access token: ${NC}"
  read -r u
  u=$(echo "$u" | xargs)

  if [ "$u" != "$(echo 'bG9rYXhkZXZnaXRodWI=' | base64 --decode)" ]; then
    echo -e "${RED}[!] ACCESS DENIED${NC}"
    echo -e "${YELLOW}Contact: t.me/lokaXDev${NC}"
    exit 1
  fi
  clear
}

install_theme() {
  while true; do
    echo -e "\n${BLUE}[+] Select theme:${NC}"
    echo "1. stellar"
    echo "2. billing" 
    echo "3. enigma"
    echo "x. back"
    echo -n "Choice (1/2/3/x): "
    read -r SELECT_THEME

    case "$SELECT_THEME" in
      1) THEME_URL="https://github.com/gitfdil1248/thema/raw/main/C2.zip"; break ;;
      2) THEME_URL="https://github.com/DITZZ112/foxxhostt/raw/main/C1.zip"; break ;;
      3) THEME_URL="https://github.com/gitfdil1248/thema/raw/main/C3.zip"; break ;;
      x) return ;;
      *) echo -e "${RED}Invalid choice${NC}" ;;
    esac
  done

  [ -e /root/pterodactyl ] && sudo rm -rf /root/pterodactyl
  wget -q "$THEME_URL" && sudo unzip -o "$(basename "$THEME_URL")"

  case "$SELECT_THEME" in
    1|3)
      sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
      curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
      sudo apt install -y nodejs
      sudo npm i -g yarn
      cd /var/www/pterodactyl
      yarn add react-feather
      php artisan migrate
      yarn build:production
      php artisan view:clear
      [ "$SELECT_THEME" -eq 1 ] && sudo rm /root/C2.zip || sudo rm /root/C3.zip
      ;;
    2)
      sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
      curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
      sudo apt install -y nodejs
      npm i -g yarn
      cd /var/www/pterodactyl
      yarn add react-feather
      php artisan billing:install stable
      php artisan migrate
      yarn build:production
      php artisan view:clear
      sudo rm /root/C1.zip
      ;;
  esac

  sudo rm -rf /root/pterodactyl
  echo -e "\n${GREEN}[+] Theme installed successfully${NC}"
  sleep 2
  clear
}

uninstall_theme() {
  echo -e "\n${BLUE}[+] Uninstalling theme...${NC}"
  bash <(curl https://raw.githubusercontent.com/gitfdil1248/thema/main/repair.sh)
  echo -e "\n${GREEN}[+] Theme uninstalled${NC}"
  sleep 2
  clear
}

install_themeSteeler() {
  echo -e "\n${BLUE}[+] Installing Stellar theme...${NC}"
  wget -O /root/C2.zip https://github.com/gitfdil1248/thema/raw/main/C2.zip
  unzip /root/C2.zip -d /root/pterodactyl
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C2.zip
  sudo rm -rf /root/pterodactyl
  echo -e "\n${GREEN}[+] Stellar theme installed${NC}"
  sleep 2
  clear
  exit 0
}

create_node() {
  echo -e "\n${BLUE}[+] Creating node...${NC}"
  read -p "Location name: " location_name
  read -p "Location description: " location_description
  read -p "Domain: " domain
  read -p "Node name: " node_name
  read -p "RAM (MB): " ram
  read -p "Disk space (MB): " disk_space
  read -p "Location ID: " locid

  cd /var/www/pterodactyl || { echo "Directory not found"; exit 1; }

  php artisan p:location:make <<EOF
$location_name
$location_description
EOF

  php artisan p:node:make <<EOF
$node_name
$location_description
$locid
https
$domain
yes
no
no
$ram
$ram
$disk_space
$disk_space
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

  echo -e "\n${GREEN}[+] Node created successfully${NC}"
  sleep 2
  clear
  exit 0
}

uninstall_panel() {
  echo -e "\n${BLUE}[+] Uninstalling panel...${NC}"
  read -p "Uninstall Panel (y/n): " ypanel
  read -p "Uninstall Wings (y/n): " ywings
  read -p "Confirm (y/n): " y1
  read -p "Final confirmation (y/n): " y2

  bash <(curl -s https://pterodactyl-installer.se) <<EOF
6
$ypanel
$ywings
$y1
$y2
EOF

  echo -e "\n${GREEN}[+] Panel uninstalled${NC}"
  sleep 2
  clear
  exit 0
}

configure_wings() {
  echo -e "\n${BLUE}[+] Configuring wings...${NC}"
  read -p "Enter wings token: " wings
  eval "$wings"
  sudo systemctl start wings
  echo -e "\n${GREEN}[+] Wings configured${NC}"
  sleep 2
  clear
  exit 0
}

hackback_panel() {
  echo -e "\n${BLUE}[+] Adding admin account...${NC}"
  read -p "Username: " user
  read -p "Password: " psswdhb
  
  cd /var/www/pterodactyl || { echo "Directory not found"; exit 1; }
  php artisan p:user:make <<EOF
yes
hackback@gmail.com
$user
$user
$user
$psswdhb
EOF

  echo -e "\n${GREEN}[+] Admin account added${NC}"
  sleep 2
  exit 0
}

ubahpw_vps() {
  echo -e "\n${GREEN}[+] Changing VPS password...${NC}"
  read -p "New password: " pw
  read -p "Confirm password: " pw2

  [ "$pw" != "$pw2" ] && { echo -e "${RED}Passwords don't match!${NC}"; exit 1; }
  echo -e "$pw\n$pw" | passwd
  echo -e "\n${GREEN}[+] Password changed${NC}"
  sleep 2
  exit 0
}

auto_installer() {
  echo -e "\n${GREEN}[+] Auto installing panel...${NC}"
  read -p "Admin name: " nama
  read -p "Password: " pw
  read -p "Subdomain: " subdo
  read -p "Node subdomain: " nodesubdo

  bash <(curl -s https://pterodactyl-installer.se) <<EOF
2
\n
\n
$pw
Asia/Jakarta
admin@gmail.com
admin@gmail.com
$nama
$nama
$nama
$pw
$subdo
y
y
y
y
yes
A
y
y
y
$subdo
y
user
$pw
y
$nodesubdo
y
admin@gmail.com
y
EOF

  echo -e "\n${GREEN}[+] Panel installed${NC}"
  sleep 2
  exit 0
}

main_menu() {
  while true; do
    clear
    echo -e "${RED}        _,gggggggggg.                                     ${NC}"
    echo -e "${RED}    ,ggggggggggggggggg.                                   ${NC}"
    echo -e "${RED}  ,ggggg        gggggggg.                                 ${NC}"
    echo -e "${RED} ,ggg'               'ggg.                                ${NC}"
    echo -e "${RED}',gg       ,ggg.      'ggg:                               ${NC}"
    echo -e "${RED}'ggg      ,gg'''  .    ggg       Auto Installer LokaXDev  ${NC}"
    echo -e "${RED}gggg      gg     ,     ggg      ------------------------  ${NC}"
    echo -e "${RED}ggg:     gg.     -   ,ggg      • Telegram : t.me/lokaxdev ${NC}"
    echo -e "${RED} ggg:     ggg._    _,ggg       • Credits  : LOKAXDEV      ${NC}"
    echo -e "${RED} ggg.    '.'''ggggggp          • Support by : no one      ${NC}"
    echo -e "${RED}  'ggg    '-.__                                           ${NC}"
    echo -e "${RED}    ggg                                                   ${NC}"
    echo -e "${RED}      ggg                                                 ${NC}"
    echo -e "${RED}        ggg.                                              ${NC}"
    echo -e "${RED}          ggg.                                            ${NC}"
    echo -e "${RED}             b.                                           ${NC}"
    echo -e "\nINSTALL LIST:"
    echo "1. Install theme"
    echo "2. Uninstall theme"
    echo "3. Configure Wings"
    echo "4. Create Node"
    echo "5. Uninstall Panel"
    echo "6. Stellar Theme"
    echo "7. Hack Back Panel"
    echo "8. Change Password Vps"
    echo "9. Auto Install Panel MAY BE ERROR"
    echo "x. Exit"
    echo -n "SELECT ONE 1/2/x: "
    read -r MENU_CHOICE

    case "$MENU_CHOICE" in
      1) install_theme ;;
      2) uninstall_theme ;;
      3) configure_wings ;;
      4) create_node ;;
      5) uninstall_panel ;;
      6) install_themeSteeler ;;
      7) hackback_panel ;;
      8) ubahpw_vps ;;
      9) auto_installer ;;
      x) echo "Exiting..."; exit 0 ;;
      *) echo "Invalid choice"; sleep 1 ;;
    esac
  done
}

display_welcome
install_jq
check_token
main_menu
