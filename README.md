# Requirements

- stow
- hyprland
- wofi
- waybar
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
```zsh
stow gtk
stow hypr
stow kitty
stow nwg-look
stow themes
stow Thunar
stow wallpaper
stow waybar
stow zsh
stow hyprpanel
stow cava
```

Set the [weather api](https://www.weatherapi.com/my/) key in `~/.config/hyprpanel/config.json` :
```json
{
    "menus.clock.weather.key": "/home/kuuro/.config/weather.json"
}
```
