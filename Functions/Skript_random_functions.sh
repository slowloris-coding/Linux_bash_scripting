#!/bin/bash

function check_root()
{
    source /home/loris/Linux_coding_prj/Variables/Output_Formating.sh
    if [ $1 -ne 0 ]; then 
        printf "${F_RED}${BOLD}Benutzer hat keine Root-Privilegien!!${N_BOLD}${F_YELLOW}, Root Privilegien werden benötigt.${N_ATTRIB}${NEWLINE}"
        exit 1
    fi
}

function script_end_opt_Restart()
{
    source /home/loris/Linux_coding_prj/Variables/Output_Formating.sh
    printf $NEWLINE
    printf $NEWLINE
    printf "=============================================================${NEWLINE}"
    printf "${F_GREEN}${BOLD}Das Skript ist nun durchgelaufen${N_BOLD}${F_YELLOW}, das Gerät wird neugestartet${N_ATTRIB}${NEWLINE}"
    printf "=============================================================$NEWLINE"
    printf $NEWLINE

    if [ "$2" = "restart"]; then
    sleep "$1"
    shutdown -r -f
    fi
}