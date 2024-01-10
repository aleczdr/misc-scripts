#!/bin/bash
#20240109
VER=1.5
#RESTORE CLASSIC KEYBOARD FUNCTIONALITY
#KeyBrDwn -> Dictation (F5)
#KeyBrUp -> DoNotDisturb (F6)
#Eject -> Spotlight (F4)
F4M="1"
echo "* * * * * * * * * * * * * * * * *"
echo "* Restore Classic Function Keys *"
echo "* * * * * * * * * * * * * * * * *"
if [ "${F4M}" == "0" ]; then
	echo " Eject -> Spotlight (F4)"
elif [ "${F4M}" == "1" ]; then
	echo " Launchpad -> Spotlight (F4)"
fi
echo " KeyBrDwn -> Dictation (F5)"
echo " KeyBrUp -> Do Not Disturb (F6)"
sleep 1
echo -e "Finding Directories...\c"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
fn="com.local.KeyRemapping.plist"
outfile="${DIR}/${fn}"
echo "done."
echo -e "Generating File\c"
touch "${outfile}"
echo -e ".\c"
echo '<?xml version="1.0" encoding="UTF-8"?>' > "${outfile}"
echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">' >> "${outfile}"
echo '<plist version="1.0">' >> "${outfile}"
echo '<dict>' >> "${outfile}"
echo '    <key>Label</key>' >> "${outfile}"
echo '    <string>com.local.KeyRemapping</string>' >> "${outfile}"
echo '    <key>ProgramArguments</key>' >> "${outfile}"
echo '    <array>' >> "${outfile}"
echo '        <string>/usr/bin/hidutil</string>' >> "${outfile}"
echo -e ".\c"
echo '        <string>property</string>' >> "${outfile}"
echo '        <string>--set</string>' >> "${outfile}"
echo '        <string>{"UserKeyMapping":[' >> "${outfile}"
echo '            {' >> "${outfile}"
#Keyboard Brightness Down
echo '              "HIDKeyboardModifierMappingSrc": 0xC000000CF,' >> "${outfile}"
echo '              "HIDKeyboardModifierMappingDst": 0xFF00000009' >> "${outfile}"
echo '            },' >> "${outfile}"
echo '            {' >> "${outfile}"
#Keyboard Brightness Up
echo '              "HIDKeyboardModifierMappingSrc": 0x10000009B,' >> "${outfile}"
echo '              "HIDKeyboardModifierMappingDst": 0xFF00000008' >> "${outfile}"
echo '            },' >> "${outfile}"
echo '            {' >> "${outfile}"
echo -e ".\c"
#Eject, Launchpad, or Dashboard
echo '              "HIDKeyboardModifierMappingSrc": 0xC00000221,' >> "${outfile}"
if [ "${F4M}" == "0" ]; then #Make F4 Eject
	echo '              "HIDKeyboardModifierMappingDst": 0x0C000000B8' >> "${outfile}"
elif [ "${F4M}" == "1" ]; then #Make F4 Launchpad
	echo '              "HIDKeyboardModifierMappingDst": 0x0C000002A2' >> "${outfile}"
elif [ "${F4M}" == "2" ]; then #Make F4 Dashboard
	echo '              "HIDKeyboardModifierMappingDst": 0xFF0100000002' >> "${outfile}"
fi
echo '            }' >> "${outfile}"
echo '        ]}</string>' >> "${outfile}"
echo '    </array>' >> "${outfile}"
echo '    <key>RunAtLoad</key>' >> "${outfile}"
echo '    <true/>' >> "${outfile}"
echo '</dict>' >> "${outfile}"
echo '</plist>' >> "${outfile}"
echo "done."
echo -e "Checking if LaunchAgents Directory exists...\c"
if [ -f ~/Library/LaunchAgents/ ]; then 
	echo "yes."
else
	echo "no."
 	mkdir ~/Library/LaunchAgents
	echo "Created LaunchAgents Directory."
fi
echo -e "Moving File\c"
echo -e ".\c"
chmod 644 "${outfile}"
echo -e ".\c"
cp -p "${outfile}" ~/"Library/LaunchAgents/${fn}"
echo -e ".\c"
rm "${outfile}"
echo "done."
echo -e "Setting Permissions.\c"
echo -e ".\c"
chmod 644 ~/"Library/LaunchAgents/${fn}"
echo ".done."
echo -e "Loading Keybind LaunchAgent.\c"
echo -e ".\c"
launchctl load ~/"Library/LaunchAgents/${fn}"
echo ".done."
echo "Finished."