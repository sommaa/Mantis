<a name="readme-top"></a>
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) 

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/sommaa/dots">
    <img src="https://user-images.githubusercontent.com/120776791/220881593-1a4b6d38-057b-4118-8f08-ec2bc5d89fd3.png" alt="Logo" width="350" height="80">

  </a>

  <h3 align="center">Andre-i3wm-Theme</h3>

  <p align="center">
    A visually pleasing grey-green theme for yout i3wm!
    <br />
    <a href="https://github.com/sommaa/dots/issues">Report Bug</a>
    ·
    <a href="https://github.com/sommaa/dots/issues">Request Feature</a>
  </p>
</div>

## Features
- OS: ubuntu-latest;
- display server: [X11](https://www.x.org/wiki/)
- compositor: [picom](https://github.com/yshui/picom)
- top bar: [polybar](https://github.com/polybar/polybar);
- launcer & powermenu: [rofi](https://github.com/davatorium/rofi);
- rofi themes: https://github.com/adi1090x/rofi;
- text editor: [neovim](https://neovim.io/);
- neovim config: [Astrovim](https://github.com/AstroNvim/AstroNvim);
- window manager: [i3](https://i3wm.org/) with gaps;
- terminal: [kitty](https://github.com/kovidgoyal/kitty);
- shell: [zsh](https://www.zsh.org/);
- shell theme: [p10k](https://github.com/romkatv/powerlevel10k);
- pdf reader: [zathura](https://pwmt.org/projects/zathura/);
- terminal file manager: [ranger](https://github.com/ranger/ranger);
- package manager wrapper: [nala](https://github.com/volitank/nala).

## Installation

* Main dependencies:
```bash
sudo apt install -y picom polybar rofi neovim i3-gaps kitty zsh zathura ranger nala nitrogen xsensor arandr python3 brightnessctl flameshot gzip curl git pip
```

* [i3-Alternating-layouts](https://github.com/olemartinorg/i3-alternating-layout) and [xborders](https://github.com/deter0/xborder) python dependencies:
```bash
pip install pycairo requests 
```

* Add i3 latest version repo to your repositories and install i3:
```bash
curl https://baltocdn.com/i3-window-manager/signing.asc | sudo apt-key add -
sudo apt install apt-transport-https --yes
echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list
sudo apt update
sudo apt install i3
```

* Install latest version of neovim (if you want to compile it manually, after cloning neovim repo):
```bash
make CMAKE_BUILD_TYPE=Release
sudo make install
```

* Rofi themes:
```bash
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
```

* Remaining installations/programs/configurations:
```bash
  Astrovim, oh-my-zsh, powerlevel10k
```

* Now you are ready to copy config files!
```bash
git clone https://github.com/sommaa/dots.git
cd dots/dots
cp -r * $HOME/.config
```

* Nedeed fonts:
  * [Iosevka Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [Meslo Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [Cascursive](https://github.com/sainnhe/icursive-nerd-font/tree/master/dist/Cascursive)
  * [Azereth Mono](https://fonts.google.com/specimen/Azeret+Mono)
  
<br/><br/>

![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

## Showcase

![2023-02-22-211048_1920x1080_scrot](https://user-images.githubusercontent.com/120776791/220749106-9b150c64-3790-453f-9568-7b17f702368f.png)

![2023-02-22_21-14](https://user-images.githubusercontent.com/120776791/220749186-1c1b083a-3675-44d4-aa4e-d3461173507a.png)

![2023-02-22-211558_1920x1080_scrot](https://user-images.githubusercontent.com/120776791/220749218-356c154d-fb4f-4f89-8f09-c817d743745e.png)

