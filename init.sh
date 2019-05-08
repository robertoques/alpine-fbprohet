#/bin/bash

START_TIME=`date +%s`
echo $START_TIME
echo "[!] Iniciando fbprohet ..."
echo -e '{"message": "[+] FBPROPHET INICIADO","time":"'$(date -R)'","hostname":"'$(cat /etc/hostname)'"}\0' | nc -w 1 -u gray.zeke.cl 12205
time sleep 1
END_TIME=`date +%s`
echo $END_TIME
echo "[!] fbrophet terminado."
echo -e '{"message": "[+] FBPROPHET TERMINADO","time":"'$(date -R)'","hostname":"'$(cat /etc/hostname)'", "total_sec":"'$((END_TIME-START_TIME))'"}\0' | nc -w 1 -u gray.zeke.cl 12205
