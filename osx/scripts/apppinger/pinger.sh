
#!/usr/bin/env bash
# ==/bin/bash
#
# AUTHOR="Vladimir Pavlychev @vovs03 vladimir.keyjoo@gmail.com"
# Date: 2021-09-02
# Time: 14:30
# file pinger.sh
# Path: ~/code/github/codex/osx/scripts/apppinger

## ===== Description ====
#
# A script wich can ping url of website N times. Need set two args in stdin.
# Example: ./apppinger.sh url N
# url="https://osarts.ru"
# N=10

#URL="osarts.ru"
MAX=10
let COUNT=1
let CNT=3

:<<comment
while (( COUNT < MAX))
do
    ping ${URL} -c 7
    #let COUNT++
done
comment

#ping $URL -c ${CNT}
echo "${URL} pinged ${CNT} TIMES"
echo "Mission complete."

echo "${wow}"

