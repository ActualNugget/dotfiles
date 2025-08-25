sudo dnf install stow neovim kitty fish fortune-mod
curl -sS https://starship.rs/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
git clone https://github.com/ActualNugget/dotfiles.git
cd dotfiles
stow .
