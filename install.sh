#!/bin/sh

apt update

apt install zsh -y

# create new .zshrc
if [-f ~/.zshrc]; then
  rm ~/.zshrc
fi

# download zshrc to ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/ItZzMJ/oh-my-zsh-installer/main/.zshrc -o ~/.zshrc

# download kali theme to ~/.oh-my-zsh/themes/
curl -fsSL https://github.com/ItZzMJ/oh-my-zsh-installer/blob/main/kali.zsh-theme -o ~/.oh-my-zsh/themes/kali.zsh-theme

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# set permissions
chmod g-w,o-w ~./oh-my-zsh/custom/plugins/zsh-completions
chmod g-w,o-w ~./oh-my-zsh/custom/plugins/zsh-completions/src


