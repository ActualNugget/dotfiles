# Clone and backup
git clone --bare --recurse-submodules https://github.com/ActualNugget/dotfiles.git $HOME/.dots
function config {
   /usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

# Add config alias to bashrc
echo "alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'" >> $HOME/.bashrc

# Enable SSH for pushing changes (only if SSH is already set up on this machine) 
config remote set-url origin git@github.com:ActualNugget/dotfiles.git
