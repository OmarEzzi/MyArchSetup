# My Arch Linux Setup

hi guys, this is my personal dotfiles for arch linux. im a student and I write this install script so I doesnt have to setup my system from zero every time I install linux. its use wayland and simple dark theme.

### programs I use:
- sway (window manager)
- waybar (custom dark style)
- wofi (app launcher)
- foot (terminal)
- thunar (file manager)

### how to install
its very simple, just open your terminal and copy this:

```bash
git clone https://github.com/OmarEzzi/dotfiles.git
cd MyArchSetup
chmod +x install.sh
./install.sh
```

the script will ask for sudo password to update system and install yay and all the packages. after it finish, just reboot your pc and login using ly display manager.

### some shortcuts you need to know
here is the most important shortcuts I use in my config:

* Win key : open wofi to search for apps
* Win + t : open foot terminal
* Win + e : open thunar
* Win + q : kill current window
* Win + f : make window fullscreen
* Win + arrows : move focus between windows
* Win + Shift + arrows : move the window itself
* Win + Shift + Space : toggle floating mode
* Win + 1 to 9 : switch between workspaces
* Win + Space : change keyboard language (english/arabic)
* Print screen : take a screenshot with grim

also I put some fast commands in .bashrc to save time:
type `u` in terminal to update the whole system
type `i` to install a package
type `nm` to open wifi settings
type `po` to turn off the pc
