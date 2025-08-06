# dotfiles

my dotfiles.

## Desc
- Display Manager (DM): ly
- Window Manager (WM): i3
- Compositor: picom
- Bar: polybar
- Wallpaper Setter: feh
- Launcher: rofi
- Terminal: kitty
- Notifications: dunst
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

