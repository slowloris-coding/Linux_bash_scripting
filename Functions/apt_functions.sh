#!/bin/bash

function update_system_apt()
{
    apt update
    apt upgrade -y
}

function install_apt()
{
    for TOOL in "${1}"; do apt install $TOOL
    done
}