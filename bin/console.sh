#!/bin/bash


SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT=$SCRIPT_DIR/..
TAG="mdp-dp-rl:oct18"

set -x 
set -e 
cd $SCRIPT_DIR
touch resources/bash_history

docker build -f $SCRIPT_DIR/Dockerfile -t $TAG .
docker run -it -v $PROJECT_ROOT/src:/work -v $SCRIPT_DIR/resources/bash_history:/root/.bash_history $TAG /bin/bash
