# Requirements

- stow
- hyprland
- wofi
- hyprshot
- hyprlock
- hyprshade
- hyprpicker
- hyprcursor
- kitty
- thunar
- zsh
- oh-my-zsh
- zoxide
- fzf
- viu
- uwufetch
- swaync
- nwg-look
- ags-hyprpanel-git
- cava
- xdg-desktop-portal
- xdg-desktop-portal-gtk

# Installation

Clone in ~/
```zsh
cd ~ && git clone git@github.com:Kuuro-neko/dotfiles.git && cd dotfiles/
```
Use stow

Common between desktop and laptop
```zsh
stow gtk
stow kitty
stow nwg-look
stow themes
stow wallpaper
stow zsh
stow hyprpanel
stow cava
stow applications
```
Desktop specific
```zsh
stow hypr
stow Thunar
```
Laptop specific
```zsh
stow hypr-laptop
stow Thunar-laptop
```
Set the [weather api](https://www.weatherapi.com/my/) key in `~/.config/hyprpanel/config.json` :
```json
// ~/.config/weather.json
{
    "menus.clock.weather.key": "/home/kuuro/.config/weather.json"
}
```