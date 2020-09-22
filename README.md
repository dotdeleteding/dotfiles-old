<p align="center">
<img src="images/logo.png" alt="dotfiles"/>
</p>

<p align="center">
Kumpulan konfigurasi dotfiles punya jariberjalan
</p>

<p align="center">
<a href="https://github.com/jariberjalan/dotfiles/blob/master/LICENSE"><img src="https://img.shields.io/github/license/jariberjalan/dotfiles?style=for-the-badge"/></a>
<a href="https://github.com/jariberjalan/dotfiles"><img src="https://img.shields.io/github/repo-size/jariberjalan/dotfiles?style=for-the-badge"/></a>
</p>

## Daftar Isi
- [Intro](#Intro)
- [Screenshot](#Screenshot)
- [Detail](#Detail)
- [Install](#Install%20(Beta))

## Intro
Halo brother, jadi ini tempat basecamp configurasi dotfiles linux versi saya.

## Screenshot
##### Muka
![Muka](https://github.com/jariberjalan/dotfiles/blob/master/images/Muka.png "Muka")

##### Ranger
![Ranger](https://github.com/jariberjalan/dotfiles/blob/master/images/Ranger.png "Ranger")

##### dmenu
![dmenu](https://github.com/jariberjalan/dotfiles/blob/master/images/dmenu.png "dmenu")

##### Neofetch
![Neofetch](https://github.com/jariberjalan/dotfiles/blob/master/images/Neofetch.png "Neofetch")

##### Vim
![Vim](https://github.com/jariberjalan/dotfiles/blob/master/images/Vim.png "Vim")

## Detail

| Item | Value |
| --- | --- |
| OS | Arch Linux |
| Font | agave Nerd Font |
| Shell | zsh |
| Color | Dark Moon Blue |
| Audio | pulseaudio-modules-bt-git |
| Browser | Firefox (Custom Chrome Themes) |
| Terminal | rxvt-unicode-pixbuf |
| Interface | i3-gaps-rounded-git |
| Launcher | dmenu (patched) |
| Status Bar | polybar |
| Wallpaper | feh |
| Lockscreen | betterlockscreen & i3-lock |
| Compositor | picom |
| Notification | dunst |
| File Manager | ranger |
| Text Editor/IDE | vim |

## Dependency
| Item | Link |
| - | - |
| Ranger | [devicons](https://github.com/alexanderjeurissen/ranger_devicons) |
| ZSH | [Auto Sugestion](https://github.com/zsh-users/zsh-autosuggestions) - [Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - [Powerlevel10K](https://github.com/romkatv/powerlevel10k)|
| Polybar | [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu) |

## Install (Beta)

### Apa itu lgit?
`lgit` adalah script yang saya buat secara manual agar memudahkan konfigurasi file dan symlink secara otomatis ke folder target yang menghemat waktu tanpa perlu memindahkan file. Selain itu juga dirancang agar folder bisa dipindah maupun di rename.

### Memasang dotfiles
1. Langkah pertama clone terlebih dahulu.

`git clone https://github.com/jariberjalan/dotfiles.git ~/dotfiles`

2. Gunakan command dibawah untuk langsung membuat symlink.

`cd ~/dotfiles && chmod 755 ./lgit && ./lgit`
