function gam
    if count $argv > /dev/null
        git commit --amend -S -m $argv
    else
        git commit --amend -S --no-edit
    end
end
