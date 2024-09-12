#!/bin/bash

base_soft_install(){
    sudo apt install -y git
    sudo apt install -y tmux 
}

plugin_install(){
    if [[ -d ~/.tmux/plugins/tpm ]];then
        echo "found tmux plugin dir"
    else
        mkdir -p ~/.tmux/plugins/tpm
    fi
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    cp -rf ./.tmux.conf ~/
}

base_soft_install
plugin_install