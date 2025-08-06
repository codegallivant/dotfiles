# dotfiles

my linux configuration.

## Desc
- Display Manager: ly
- Window Manager: i3
- Compositor: picom 
- Bar: polybar
- Launcher: rofi
- Terminal Emulator: kitty
- Terminal Multiplexer: tmux
- Notifications: dunst
- Wallpaper Setter: feh
- Lockscreen: i3lock

## Themes
1. Shapes (default)
2. Forest
  
To change the theme, see ``~/.config/i3/config``.

### Shapes
![Screenshot](screenshots/shapes-1.png)
![Screenshot](screenshots/shapes-2.png)

### Forest
![Screenshot](screenshots/forest.png)

## Install configuration
Install [chezmoi](https://www.chezmoi.io/install/).
Then,
```bash
chezmoi init --apply git@github.com:codegallivant/dotfiles.git
```

