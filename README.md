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
stow hyprpanel
stow cava
stow applications
```
### Desktop specific
```zsh
stow hypr
stow Thunar
```
### Laptop specific
```zsh
stow hypr-laptop
stow Thunar-laptop
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

## Detect HDMI-A-1 monitor plug and move workspace 9 to it

/etc/udev/rules.d/99-hdmi-workspace.rules :
`ACTION=="change", SUBSYSTEM=="drm", RUN+="/home/kuuro/.config/hypr/scripts/detect_hdmi.sh"`
```zsh
sudo udevadm control --reload-rules
sudo udevadm trigger
```
# Random fixes
for future reference
## Audio crackling on games
```zsh
pw-metadata -n settings 0 clock.force-rate 48000 && pw-metadata -n settings 0 clock.force-quantum 500
```
