#!/bin/bash
GIT_REPOS="$(grep "REPOS" .env | sed -r 's/.{,6}//')"
GIT_BRANCH="$(grep "BRANCH" .env | sed -r 's/.{,7}//')"
FOLDER_NAME="$(grep "FOLDER" .env | sed -r 's/.{,7}//')"
echo $GIT_REPOS
echo $GIT_BRANCH
echo $FOLDER_NAME
git clone ${GIT_REPOS} -b ${GIT_BRANCH} ${FOLDER_NAME}
docker-compose up -d --build
docker-compose ps