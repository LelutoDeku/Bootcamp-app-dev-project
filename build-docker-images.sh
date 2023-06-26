#!/bin/bash
set -e



function build() {
    local IMAGE_NAME=$1
    local DOCKERFILE=$2

    docker build -t $IMAGE_NAME -f $DOCKERFILE .
}

TAG="hammad"

# cd frontend && build "object-detection-frontend:${TAG}" "frontend.dockerfile" && cd ..

# cd yolo5 && build "object-detection-yolo5:${TAG}" "yolo5.dockerfile" && cd ..

cd polybot && build "object-detection-polybot:${TAG}" "polybot.dockerfile" && cd ..



