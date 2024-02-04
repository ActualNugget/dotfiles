# Dotfiles Management
function config --wraps='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME' --description 'alias config=/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME $argv        
end
