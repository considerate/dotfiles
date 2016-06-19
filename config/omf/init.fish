set -gx PATH $PATH ~/bin
set -gx PATH $PATH ~/.cabal/bin
set -gx PATH $PATH /Library/TeX/texbin
set -gx PATH $PATH ~/.local/bin
set -gx EDITOR nvim
~/.config/base16-shell/base16-ocean.dark.sh
source ~/.config/omf/secrets.fish
source ~/.config/omf/docker.fish
source ~/.config/omf/y-dl.fish
source ~/.config/omf/theme.fish
set -gx REACT_EDITOR nvim
set -gx SWARM_HOST 'manager0.quad:4000'
alias quaddocker "env DOCKER_HOST=$SWARM_HOST docker"
alias quaddc "env DOCKER_HOST=$SWARM_HOST env DOCKER_OPTS='--cluster-store=consul://$SWARM_HOST:8500' docker-compose"
