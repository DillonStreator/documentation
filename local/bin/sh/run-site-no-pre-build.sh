#!/bin/bash

RUN_SERVER=${RUN_SERVER:=false}
RENDER_SITE_TO_DISK=${RENDER_SITE_TO_DISK:=false}

if [ ${RUN_SERVER} = true ]; then
  printf "checking that node modules are installed and up-to-date"
  npm --global install yarn && \
  npm cache clean --force && yarn install --frozen-lockfile
  printf "Starting Hugo build"
  yarn run start

  sleep 5
else
	exit 0
fi
