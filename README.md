# My dotfiles

![image](/assets/screen.png)

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
- nwg-look
- ags-hyprpanel-git
- cava
- xdg-desktop-portal
- xdg-desktop-portal-gtk
- udev (laptop specific)

# Installation

## Clone in ~/
```zsh
cd ~ && git clone git@github.com:Kuuro-neko/dotfiles.git && cd dotfiles/
```
## Use stow

### Script
Installs all the stow packages : common and (desktop or laptop)
```zsh
./stow_all.sh
```

### Common between desktop and laptop
```zsh
stow gtk
stow kitty
stow nwg-look
stow themes
stow wallpaper
stow zsh
stow cava
stow applications
```
### Desktop specific
```zsh
stow hypr
stow Thunar
stow hyprpanel
```
### Laptop specific
```zsh
stow hypr-laptop
stow Thunar-laptop
stow hyprpanel-laptop
```
## Set the [weather api](https://www.weatherapi.com/my/) key in `~/.config/hyprpanel/config.json` :
```json
{
    // ~/.config/hyprpanel/config.json
    "menus.clock.weather.key": "/home/kuuro/.config/weather.json"
}
{
    // ~/.config/weather.json
    "weather_api_key": "api_key"
}
```
# Random fixes
For future reference
## Audio crackling on games
```zsh
pw-metadata -n settings 0 clock.force-rate 48000 && pw-metadata -n settings 0 clock.force-quantum 500
```
