#!/bin/bash

# Color
BLUE='\033[0;34m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e "\n\n \n ██▓     ▒█████   ██ ▄█▀▄▄▄      ▒██   ██▒▓█████▄ ▓█████ ██▒   █▓\n▓██▒    ▒██▒  ██▒ ██▄█▒▒████▄    ▒▒ █ █ ▒░▒██▀ ██▌▓█   ▀▓██░   █▒\n▒██░    ▒██░  ██▒▓███▄░▒██  ▀█▄  ░░  █   ░░██   █▌▒███   ▓██  █▒░\n▒██░    ▒██   ██░▓██ █▄░██▄▄▄▄██  ░ █ █ ▒ ░▓█▄   ▌▒▓█  ▄  ▒██ █░░\n░██████▒░ ████▓▒░▒██▒ █▄▓█   ▓██▒▒██▒ ▒██▒░▒████▓ ░▒████▒  ▒▀█░  \n░ ▒░▓  ░░ ▒░▒░▒░ ▒ ▒▒ ▓▒▒▒   ▓▒█░▒▒ ░ ░▓ ░ ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  \n░ ░ ▒  ░  ░ ▒ ▒░ ░ ░▒ ▒░ ▒   ▒▒ ░░░   ░▒ ░ ░ ▒  ▒  ░ ░  ░  ░ ░░  \n  ░ ░   ░ ░ ░ ▒  ░ ░░ ░  ░   ▒    ░    ░   ░ ░  ░    ░       ░░  \n    ░  ░    ░ ░  ░  ░        ░  ░ ░    ░     ░       ░  ░     ░  \n       "                                    ░                 ░   \n\n\n"
  echo -e ""
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BLUE}[+]                AUTO INSTALLER THEMA             [+]${NC}"
  echo -e "${BLUE}[+]                  © LOKAXDEV                     [+]${NC}"
  echo -e "${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e ""
  echo -e "Suicide a mistake"
  echo -e "It's so hard to stay attached to this world.."
  echo -e ""
  echo -e "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :"
  echo -e "@LokaXDev"
  echo -e "𝗖𝗥𝗘𝗗𝗜𝗧𝗦 :"
  echo -e "@LokaXDev"
  sleep 4
  clear
}

#Update and install jq
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
    echo -e "${GREEN}[+]              INSTALL JQ BERHASIL                [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
  else
    echo -e "                                                       "
    echo -e "${RED}[+] =============================================== [+]${NC}"
    echo -e "${RED}[+]              INSTALL JQ GAGAL                   [+]${NC}"
    echo -e "${RED}[+] =============================================== [+]${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
  clear
}

#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]               LICENSE KEY LOKAXDEV              [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "${YELLOW}MASUKAN AKSES TOKEN :${NC}"
  read -r u
  u=$(echo "$u" | xargs)  # Trim spaces from input

  token_encrypted="bG9rYXhkZXZnaXRodWI="
  decoded_token=$(echo "$token_encrypted" | base64 --decode)

  if [ "$u" = "$decoded_token" ]; then
    echo -e "${GREEN}ACCESS SUCCESSFUL${NC}"
  else
    echo -e "${RED}ACCESS DENIED${NC}"
    echo -e "${YELLOW}TELEGRAM : @LokaXDev${NC}"
    echo -e "${YELLOW}Gmail : @LawlietXLoka@gmail.com${NC}"
    echo -e "${YELLOW}HOW TO GET TOKEN : CHAT ME ON t.me/lokaXDev${NC}"
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
    echo -e "Select theme"
    echo "1. stellar"
    echo "2. billing"
    echo "3. enigma"
    echo "x. kembali"
    echo -e "masukan pilihan (1/2/3/x) :"
    read -r SELECT_THEME
    case "$SELECT_THEME" in
      1)
        THEME_URL="https://github.com/gitfdil1248/thema/raw/main/C2.zip"
        break
        ;;
      2)
        THEME_URL=$(echo -e "\x68\x74\x74\x70\x73\x3A\x2F\x2F\x67\x69\x74\x68\x75\x62\x2E\x63\x6F\x6D\x2F\x44\x49\x54\x5A\x5A\x31\x31\x32\x2F\x66\x6F\x78\x78\x68\x6F\x73\x74\x74\x2F\x72\x61\x77\x2F\x6D\x61\x69\x6E\x2F\x43\x31\x2E\x7A\x69\x70")
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
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
  
  if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
  if [ "$SELECT_THEME" -eq 1 ]; then
    echo -e "                                                       "
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "                                                                   "
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

    echo -e "                                                       "
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e ""
    sleep 2
    clear
    exit 0

  elif [ "$SELECT_THEME" -eq 2 ]; then
    echo -e "                                                       "
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
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
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+]                  INSTALL SUCCESS                [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    sleep 2
    clear
    return

  elif [ "$SELECT_THEME" -eq 3 ]; then
    echo -e "                                                       "
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    echo -e "${YELLOW}Masukkan link wa (https://wa.me...) : ${NC}"
    read LINK_WA
    echo -e "${YELLOW}Masukkan link group (https://.....) : ${NC}"
    read LINK_GROUP
    echo -e "${YELLOW}Masukkan link channel (https://...) : ${NC}"
    read LINK_CHNL

    # Mengganti placeholder dengan nilai dari pengguna
    sudo sed -i "s|LINK_WA|$LINK_WA|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_GROUP|$LINK_GROUP|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_CHNL|$LINK_CHNL|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    
    sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt install -y nodejs
    sudo npm i -g yarn
    cd /var/www/pterodactyl
    yarn add react-feather
    php artisan migrate
    yarn build:production
    php artisan view:clear
    sudo rm /root/C3.zip
    sudo rm -rf /root/pterodactyl

    echo -e "                                                       "
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
    echo -e "${GREEN}[+] =============================================== [+]${NC}"
    echo -e ""
    sleep 5
  else
    echo ""
    echo "Pilihan tidak valid. silahkan pilih 1/2/3."
  fi
}

# Uninstall theme
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    DELETE THEME                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/gitfdil1248/thema/main/repair.sh)
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 DELETE THEME SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}

install_themeSteeler() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                                   "

  # Unduh file tema
  wget -O /root/C2.zip https://github.com/gitfdil1248/thema/raw/main/C2.zip

  # Ekstrak file tema
  unzip /root/C2.zip -d /root/pterodactyl

  # Salin tema ke direktori Pterodactyl
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

  # Instal Node.js dan Yarn
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn

  # Instal dependensi dan build tema
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear

  # Hapus file dan direktori sementara
  sudo rm /root/C2.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e ""
  sleep 2
  clear
  exit 0
}

create_node() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    CREATE NODE                     [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  
  # Minta input dari pengguna
  read -p "Masukkan nama lokasi: " location_name
  read -p "Masukkan deskripsi lokasi: " location_description
  read -p "Masukkan domain: " domain
  read -p "Masukkan nama node: " node_name
  read -p "Masukkan RAM (dalam MB): " ram
  read -p "Masukkan jumlah maksimum disk space (dalam MB): " disk_space
  read -p "Masukkan Locid: " locid

  # Ubah ke direktori pterodactyl
  cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

  # Membuat lokasi baru
  php artisan p:location:make <<EOF
$location_name
$location_description
EOF

  # Membuat node baru
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

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]        CREATE NODE & LOCATION SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}

uninstall_panel() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    UNINSTALL PANEL                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "UninstallPanel y/n " ypanel
  read -p "UninstallWings y/n " ywings
  read -p "Input y/n " y1
  read -p "Input y/n " y2

  bash <(curl -s https://pterodactyl-installer.se) <<EOF
6
$ypanel
$ywings
$y1
$y2
EOF

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 UNINSTALL PANEL SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}

configure_wings() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    CONFIGURE WINGS                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  
  # Minta input token dari pengguna
  read -p "input token Configure startwings: " wings

  eval "$wings"
  # Menjalankan perintah systemctl start wings
  sudo systemctl start wings

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 CONFIGURE WINGS SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}

hackback_panel() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    HACK BACK PANEL                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  # Minta input dari pengguna
  read -p "Username Panel: " user
  read -p "password login " psswdhb
  
  cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

  # Membuat user baru
  php artisan p:user:make <<EOF
yes
hackback@gmail.com
$user
$user
$user
$psswdhb
EOF

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 AKUN TELAH DI ADD             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  exit 0
}

ubahpw_vps() {
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                    UBAH PASSWORD VPS       [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "New Password: " pw
  read -p "Re - Type new password :" pw2

  if [ "$pw" != "$pw2" ]; then
    echo -e "${RED}Passwords don't match!${NC}"
    exit 1
  fi

  echo -e "$pw\n$pw" | passwd

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 GANTI PW VPS SUCCESS         [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  exit 0
}

auto_installer() {
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]            AUTO INSTALL PANEL + WINGS           [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "Masukkan Nama " nama
  read -p "Masukkan Password " pw
  read -p "Masukkan Subdomain " subdo
  read -p "Masukkan NodeSubdomain " nodesubdo

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

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                  AUTO INSTALL SUKSE             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  exit 0
}

# Main script
display_welcome
install_jq
check_token

while true; do
  clear
  echo -e "                                                                     "
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
  echo -e "                                                                     "
  echo -e "INSTALL LIST:"
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
  echo -e "SELECT ONE 1/2/x:"
  read -r MENU_CHOICE
  clear

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
    x) echo "Keluar dari skrip."; exit 0 ;;
    *) echo "Pilihan tidak valid, silahkan coba lagi." ;;
  esac
done
