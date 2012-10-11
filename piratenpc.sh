#!/bin/bash
echo "Dies ist das shell-script der AG PiratenPC zum vereinfachen regelmäßig genutzter Einstellungen."
echo ""
echo "__________.__               __               ___________________  "
echo "\______   \__|___________ _/  |_  ____   ____\______   \_   ___ \ "
echo " |     ___/  \_  __ \__  \    __\/ __ \ /    \|     ___/    \  \/ "
echo " |    |   |  ||  | \// __ \|  | \  ___/|   |  \    |   \     \____"
echo " |____|   |__||__|  (____  /__|  \___  >___|  /____|    \______  /"
echo "                         \/          \/     \/                 \/ "
echo ""
echo "(CC-PD) 2010 by Neo Bechstein Ver. 0.6"
sleep 4
sudo wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring && sudo apt-get --quiet update && sudo apt-get --yes install app-install-data-medibuntu apport-hooks-medibuntu && sudo apt-get --yes install libdvdcss2 && sudo apt-get --yes upgrade
wget http://piratenpc.de/wp-content/uploads/pirat.png
gconftool-2 --type string --set /apps/metacity/general/button_layout "menu:minimize,maximize,close"
gconftool-2 --type str --set /desktop/gnome/background/picture_filename $HOME/Downloads/pirat.png
sudo apt-get --yes install pidgin vlc gimp wine flashplugin-nonfree gecko-mediaplayer pidgin-otr
sudo apt-get --yes upgrade
echo ""
echo ""
echo ""
echo "Vielen Dank, dass Du das dieses kleine script genutzt hast :)"
sleep 3
