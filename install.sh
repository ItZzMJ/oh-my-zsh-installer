#!/bin/sh

apt update

echo "Installing ZSH\n"

apt install zsh git -y

# install oh-my-zsh
echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# create new .zshrc
if [ -f "~/.zshrc" ]; then
  rm ~/.zshrc
fi

echo "Downloading .zshrc \n"
# download zshrc to ~/.zshrc
curl -fsSLN https://raw.githubusercontent.com/ItZzMJ/oh-my-zsh-installer/main/.zshrc -o ~/.zshrc

# download kali theme to ~/.oh-my-zsh/themes/
echo "Downloading theme \n"
curl -fsSLN https://raw.githubusercontent.com/ItZzMJ/oh-my-zsh-installer/main/kali.zsh-theme -o ~/.oh-my-zsh/themes/kali.zsh-theme

# install zsh-autosuggestions
echo "Downloading autosuggestions \n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
echo "Downloading syntax highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh-completions
echo "Downloading Completions"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# set permissions
echo "Setting permissions"
chmod g-w,o-w ~/.oh-my-zsh/custom/plugins/zsh-completions
chmod g-w,o-w ~/.oh-my-zsh/custom/plugins/zsh-completions/src


