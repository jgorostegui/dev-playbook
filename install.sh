#!/bin/bash

###################
# Install ansible #
if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common git python3-dev python3 python3-pip -y
    sudo -H pip3 install ansible
else
    echo "Ansible already installed"
fi

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook ansible-desktop.yml to suit your needs, then run ansible with:"
echo "  ansible-galaxy install -r requirements.yml"
echo "  ansible-playbook ansible-desktop.yml --ask-become-pass"
echo ""
