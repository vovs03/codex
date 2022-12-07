#!/bin/bash
# APP_NAME__OLD: clear-services.sh
# APP_NAME__NEW: ramfix.sh
##### $ sudo chmod +x ver.sh

#app_ver="0.0.1"
#app_name="Test_App_from_bash"

#clear
#echo 'App version:  $app_ver App: $app_name'

adobe_process=(
    com.adobe.GC.AGM
    com.adobe.accmac.36104
    com.adobe.AdobeCreativeCloud
    com.adobe.CCXProcess.36496
    com.adobe.CCLibrary.34252
    com.adobe.ccxprocess
)

# UID
# `$ id -u <user>`
UID="501"

### start

clear
echo "start"
echo ""

python ./ramfix_env.py
sleep 2

launchctl list | grep adobe

sleep 2

for i in "${adobe_process[@]}";
    #do echo "${adobe_process[i]}";
    do  echo "Remove ${i}";
        echo ""
        launchctl stop "${i}";
        # Disable process
        launchctl disable "${i}";
        launchctl remove "${i}";
done

sleep 2
echo ""
echo "RAM was cleaned"
echo ""
launchctl list | grep adobe

#echo "${adobe_process[@]}"