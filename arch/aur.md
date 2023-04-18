# AUR
The package on AUR cannot download by pacman, before download, first build frome
AUR.
```sh
git clone <aur.org/package_name.git>
# check the sourse
less PKGBUILD
makepkg -Acs
# -A ignores the target arch architecture
# -c cleans up the directory after makepkd done
# -s install the needed dependencies.

# Then install the package via pacman
sudo pacman -U x.pkg.tar.xz
```
