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

# Basictex
set -gx PATH $PATH /usr/local/texlive/2016basic/bin/x86_64-darwin

# Add cabal bin folder (haskell)
set -gx PATH $PATH ~/.cabal/bin

# Add local bin folder (haskell stack)
set -gx PATH $PATH ~/.local/bin

# Add own bin folder to path
set -gx PATH $PATH ~/bin

# Add matlab to path
set -gx PATH $PATH /Applications/MATLAB_R2018a.app/bin

# Add Go dev folder to GOPATH
set -gx GOPATH ~/dev/golang

# Aliases for encryption
alias encrypt 'openssl enc -aes-256-cbc -a'
alias decrypt 'openssl enc -aes-256-cbc -a -d'

set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths

set -gx NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish
alias docker-ps 'docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Command}}"'
alias stack-run 'stack build --exec'

# Force LC_ALL locale lang for R to not complain
set -gx LC_ALL ja_JP.UTF-8

set -gx PKG_CONFIG_PATH $PKG_CONFIG_PATH /usr/local/opt/libffi/lib/pkgconfig
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
