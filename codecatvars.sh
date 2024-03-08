#!/usr/bin/env bash

echo $branch

if [ "$branch" = "clienteX" ]; then
    ecs="http://dev.dispapeles.com/clienteX"
    ecr="clienteX.dkr.ecr.sa-east-1.amazonaws.com"
else
    echo "production"
    ecs="http://dev.dispapeles.com/production"
    ecr="prod.dkr.ecr.sa-east-1.amazonaws.com"
fi

export ECS_URL=$ecs
export DOCKER_URL=$ecr
