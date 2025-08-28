sudo dnf install stow neovim kitty fish fortune-mod zoxide
curl -sS https://starship.rs/install.sh | sh
git clone https://github.com/ActualNugget/dotfiles.git
cd dotfiles
stow .
