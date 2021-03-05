#!/bin/bash

function restart_services()
{
    for SERVICE in "${1}"; do service $SERVICE restart
    done
}