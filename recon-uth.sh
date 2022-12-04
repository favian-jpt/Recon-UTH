#! /bin/bash

clear
echo "
______                           _   _ _____ _   _ 
| ___ \                         | | | |_   _| | | |
| |_/ /___  ___ ___  _ __ ______| | | | | | | |_| |
|    // _ \/ __/ _ \| '_ \______| | | | | | |  _  |
| |\ \  __/ (_| (_) | | | |     | |_| | | | | | | |
\_| \_\___|\___\___/|_| |_|      \___/  \_/ \_| |_/
"
echo
echo
echo -e "\033[1;31mHave You Installed the Necessary Tools ? (Y/N)
# \033[0m\c "
read wh1
if [ "$wh1" = "N" ];
	then
		echo "System Updating Please Wait..."
		apt-get update
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "Whois Installing..."
		apt-get install whois
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "Whois Installing..."
		apt-get install python3
		echo
		sleep 2
		eprintf "%*s" $COLUMNS |tr " " "="
		echo "MailFinder Installing..."
		apt-get install python3-pip
		pip3 install emailfinder
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "Dnsenum Installing..."
		apt-get install dnsenum
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "Wafw00f Installing..."
		git clone apt-get install wafw00f
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "UserFinder Installing..."
		cd /opt/
		wget https://raw.githubusercontent.com/mishakorzik/UserFinder/main/UserFinder.sh
		chmod +x UserFinder.sh
		cd /home/$USERNAME
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "Subfinder Installing..."
		apt-get install subfinder
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "ParamSpider Installing..."
		cd /opt/
		git clone https://github.com/devanshbatham/ParamSpider.git
		echo "Installing Required Packages..."
		cd ParamSpider || pip install -r requirements.txt
		cd /home/$USERNAME
		echo
		sleep 2
		printf "%*s" $COLUMNS |tr " " "="
		echo "LinkFinder Installing..."
		cd /opt/
		git clone https://github.com/GerbenJavado/LinkFinder.git
		cd LinkFinder || python3 setup.py install
		cd /home/$USERNAME
		echo
		sleep 1
		printf "%*s" $COLUMNS |tr " " "="
		echo "Gobuster Installing..."
		apt-get install gobuster
		
elif [ "$wh1" = "Y" ];
	then
		echo "Please Wait"
fi
clear
function menu {
	echo -e "\033[33m

	 ██▀███  ▓█████ ▄████▄  ▒█████   ███▄    █  █    ██ ▄▄▄█████▓ ██░ ██ 
	▓██ ▒ ██▒▓█   ▀▒██▀ ▀█ ▒██▒  ██▒ ██ ▀█   █  ██  ▓██▒▓  ██▒ ▓▒▓██░ ██▒
	▓██ ░▄█ ▒▒███  ▒▓█    ▄▒██░  ██▒▓██  ▀█ ██▒▓██  ▒██░▒ ▓██░ ▒░▒██▀▀██░
	▒██▀▀█▄  ▒▓█  ▄▒▓▓▄ ▄██▒██   ██░▓██▒  ▐▌██▒▓▓█  ░██░░ ▓██▓ ░ ░▓█ ░██ 
	░██▓ ▒██▒░▒████▒ ▓███▀ ░ ████▓▒░▒██░   ▓██░▒▒█████▓   ▒██▒ ░ ░▓█▒░██▓
	░ ▒▓ ░▒▓░░░ ▒░ ░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒   ▒ ░░    ▒ ░░▒░▒
	  ░▒ ░ ▒░ ░ ░  ░ ░  ▒    ░ ▒ ▒░ ░ ░░   ░ ▒░░░▒░ ░ ░     ░     ▒ ░▒░ ░
	  ░░   ░    ░  ░       ░ ░ ░ ▒     ░   ░ ░  ░░░ ░ ░   ░       ░  ░░ ░
	   ░        ░  ░ ░         ░ ░           ░    ░               ░  ░  ░
		       ░                                                     
		                                      
	\033[0m
	"
echo -e "\033[1;32mChoose number (CTRL+C to Exit) :

	[1]-Whois Query				        [6]-Subdomain Discovery
	[2]-E-Mail Discovery				[7]-Link Detection
	[3]-Dns Discovery				[8]-Index Discovery
	[4]-Waf Detection				[9]-Parametre Discovery
	[5]-UserFinder					[10]-Nikto Scan	

>>> \033[0m\c"
	read ch
	if [ "$ch" = "1" ];
		then
			clear
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain1
			echo -e "\033[34mStarting Whois Query\033[0m"
			sleep 2
            clear
            echo
			whois $domain1
			echo
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"

		 		
	elif [ "$ch" = "2" ];
		then	
            clear
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain2
			echo -e "\033[34mStarting E-Mail Discovery\033[0m"
			sleep 2
            clear
            echo
			emailfinder -d $domain2
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"

		
			
	elif [ "$ch" = "3" ];
		then
			clear	
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain3
			echo -e "\033[34mStarting Subdomain Discovery\033[0m"
			sleep 2
            clear
            echo
			dnsenum --enum $domain3 
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"



	elif [ "$ch" = "4" ];
		then
			clear
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain4
			echo -e "\033[34mWAF Detected\033[0m"
			sleep 2
            clear
            echo
			wafw00f $domain4 
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"


				
	elif [ "$ch" = "5" ];
		then
			clear
			echo -e "\033[34mUserFinder Running\033[0m"
			sleep 2
			cd /opt
			bash UserFinder.sh
			sleep 3
            clear
            echo
			echo -e "\033[31mScan Completed\033[0m"
			cd /home/$USERNAME

	elif [ "$ch" = "6" ];
		then
			clear
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain6
			echo -e "\033[34mRunning Subfinder\033[0m"
			sleep 2
            clear
            echo
			subfinder -d $domain6 -v -o subdomain.txt
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"

	elif [ "$ch" = "7" ];
		then
			clear
			echo -e "\033[33mEnter URL : \033[0m\c"
			read url1
			echo -e "\033[34mRunning LinkFinder\033[0m"
			sleep 2
            clear
            echo
			cd /opt/LinkFinder
			python3 linkfinder.py -i $url1 -o link.html
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"
			cd /home/$USERNAME


	elif [ "$ch" = "8" ];
		then
			clear
			echo -e "\033[33mEnter URL : \033[0m\c"
			read url2
			echo -e "\033[35mEnter Wordlist Path : \033[0m\c" 
			read wlist
			echo -e "\033[34mRunning Gobuster\033[0m"
			sleep 2
            clear
            echo
			gobuster dir -u $url2 -w $wlist 
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"

	elif [ "$ch" = "9" ];
		then
			clear
			echo -e "\033[33mEnter URL : \033[0m\c"
			read url3
			echo -e "\033[34mRunning ParamSpider\033[0m"
			cd /opt/ParamSpider
			python3 paramspider.py -d $url3 
			sleep 3
            clear
            echo
			echo -e "\033[31mScan Completed\033[0m"
			cd /home/$USERNAME	
			

	elif [ "$ch" = "10" ];
		then
			clear
			echo -e "\033[33mEnter Domain : \033[0m\c"
			read domain0
			echo -e "\033[34mNikto is Running\033[0m"
			sleep 2
            clear
            echo
			nikto -h $domain0
			sleep 3
			echo -e "\033[31mScan Completed\033[0m"

	fi
}
echo
sleep 2
menu
ff=0
while [ $ff -eq 0 ]
do
	menu
done
			
