# Dot Files

## Linux Install Packages

`git curl openssh xclip zsh kitty audacity pandoc ripgrep gopls ccls tree neofetch`

`yarn global add vscode-langservers-extracted prettier typescript typescript-language-server @tailwindcss/language-server 
graphql-language-service-cli`

## Using DD

`sudo lsblk` to view attached devices and to get the name of the device

`sudo dd bs=4M if=name_of_iso.iso of=/dev/sdx conv=fsync oflag=direct status=progress`

## Other Resources
- [Helix Editor](https://github.com/helix-editor/helix) - [Nala Apt Wrapper](https://gitlab.com/volian/nala)

## SSH Keys

- **requires xclip for linux**
- `ssh-keygen -t ed25519 -C "your_email@example.com"`
- `xclip -sel clip < ~/.ssh/id_ed25519.pub`

## Font Installation

1. `mkdir -p /usr/local/share/fonts`
2. `cp -a /source/. /dest/`
