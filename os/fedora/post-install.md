alacritty
    autostart, start with tmux session general

kmonad
    clone the repository
    `stack build`
    `sudo cp /path/to/complied /usr/local/bin/kmonad`
    `sudo chmod +x /usr/local/bin/kmonad`

vim
    change the default setting in vim-sandwiches

install github ps1 script
    at https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

install zsh-z script

install pinyin
    from [here](https://insidelinuxdev.net/article/a0cr1x.html)
    `sudo dnf install fcitx5 kcm-fcitx5 fcitx5-chinese-addons fcitx5-table-extra 
    fcitx5-zhuyin fcitx5-configtool`
    `sudo alternatives --config xinputrc`, choose fcitx5
    `ln -s /usr/share/applications/org.fcitx.Fcitx5.desktop 
    ~/.config/autostart/`
        `mkdir ~/.config/environment.d/ && touch 
        ~/.config/environment.d/00fcitx5.conf`
        add those line:
            INPUT_METHOD=fcitx5
            GTK_IM_MODULE=fcitx5
            QT_IM_MODULE=fcitx5
            XMODIFIERS=@im=fcitx5

cli tools
    tldr
    brightnessctl

# not tweak from cli
background image
fingerprint
macos like theme
install obsidian
    install gnome-software
    install obsidian from gnome-software
touchpad and mouse sensitity
Key repeat rate
    delay 259
    repeat rate 80.25


