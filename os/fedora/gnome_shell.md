# export extension setting
`dconf dump /org/gnome/shell/extensions/ > extension-settings.dconf`

# load into another machine
`dconf load /org/gnome/shell/extensions/ < extension-settings.dconf`

