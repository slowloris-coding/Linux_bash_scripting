#!/bin/bash

#---------------------------------------------------------------------------------------
#==========================
# FORMATING & EFFECTS
#==========================

NEWLINE='\n'        #Newline mit printf

N_ATTRIB='\033[0m'   #No Attribute, entfernen aller Formatierungs Atributte

BOLD='\033[1m'      #Fett
DIM='\033[2m'
UNDERLINED='\033[4m'
BLINK='\033[5m'
REVERSE_COLOR='\033[7m'
HIDDEN='\033[8m'

N_BOLD='\033[21m'    #Not Bold, Ende des Fetten Bereichs
N_DIM='\033[22m'
N_UNDERLINED='\033[24m'
N_BLINK='\033[25m'
N_REVERSE_COLOR='\033[27m'
N_HIDDEN='\033[28m'

#----------------------------------------------------------------------------------------
#====================
# VORDERGRUND FARBEN
#====================

F_DEFAULT='\033[39m'
F_Black='\033[30m'
F_RED='\033[31m'      #Rot Vordergrund
F_GREEN='\033[32m'    #Gruen Vordergrund
F_YELLOW='\033[33m'   #Gelb Vordergrund
F_BLUE='\033[34m'
F_MAGENTA='\033[35m'
F_CYAN='\033[36m'
F_WHITE='\033[97m'

#HELLE FARBEN
F_L_GREY='\033[37m'
F_L_RED='\033[91m'
F_L_GREEN='\033[92m'
F_L_YELLOW='\033[93m'
F_L_BLUE='\033[94m'
F_L_MAGENTA='\033[95m'
F_L_CYAN='\033[96m'

#Dunkle Farben
F_D_GREY='\033[90m'

#----------------------------------------------------------------------------------------
#====================
# HINTERGRUND FARBEN
#====================

B_DEFAULT='\033[49m'
B_Black='\033[40m'
B_RED='\033[41m'      
B_GREEN='\033[42m'    
B_YELLOW='\033[43m'   
B_BLUE='\033[44m'
B_MAGENTA='\033[45m'
B_CYAN='\033[46m'
B_WHITE='\033[107m'

#HELLE FARBEN
B_L_GREY='\033[47m'
B_L_RED='\033[101m'
B_L_GREEN='\033[102m'
B_L_YELLOW='\033[103m'
B_L_BLUE='\033[104m'
B_L_MAGENTA='\033[105m'
B_L_CYAN='\033[106m'

#Dunkle Farben
B_D_GREY='\033[100m'
