#!/bin/bash

FUNCTIONS_PATH="/home/loris/Linux_coding_prj/Functions/"
VARIABLES_PATH="/home/loris/Linux_coding_prj/Variables/"

source ${FUNCTIONS_PATH}apt_functions.sh
source ${FUNCTIONS_PATH}File_functions.sh
source ${FUNCTIONS_PATH}Skript_random_functions.sh
source ${FUNCTIONS_PATH}System_Handeling_functions.sh
source ${VARIABLES_PATH}Output_Formating.sh
source ${VARIABLES_PATH}Webserver_Var.sh

#prüfen ob Root
check_root $uid

#aktualisieren des Systems
update_system_apt

#installieren der tools für den Webserver
install_apt ${REQ_TOOLS[@]}

#Das System aktualisieren
update_system_apt

#Das neue Default HTML setzen
renew_default_html $INDEX_FILE ${HTML_TAGS[@]}

#Die Dienste neustarten und aktualisieren
restart_services ${RES_SERVICES[@]}

#Das Gerät neustarten + Message
script_end_opt_Restart $RESTART_SLEEP_TIME "restart"