alias dm "docker-machine"
alias dc "docker-compose"
function denv
    docker-machine env $argv | source
end
eval (dm env dev)
