#!/usr/bin/env bash

###############################################
# Remember to forward 3 ports in your router. #
###############################################

1mapcycle() {
# Populate MapCycle.txt with checkpoint (co-op) maps
# Stock day & night maps included
cat <<EOF > $HOME/server/1sandstorm/Insurgency/Config/Server/MapCycle.txt
(Scenario="Scenario_Crossing_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Farmhouse_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hideout_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Ministry_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Outskirts_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Precinct_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Refinery_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Summit_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Tideway_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_PowerPlant_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Tell_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Bab_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hillside_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hillside_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Prison_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Prison_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Crossing_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Farmhouse_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Hideout_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Ministry_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Outskirts_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Precinct_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Refinery_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Summit_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Tideway_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_PowerPlant_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Tell_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Bab_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Crossing_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Farmhouse_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hideout_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Ministry_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Outskirts_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Precinct_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Refinery_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Summit_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Tideway_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_PowerPlant_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Tell_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Bab_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hillside_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hillside_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Crossing_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Farmhouse_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Hideout_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Ministry_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Outskirts_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Precinct_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Refinery_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Summit_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Tideway_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_PowerPlant_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Tell_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Bab_Checkpoint_Insurgents",Lighting="Night")
EOF
}

1engineini() {
# Populate Engine.ini (the last line is the server's configurable Tick Rate)
cat <<EOF > $HOME/server/1sandstorm/Insurgency/Saved/Config/LinuxServer/Engine.ini
[Core.System]
Paths=../../../Engine/Content
Paths=%GAMEDIR%Content
Paths=../../../Insurgency/Plugins/Wwise/Content
Paths=../../../Engine/Plugins/FX/Niagara/Content
Paths=../../../Insurgency/Plugins/InsurgencyUnitTests/Content
Paths=../../../Engine/Plugins/Developer/TraceSourceFiltering/Content
Paths=../../../Insurgency/Plugins/StatsCollector/Content
Paths=../../../Insurgency/Plugins/NWI/SlackFeedback/Content
Paths=../../../Insurgency/Plugins/ExampleContent/Content
Paths=../../../Insurgency/Plugins/NWI/InsurgencyGameplayDebugger/Content
Paths=../../../Insurgency/Plugins/NWI_Infected/Content
Paths=../../../Engine/Plugins/Developer/AnimationSharing/Content
Paths=../../../Engine/Plugins/Editor/GeometryMode/Content
Paths=../../../Engine/Plugins/Experimental/ChaosClothEditor/Content
Paths=../../../Engine/Plugins/Experimental/GeometryProcessing/Content
Paths=../../../Engine/Plugins/Experimental/GeometryCollectionPlugin/Content
Paths=../../../Engine/Plugins/Experimental/ChaosSolverPlugin/Content
Paths=../../../Engine/Plugins/Experimental/ChaosNiagara/Content
Paths=../../../Engine/Plugins/MovieScene/MovieRenderPipeline/Content

[/Script/OnlineSubsystemUtils.IpNetDriver]
NetServerMaxTickRate=64
EOF
}

1gameini() {
# Populate Game.ini, setup for the checkpoint (co-op) game mode
cat <<EOF > $HOME/server/1sandstorm/Insurgency/Saved/Config/LinuxServer/Game.ini
[Rcon]
bEnabled=True
Password=$Rpwd
ListenPort=$RPort
bAllowConsoleCommands=True

[/script/aimodule.aisenseconfig_sight]
AutoSuccessRangeFromLastSeenLocation=-1

[/Script/Engine.GameSession]
MaxPlayers=12

[/Script/Insurgency.TeamInfo]
bVotingEnabled=False

[/script/insurgency.insgamemode]
bKillFeed=True
bKillFeedSpectator=True
bKillerInfo=True
bKillerInfoRevealDistance=True
TeamKillLimit=3
bDeadSay=True
bDeadSayTeam=True
bVoiceAllowDeadChat=True
bVoiceEnemyHearsLocal=False
ObjectiveSpeedup=0.05
ObjectiveMaxSpeedupPlayers=10
bEnforceFriendlyFireReflect=False
bLoseSpawnProtectionOnMove=True
LoseSpawnProtectionOnMoveGrace=0.1
bDisableVehicles=False
bStartPlayersAsSpectators=True
DroppedWeaponLifespan=60

[/script/insurgency.insmultiplayermode]
GameStartingIntermissionTime=15
WinTime=5
PostRoundTime=10
PostGameTime=10
bAllowFriendlyFire=True
FriendlyFireModifier=0.5
bMapVoting=True
bUseMapCycle=False
bVoiceIntermissionAllowAll=True
IdleLimit=3600
IdleCheckFrequency=30
RoundLimit=1
WinLimit=1
PreRoundTime=5
InitialSupply=250
MaximumSupply=250
MinimumPlayers=1
bSupplyGainEnabled=False

[/script/insurgency.inscoopmode]
bUseVehicleInsertion=True
bRestrictClassByPlayerLevel=False
MaxPlayersToScaleEnemyCount=12
MinimumEnemies=8
MaximumEnemies=40
AIDifficulty=0.7
bBots=False

[/script/insurgency.inscheckpointgamemode]
DefendTimer=90
DefendTimerFinal=180
RetreatTimer=1
RespawnDPR=0.1
RespawnDelay=1
PostCaptureRushTimer=120
CounterAttackRespawnDPR=0.1
CounterAttackRespawnDelay=1
bCounterAttackReinforce=True
RoundTime=1800
EOF
}

2mapcycle() {
# Populate MapCycle.txt with checkpoint (co-op) maps
# Stock day & night maps included
cat <<EOF > $HOME/server/2sandstorm/Insurgency/Config/Server/MapCycle.txt
(Scenario="Scenario_Crossing_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Farmhouse_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hideout_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Ministry_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Outskirts_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Precinct_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Refinery_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Summit_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Tideway_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_PowerPlant_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Tell_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Bab_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hillside_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Hillside_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Prison_Checkpoint_Security",Lighting="Day")
(Scenario="Scenario_Prison_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Crossing_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Farmhouse_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Hideout_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Ministry_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Outskirts_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Precinct_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Refinery_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Summit_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Tideway_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_PowerPlant_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Tell_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Bab_Checkpoint_Insurgents",Lighting="Day")
(Scenario="Scenario_Crossing_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Farmhouse_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hideout_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Ministry_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Outskirts_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Precinct_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Refinery_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Summit_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Tideway_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_PowerPlant_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Tell_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Bab_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hillside_Checkpoint_Security",Lighting="Night")
(Scenario="Scenario_Hillside_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Crossing_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Farmhouse_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Hideout_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Ministry_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Outskirts_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Precinct_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Refinery_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Summit_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Tideway_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_PowerPlant_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Tell_Checkpoint_Insurgents",Lighting="Night")
(Scenario="Scenario_Bab_Checkpoint_Insurgents",Lighting="Night")
EOF
}

2engineini() {
# Populate Engine.ini (the last line is the server's configurable Tick Rate)
cat <<EOF > $HOME/server/2sandstorm/Insurgency/Saved/Config/LinuxServer/Engine.ini
[Core.System]
Paths=../../../Engine/Content
Paths=%GAMEDIR%Content
Paths=../../../Insurgency/Plugins/Wwise/Content
Paths=../../../Engine/Plugins/FX/Niagara/Content
Paths=../../../Insurgency/Plugins/InsurgencyUnitTests/Content
Paths=../../../Engine/Plugins/Developer/TraceSourceFiltering/Content
Paths=../../../Insurgency/Plugins/StatsCollector/Content
Paths=../../../Insurgency/Plugins/NWI/SlackFeedback/Content
Paths=../../../Insurgency/Plugins/ExampleContent/Content
Paths=../../../Insurgency/Plugins/NWI/InsurgencyGameplayDebugger/Content
Paths=../../../Insurgency/Plugins/NWI_Infected/Content
Paths=../../../Engine/Plugins/Developer/AnimationSharing/Content
Paths=../../../Engine/Plugins/Editor/GeometryMode/Content
Paths=../../../Engine/Plugins/Experimental/ChaosClothEditor/Content
Paths=../../../Engine/Plugins/Experimental/GeometryProcessing/Content
Paths=../../../Engine/Plugins/Experimental/GeometryCollectionPlugin/Content
Paths=../../../Engine/Plugins/Experimental/ChaosSolverPlugin/Content
Paths=../../../Engine/Plugins/Experimental/ChaosNiagara/Content
Paths=../../../Engine/Plugins/MovieScene/MovieRenderPipeline/Content

[/Script/OnlineSubsystemUtils.IpNetDriver]
NetServerMaxTickRate=64
EOF
}

2gameini() {
# Populate Game.ini, setup for the checkpoint (co-op) game mode
cat <<EOF > $HOME/server/2sandstorm/Insurgency/Saved/Config/LinuxServer/Game.ini
[Rcon]
bEnabled=True
Password=$Rpwd
ListenPort=$RPort
bAllowConsoleCommands=True

[/script/aimodule.aisenseconfig_sight]
AutoSuccessRangeFromLastSeenLocation=-1

[/Script/Engine.GameSession]
MaxPlayers=12

[/Script/Insurgency.TeamInfo]
bVotingEnabled=False

[/script/insurgency.insgamemode]
bKillFeed=True
bKillFeedSpectator=True
bKillerInfo=True
bKillerInfoRevealDistance=True
TeamKillLimit=3
bDeadSay=True
bDeadSayTeam=True
bVoiceAllowDeadChat=True
bVoiceEnemyHearsLocal=False
ObjectiveSpeedup=0.05
ObjectiveMaxSpeedupPlayers=10
bEnforceFriendlyFireReflect=False
bLoseSpawnProtectionOnMove=True
LoseSpawnProtectionOnMoveGrace=0.1
bDisableVehicles=False
bStartPlayersAsSpectators=True
DroppedWeaponLifespan=60

[/script/insurgency.insmultiplayermode]
GameStartingIntermissionTime=15
WinTime=5
PostRoundTime=10
PostGameTime=10
bAllowFriendlyFire=True
FriendlyFireModifier=0.5
bMapVoting=True
bUseMapCycle=False
bVoiceIntermissionAllowAll=True
IdleLimit=3600
IdleCheckFrequency=30
RoundLimit=1
WinLimit=1
PreRoundTime=5
InitialSupply=250
MaximumSupply=250
MinimumPlayers=1
bSupplyGainEnabled=False

[/script/insurgency.inscoopmode]
bUseVehicleInsertion=True
bRestrictClassByPlayerLevel=False
MaxPlayersToScaleEnemyCount=12
MinimumEnemies=8
MaximumEnemies=40
AIDifficulty=0.7
bBots=False

[/script/insurgency.inscheckpointgamemode]
DefendTimer=90
DefendTimerFinal=180
RetreatTimer=1
RespawnDPR=0.1
RespawnDelay=1
PostCaptureRushTimer=120
CounterAttackRespawnDPR=0.1
CounterAttackRespawnDelay=1
bCounterAttackReinforce=True
RoundTime=1800
EOF
}

1installer() {
# Update the system before installing anything.
# Check if pacman or apt are available & install 
# the proper 32-bit GCC file for SteamCMD to run.
if command -v pacman >/dev/null 2>&1; then
    PKG_MANAGER="pacman -S"
    LIB32_GCC="lib32-gcc-libs"
    sudo pacman -Syu
elif command -v apt >/dev/null 2>&1; then
    PKG_MANAGER="apt install"
    LIB32_GCC="lib32gcc-s1"
    sudo apt update && sudo apt upgrade
else
    echo "Unsupported distro. Aborting."
    exit 1
fi

sudo $PKG_MANAGER "$LIB32_GCC" ufw curl bpytop iftop htop nano

# Enable the firewall, allow relevant ports then reload the firewall
sudo ufw enable
sudo ufw allow $GPort/udp
sudo ufw allow $QPort/udp
sudo ufw allow $RPort/tcp
sudo ufw reload

cd $HOME
mkdir server
cd $HOME/server

# Download & decompress SteamCMD
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# Append Sandstorm management aliases to ~/.bashrc
cat <<EOF >> $HOME/.bashrc

# Sandstorm Aliases
# Use these short commands to manage the game server from a terminal

# Stop the game server
alias 1stop="sudo systemctl stop 1insserver.service"

# Start the game server
alias 1start="sudo systemctl start 1insserver.service"

# Restart the game server
alias 1restart="1stop && 1start"

# Edit the startup command using the nano text editor
alias 1alter="sudo nano /etc/systemd/system/1insserver.service"

# Use after changing the unit file with the alter command
alias reload="sudo systemctl daemon-reload"

# Update the game server to the latest version
alias 1update="bash $HOME/server/1update.sh"

# View the config file & startup command
alias 1cat="cat /etc/systemd/system/1insserver.service"

# Watch the game's logfile in real time
alias 1tail="tail -f $HOME/server/1sandstorm/Insurgency/Saved/Logs/Insurgency.log"
EOF

# Create 1update.sh so the 1update alias works
touch 1update.sh
chmod +x 1update.sh
cat <<EOF > $HOME/server/1update.sh
#!/usr/bin/env bash

sudo systemctl stop 1insserver.service
$HOME/server/steamcmd.sh +force_install_dir $HOME/server/1sandstorm +login anonymous +app_update 581330 validate +quit
sudo systemctl daemon-reload
sudo systemctl start 1insserver.service
EOF

# Our startup command begins with ExecStart= under [Service]
touch $HOME/1insserver.service
cat <<EOF > $HOME/1insserver.service
[Unit]
Description=Sandstorm Server
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=$USER
Group=$USER
ExecStart=$HOME/server/1sandstorm/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security -ModDownloadTravelTo=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security -Port=$GPort -QueryPort=$QPort -GSLTToken=$gslt -GameStats -Mods -GameStatsToken=$GameToken -AdminList=Admins -MapCycle=MapCycle -NoEAC -hostname=$Host

[Install]
WantedBy=multi-user.target
EOF

sudo mv $HOME/1insserver.service /etc/systemd/system

# Install server files into the sandstorm folder by running SteamCMD
bash $HOME/server/steamcmd.sh +force_install_dir $HOME/server/1sandstorm +login anonymous +app_update 581330 validate +quit

# Run the game server process for 15s to create needed 
# files and folders, then stop the game server process
sudo systemctl daemon-reload
sudo systemctl enable 1insserver.service
sudo systemctl start 1insserver.service
echo -e "\nService creation started..."
echo -e "\nCreating and populating files (30s)...\n"
sleep 30
sudo systemctl stop 1insserver.service

# Create more needed files and folders that the process failed to make
mkdir -p $HOME/server/1sandstorm/Insurgency/Config/Server
cd $HOME/server/1sandstorm/Insurgency/Config/Server
touch Admins.txt Bans.json MapCycle.txt Mods.txt Motd.txt

mkdir -p $HOME/server/1sandstorm/Insurgency/Saved/Config/LinuxServer/
cd $HOME/server/1sandstorm/Insurgency/Saved/Config/LinuxServer/
touch Engine.ini Game.ini GameUserSettings.ini

1engineini
1mapcycle
1gameini

cd $HOME

echo -e "\nRemember to execute 'source .bashrc' so the command aliases work."
echo "Install finished, but some files must be populated manually."
echo -e "See the bottom of the script for more info.\n"

exit 0
}

2installer() {
# Enable the firewall, allow relevant ports then reload the firewall
sudo ufw enable
sudo ufw allow $GPort/udp
sudo ufw allow $QPort/udp
sudo ufw allow $RPort/tcp
sudo ufw reload

# Append 2sandstorm management aliases to ~/.bashrc
cat <<EOF >> $HOME/.bashrc

# 2sandstorm Aliases
alias 2stop="sudo systemctl stop 2insserver.service"
alias 2start="sudo systemctl start 2insserver.service"
alias 2restart="2stop && 2start"
alias 2alter="sudo nano /etc/systemd/system/2insserver.service"
alias 2update="bash $HOME/server/2update.sh"
alias 2cat="cat /etc/systemd/system/2insserver.service"
alias 2tail="tail -f $HOME/server/2sandstorm/Insurgency/Saved/Logs/Insurgency.log"
EOF

# Create 2update.sh so the 2update command works
touch 2update.sh
chmod +x 2update.sh
cat <<EOF > $HOME/server/2update.sh
#!/usr/bin/env bash

sudo systemctl stop 2insserver.service
$HOME/server/steamcmd.sh +force_install_dir $HOME/server/2sandstorm +login anonymous +app_update 581330 validate +quit
sudo systemctl daemon-reload
sudo systemctl start 2insserver.service
EOF

# Our startup command begins with ExecStart= under [Service]
touch $HOME/2insserver.service
cat <<EOF > $HOME/2insserver.service
[Unit]
Description=2sandstorm Server
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=$USER
Group=$USER
ExecStart=$HOME/server/2sandstorm/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security -ModDownloadTravelTo=Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security -Port=$GPort -QueryPort=$QPort -GSLTToken=$gslt -GameStats -Mods -GameStatsToken=$GameToken -AdminList=Admins -MapCycle=MapCycle -NoEAC -hostname=$Host

[Install]
WantedBy=multi-user.target
EOF

sudo mv $HOME/2insserver.service /etc/systemd/system

# Install server files into the 2sandstorm folder by running SteamCMD
bash $HOME/server/steamcmd.sh +force_install_dir $HOME/server/2sandstorm +login anonymous +app_update 581330 validate +quit

# Run the game server process for 15s to create needed 
# files and folders, then stop the game server process
sudo systemctl daemon-reload
sudo systemctl enable 2insserver.service
sudo systemctl start 2insserver.service
echo -e "\nService creation started..."
echo -e "\nCreating and populating files (30s)...\n"
sleep 30
sudo systemctl stop 2insserver.service

# Create more needed files and folders that the process failed to make
mkdir -p $HOME/server/2sandstorm/Insurgency/Config/Server
cd $HOME/server/2sandstorm/Insurgency/Config/Server
touch Admins.txt Bans.json MapCycle.txt Mods.txt Motd.txt

mkdir -p $HOME/server/2sandstorm/Insurgency/Saved/Config/LinuxServer/
cd $HOME/server/2sandstorm/Insurgency/Saved/Config/LinuxServer/
touch Engine.ini Game.ini GameUserSettings.ini

2engineini
2mapcycle
2gameini

cd $HOME

echo -e "\nRemember to execute 'source .bashrc' so the command aliases work."
echo "Install finished, but some files must be populated manually."
echo -e "See the bottom of the script for more info.\n"

exit 0
}

menu() {
  RED="\e[31m"
  GREEN="\e[32m"
  YELLOW="\e[33m"
  ENDCOLOR="\e[0m"
  tput clear
  echo -e "\n${YELLOW}*** Main Menu ***${ENDCOLOR}"
  echo -e "${GREEN}1. Install a server${ENDCOLOR}"
  echo -e "${RED}2. Remove 1st server${ENDCOLOR}"
  echo -e "${RED}3. Remove 2nd server${ENDCOLOR}"
  echo "q. Quit"
  echo ""
  read -p "Enter 1, 2, 3 or Q: " choice
}

while true; do
  menu

  case "$choice" in
    1)
      echo "Preparing to install the game server..." && sleep 2
      echo "Get your Steam GSLT from https://steamcommunity.com/dev/managegameservers"
      read -p "Paste your Steam GSLT: " gslt
      echo "Get your Game Token from https://gamestats.sandstorm.game/auth/login?ReturnUrl=%2F"
      read -p "Paste your Sandstorm Game Token: " GameToken
      read -p "State your Game Port: " GPort
      read -p "Now your Query Port: " QPort
      read -p "And your RCON Port: " RPort
      read -p "The RCON password: " Rpwd
      read -p "And lastly, the server's hostname: " Host

      # Check if the sandstorm folder exists.
      # If so, then run the 2installer function.
      # Else run the 1installer function.
      SERVER_DIR="$HOME/server/1sandstorm"
      if [ -d "$SERVER_DIR" ]; then
        2installer
      else
        1installer
      fi
      ;;
    2)
      server_folder="$HOME/server/1sandstorm"
      if [ -d "$server_folder" ]; then
        sudo systemctl stop 1insserver.service
        sudo systemctl disable 1insserver.service
        echo "Service stopped and disabled."
        echo "Found folder at: $server_folder"
        rm -rf "$server_folder"
        echo "Folder $server_folder deleted."
        sleep 5
      else
        echo "No folder found at: $server_folder"
        sleep 3
      fi
      ;;
    3)
      server_2_dir="$HOME/server/2sandstorm"
      if [ -d "$server_2_dir" ]; then
        sudo systemctl stop 2insserver.service
        sudo systemctl disable 2insserver.service
        echo "Service stopped and disabled."
        echo "Found folder at: $server_2_dir"
        rm -rf "$server_2_dir"
        echo "Folder $server_2_dir deleted."
        sleep 5
      else
        echo "No folder found at: $server_2_dir"
        sleep 3
      fi
      ;;
    q|Q)
      echo -e "\n~~~~ Goodbye ~~~~\n"
      break # Exit the while loop
      ;;
    *)
      echo "Invalid choice. Please try again."
      sleep 3
      ;;
  esac
done

exit 0

# See the official Server Admin Guide for important setup info:
# https://mod.io/g/insurgencysandstorm/r/server-admin-guide

# The game servers are installed in $HOME/server.
# 1sandstorm for the 1st server & 2sandstorm for the 2nd server.
# Admins.txt is where you add server admins.
# For example find it at $HOME/server/1sandstorm/Insurgency/Config/Server
# Admins.txt needs one SteamID64 per line:
# 76523121973431725
# 76566798271142210
# Get SteamID64s from https://steamid.io/

# Make changes to Game.ini as you see fit. It's a list of Key=Value pairs.
# The provided Game.ini runs co-op, but you may want to change some values.
# See this comprehensive Game.ini example file for reference:
# https://github.com/zDestinate/INS_Sandstorm/blob/master/Insurgency/Saved/Config/WindowsServer/Game.ini
# Ensure that you stop the server before saving changes to Game.ini!
# If you don't stop the server before saving, your changes will be lost.

# Motd.txt allows you to set a "message of the day" 
# that will display to all players on each map change.
# The MOTD writes to the upper right quadrant of the screen.

# Mods.txt is for storing the Resource IDs of mods from mod.io.
# See https://mod.io/g/insurgencysandstorm?_sort=downloads for a mod list.
# Mod and custom map entries take the form:
# 123456; Mod/map name
# Where 123456 is the Resource ID and anything 
# after the semicolon is a comment, and is ignored.
# Some mods require the use of a mutator, which goes in the startup 
# command (the line that begins with ExecStart) like so: 
# -Mutators=Mutator1,Mutator2,Mutator3

# You now have a functioning 12-player co-op server (or two). Congrats!
# Use the start & 2start commands to fire up the servers. Happy hunting.

# If you are tired of typing the sudo password, see below.
# This is considered a security risk, but it's so convenient.
# Type the command "sudo visudo" and hit enter.
# Scroll to the bottom of the file and input the following:
# username ALL=(ALL) NOPASSWD: ALL
# Of course change "username" to your username. Save and exit.
# Now you no longer have to type your sudo password to do things.
