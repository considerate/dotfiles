# Setup color scheme
if status --is-interactive
    #eval sh $HOME/dotfiles/base16-shell/scripts/base16-ocean.sh
end

# Setup prompt
source $HOME/.config/fish/theme.fish

function restart-dns
    sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
    sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist
end

# Load vi_mode
function vi_key_bindings
    fish_vi_key_bindings
    bind -M insert -m default jj force-repaint
    bind -M visual -m default jj force-repaint
end
set -g fish_key_bindings vi_key_bindings

# Use neovim as editor
alias vim nvim
set -gx EDITOR nvim

# Make fuzzy search ignore .gitignore listed files
set -gx FZF_DEFAULT_COMMAND 'ag --ignore-case --depth -1 -g ""'

# Add local bin folder (haskell stack)
set -gx PATH $PATH ~/.local/bin

# Add Go dev folder to GOPATH
set -gx GOPATH ~/dev/golang

# Aliases for encryption
alias encrypt 'openssl enc -aes-256-cbc -a'
alias decrypt 'openssl enc -aes-256-cbc -a -d'

