#!/bin/bash

## apt install fcitx5  fcitx5-chinese-addons fcitx5-diagnose fcitx5-rime
# just verify on ubuntu24.04
rime_config_install(){

    mkdir -p ~/.local/share/fcitx5/rime

    cp -rf ./rime/* ~/.local/share/fcitx5/rime/
}

fcitx5_config_install(){
    if [[ -d ~/.config/fcitx5/conf ]];then
        cp -rf ./fcitx5/* ~/.config/fcitx5/conf
    else
        echo "no found ~/.config/fcitx5/conf,please check fcitx5 and fcitx5-rime is installed"
    fi

}
rime_config_install
fcitx5_config_install