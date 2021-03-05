#!/bin/bash

function renew_default_html()
{
    #löschen des default index File
    rm $1

    #Rausschreiben linie für linie in das index File
    for H_TAG in "${2}"; do echo $H_TAG >> $1
    done
}