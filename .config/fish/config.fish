set -x EDITOR nvim
eval sh $HOME/.config/base16-shell/base16-ocean.dark.sh
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin
set -gx CUBBY $HOME/cubby

set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/considerate/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
