#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
me=`basename "$0"`
#C:8/18/2021 M:2/13/2021
#aleczdr
VER="1.14"
VOLUME="hpscans"
NETPATH="r:pw@rpisecurity.local/$VOLUME"
#WEBPATH="http://readyshare.routerlogin.net/shares/$VOLUME/"
VOLPATH="/Volumes/$VOLUME"
#auto
# line 11 is the setting that disables or enables the mount-at-launch feature. it bypasses the menu. values are #dumb, #notdumb, #auto, and #web
#variables don't work with osascripts
#README
#This script is for mounting the scan volume on the flash drive plugged into
#the router. If the script does not show a menu when run, please chmod +x the
#file and see if it works. If it only shows "Drive Mounted" then please run
#the script with the "menu" argument. 
#This script relies on finder running
if pgrep -x Finder; then
    findervar="running"
fi

function mountvol
{
	if [ "$findervar" == "running" ]; then
		open "smb://${NETPATH}"
	else
		mkdir $VOLPATH
		mount -t smbfs $NETPATH $VOLPATH
	fi
	echo "Drive Mounted"
}
function unmountvol
{	
	local retryvar=10
	local count=0
	while true; do
		diskutil unmountDisk $VOLPATH 
		local exitstat=$?
		if [ $exitstat == 0 ]; then
			echo "Drive Ejected"
			break
		fi
		if [ $count -gt 10 ]; then
			echo "Eject Failed"
			break
		fi
		((count++));
		sleep 1
		
	done
}
function web
{
    open $WEBPATH
}
function toggledumb
{
        if [ "$(sed -n '11p' $DIR/$me)" != "#dumb" ]; then
            sed -e '11s/.*/#dumb/' -i '' $DIR/$me
	    echo "Dumb mode on"
        echo "To disable, run the script with the \"menu\" argument"
        else
            sed -e '11s/.*/#notdumb/' -i '' $DIR/$me
	    echo "Dumb mode off"
        fi
}
function toggleauto
{
    if [ "$(sed -n '11p' $DIR/$me)" != "#auto" ]; then
        sed -e '11s/.*/#auto/' -i '' $DIR/$me
    echo "Automatic mode on"
    echo "To disable, run the script with the \"menu\" argument"
    else
        sed -e '11s/.*/#notdumb/' -i '' $DIR/$me
    echo "Automatic mode off"
    fi
}
function main
{
	echo "* * * * * * * * * * * * * * * * * *"
	echo "*        HP Scans Mounter         *"
	echo "* smb://rpisecurity.local/hpscans *"
	echo "* * * * * * * * * * * * * * * * * *"
	#echo "*    (Router Flashdrive)   *"
	#echo "*  *  *  *  *  *  *  *  *  *"
	#echo "*  * * * * * * * * * * * * *"
	#echo "****************************"
	echo "1) Mount"
    echo "2) Eject"
    #echo "3) Web"
    echo "4) Toggle Dumb Mode"
    echo "5) Toggle Automatic Mode"
    echo "q) Quit"
	read -p "Choice: " choice
	case $choice in
		1) mountvol ;;
        	2) unmountvol ;;
		4) toggledumb ;;
        	3) web;;
         5) toggleauto ;;
		#*) echo -e "${RED}Error 4...${STD}"
	esac
}
##Start Script##
if [ "$1" = 'mount' ]; then mountvol
elif [ "$1" = 'unmount' ]; then unmountvol
elif [ "$1" = 'eject' ]; then unmountvol
elif [ "$1" = 'menu' ]; then main
#elif [ "$1" = 'web' ]; then web
elif [ "$(sed -n '11p' $DIR/$me)" == "#dumb" ]; then mountvol
elif [ "$(sed -n '11p' $DIR/$me)" == "#web" ]; then web
elif [ "$(sed -n '11p' $DIR/$me)" == "#auto" ]; then
    NAME=$VOLUME
    PART=`diskutil list|grep $NAME|awk '{print $6}'`

    if [ -z `ls -1 /Volumes/ | grep $NAME` ] ; then
        # check that PART appears to be a disk partition
        #if [ `file $VOLPATH | awk '{print $2}'` = "block" ] ; then
         mountvol
        #else
        #   echo /dev/$PART does not appear to be a disk partition - exiting
      #exit 1
       # fi
    else
        unmountvol
    fi
else
    main
fi
exit
EOF

