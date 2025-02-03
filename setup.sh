sudo cat ~/dotfiles/pacman.conf >> /etc/pacman.conf

clear
echo ">> Atualizando sistema"
sudo pacman --noconfirm -Syu

clear
echo ">> Instalando pacotes"
sudo pacman -S --noconfirm nitrogen i3 alacritty neovim polybar sddm git chromium networkmanager go rust nodejs ranger neofetch yarn btop acpi pipewire alsa-utils zsh curl

clear
echo ">> Configurando zsh"
echo "zsh; exit" >> ~/.bashrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/dotfiles/.zshrc ~/

clear
echo ">> Baixando yay"
git clone https://aur.archlinux.org/yay
cd yay; yes | makepkg -si; cd ..; rm -rf yay

ln -sf ~/dotfiles/nitrogen ~/.config
mkdir ~/Images
mkdir ~/Images/Wallpapers
cp ~/dotfiles/wallpaper.jpg ~/Images/Wallpapers/

ln -sf ~/dotfiles/i3 ~/.config

ln -sf ~/dotfiles/alacritty ~/.config

ln -sf ~/dotfiles/nvim ~/.config
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

ln -sf ~/dotfiles/polybar ~/.config

chmod +x ./sddm-astronaut-theme/setup.sh; ~/dotfiles/sddm-astronaut-theme/setup.sh
