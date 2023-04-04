<a name="readme-top"></a>
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) ![ccs](https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white)
![](https://img.shields.io/github/last-commit/sommaa/dots?&style=for-the-badge&color=CFFC49&logoColor=171718&labelColor=171718)
![](https://img.shields.io/github/stars/sommaa/dots?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=171718)
[![](https://img.shields.io/github/repo-size/sommaa/dots?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=171718)](https://github.com/sommaa/dots)

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/sommaa/dots">
    <img src="https://user-images.githubusercontent.com/120776791/229870169-e35ad7cf-b7b5-4ffe-88c4-b1a7191cde70.png" alt="Logo" width="350" height="80">

  </a>

  <h3 align="center">i3wm-Theme</h3>

  <p align="center">
    A visually pleasing grey-green theme for your i3wm!
    <br />
    <a href="https://github.com/sommaa/dots/issues">Report Bug</a>
    ·
    <a href="https://github.com/sommaa/dots/issues">Request Feature</a>
  </p>
</div>

## ColorScheme
<div align="center">
<table>
  <thead>
    <tr>
      <th>Preview</th>
      <th>Hex</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p align="center"><img src="https://user-images.githubusercontent.com/120776791/229868127-80814544-42e0-40d1-85c1-6b19e5b906de.png" width="26" height="26" align="center"></p></td>
      <td>#CFFC49</td>
      <td>Lime</td>
    </tr>
    <tr>
      <td><p align="center"><img src="https://user-images.githubusercontent.com/120776791/229868445-db9db673-d9d9-4b97-a449-ad1b3501317b.png" width="26" height="26" align="center"></p></td>
      <td>#323946</td>
      <td>Grey</td>
    </tr>
    <tr>
      <td><p align="center"><img src="https://user-images.githubusercontent.com/120776791/229868627-5101d073-7fa0-484e-b974-7f8bd9ca39ea.png" width="26" height="26" align="center"></p></td>
      <td>#15171A</td>
      <td>Anthracite</td>
    </tr>
   </tbody>
</table>
</div >
  
## Features
- OS: [Ubuntu-Latest](https://ubuntu.com/);
- display server: [X11](https://www.x.org/wiki/)
- compositor: [picom](https://github.com/yshui/picom)
- top bar: [polybar](https://github.com/polybar/polybar);
- launcer & powermenu: [rofi](https://github.com/davatorium/rofi);
- rofi themes: https://github.com/adi1090x/rofi;
- text editor: [neovim](https://neovim.io/);
- notification deamon: dunst;
- neovim config: [AstroNvim](https://github.com/AstroNvim/AstroNvim);
- window manager: [i3](https://i3wm.org/) with gaps;
- terminal: [kitty](https://github.com/kovidgoyal/kitty);
- shell: [zsh](https://www.zsh.org/);
- shell theme: [p10k](https://github.com/romkatv/powerlevel10k);
- pdf reader: [zathura](https://pwmt.org/projects/zathura/);
- terminal file manager: [ranger](https://github.com/ranger/ranger);
- package manager wrapper: [nala](https://github.com/volitank/nala).
- spotify theme: [spicetify](https://spicetify.app/docs/advanced-usage/themes/), community theme: Dreary, color scheme: in dots folder.
- icon pack: ePapirus-Dark
- borders: [xborders](https://github.com/deter0/xborder)
- i3 layouts: [alternating_layouts](https://github.com/olemartinorg/i3-alternating-layout)
- firefox: [ccs_theme](/dots/chrome)
- firefox homepage: [nighttab](https://addons.mozilla.org/it/firefox/addon/nighttab/)
## Installation

* Main dependencies:
```bash
sudo apt install -y picom polybar rofi neovim i3-gaps kitty zsh zathura ranger nala nitrogen xsensor arandr python3 brightnessctl flameshot gzip curl git pip dunst xclip
```

* [i3-Alternating-layouts](https://github.com/olemartinorg/i3-alternating-layout) and [xborders](https://github.com/deter0/xborder) python dependencies:
```bash
pip install pycairo requests i3ipc
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

* firefox theme:
```
enable firefox custom ccs in "about:config" page and copy chrome folder in $HOME/.mozilla/firefox/XXXXX.default-release/chrome 
```

* Remaining installations/programs/configurations:
```bash
  AstroNvim, oh-my-zsh, powerlevel10k, spicetify
```

* **Move .zshrc and .p10k.zsh** to your home directory (remember to rename them with the dot in front)

* Now you are ready to copy config files!
```bash
git clone https://github.com/sommaa/dots.git
cd dots/dots
cp -r * $HOME/.config
```
* **Remember to make scripts (like xborders, alternating_layouts, polybar scripts, etc) executable**!
```bash
chmod +x <Name of the script>
```
* Matlab color scheme importer:
```bash
https://it.mathworks.com/matlabcentral/fileexchange/53862-matlab-schemer
```
* Nedeed fonts:
  * [Iosevka Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [Meslo Nerd Font](https://www.nerdfonts.com/font-downloads)
  * [Cascursive](https://github.com/sainnhe/icursive-nerd-font/tree/master/dist/Cascursive)
  * [Azereth Mono](https://fonts.google.com/specimen/Azeret+Mono)
  
## Showcase

![reddit](https://user-images.githubusercontent.com/120776791/229539421-8e6aad53-e68e-4bc5-88d9-16ae9c0a3f44.png)




