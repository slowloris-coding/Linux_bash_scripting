#!/bin/bash

#Der Pfad für das Default HTML-File
INDEX_FILE="/var/www/html/index.html"

#HAbholen der Benutzer id
uid=$(id -u)

#Wielange das Skript vor dem neustart warten soll
RESTART_SLEEP_TIME="30s"

#Definieren der Tools
REQ_TOOLS=("openssh-server" "apache2" "tree" "net-tools" "bind9")

#Definieren der services die neugestartet werden sollen
RES_SERVICES=("ssh" "apache2")

#Definieren des HTML-Contents
HTML_TAGS=()

HTML_TAGS+=("<!DOCTYPE html>")
HTML_TAGS+=("<html lang=\"de-CH\">")
HTML_TAGS+=("   <head>")
HTML_TAGS+=("       <title>Default Page</title>")
HTML_TAGS+=("       <meta charset=\"utf-8\">")
HTML_TAGS+=("   </head>")
HTML_TAGS+=("   <body>")
HTML_TAGS+=("       <header>")
HTML_TAGS+=("           <h1>Default Page</h1>")
HTML_TAGS+=("       </header>")
HTML_TAGS+=("       <main>")
HTML_TAGS+=("           <div>")
D="$(date -utc)"
U="$(id -u -n)"
HTML_TAGS+=("              Successfull installation of apache Webserver <br> When: ${D} <br> Who: ${U} <br> NEXT-TASK: Write your own Webpage and store it in /var/www/html/ as index.html")
HTML_TAGS+=("           </div>")
HTML_TAGS+=("       </main>")
HTML_TAGS+=("       <footer>")
HTML_TAGS+=("           <br> <br> Default Website created by Webserver_setup.sh Skript")
HTML_TAGS+=("       </footer>")
HTML_TAGS+=("   </body>")
HTML_TAGS+=("</html>")