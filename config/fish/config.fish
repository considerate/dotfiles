#Path to Oh My Fish install.
set -gx OMF_PATH ~/.config/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/considerate/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

function restart-dns
    sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
end

# Load vi_mode
fish_vi_mode
function vi_key_bindings
    fish_vi_key_bindings
    bind -M insert -m default jj force-repaint
end
set -g fish_key_bindings vi_key_bindings

set -gx GOPATH ~/dev/golang

alias vim nvim
alias swarm 'env DOCKER_HOST=manager0.quad:4000 docker'
