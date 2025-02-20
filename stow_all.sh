#!/bin/bash

COMMON_CONFIGS=(gtk kitty nwg-look themes wallpaper zsh hyprpanel cava applications pipewire)
DESKTOP_CONFIGS=(hypr Thunar)
LAPTOP_CONFIGS=(hypr-laptop Thunar-laptop)

echo "Stow for laptop or desktop? (Enter 'desktop' or 'laptop')"
read DEVICE_TYPE

while [[ "$DEVICE_TYPE" != "desktop" && "$DEVICE_TYPE" != "laptop" ]]; do
    echo "Invalid input. Please enter 'desktop' or 'laptop':"
    read DEVICE_TYPE
done

echo "Applying common configurations..."
for config in "${COMMON_CONFIGS[@]}"; do
    stow "$config"
    echo "- stow $config"
done

if [[ "$DEVICE_TYPE" == "desktop" ]]; then
    echo "Applying desktop-specific configurations..."
    for config in "${DESKTOP_CONFIGS[@]}"; do
        stow "$config"
        echo "- stow $config"
    done
elif [[ "$DEVICE_TYPE" == "laptop" ]]; then
    echo "Applying laptop-specific configurations..."
    for config in "${LAPTOP_CONFIGS[@]}"; do
        stow "$config"
        echo "- stow $config"
    done
fi

echo "Dotfiles setup complete!"
