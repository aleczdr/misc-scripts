#!/bin/bash
VERSION="1.15"
OGDATE="01/04/2022"
BUILDDATE="01/08/2022"
echo -ne "\n"
if [ $1 ]; then
	VOLNAME="$1"
else
	#VOLNAME="MEI_UDF"
	read -p "Name of Volume to eject: " VOLNAME
fi
echo -ne "\n"
echo "  ***************"
echo "  *  Eject Me?  *"
echo "  ***************"
echo -ne "\n"
#echo -e "Make sure all programs using files on the disc $VOLNAME are closed, \nand all terminal windows have cd'd out of all directories on this disc."
echo -e "Make sure all programs using files on ${VOLNAME} are closed, \nand all terminal windows have cd'd out of all directories on ${VOLNAME}."
sleep 2
read -p "Are all files closed? (Y/n) " choice
case $choice in
    [1YyEe]*)
	if [[ "$PWD" = */${VOLNAME}/* ]]; then
	    cd /
	fi
	diskutil eject "$VOLNAME"
	;;
    [0NnCcBbQqWwZzXx]*) echo "Eject Canceled" ;;
    #*) echo -e "${RED}Error 4...${STD}"
esac
exit