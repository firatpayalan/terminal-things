#!/bin/bash

# template appender for deployment jobs
# need to get PROJECT_NAME variable via env variable name
# author mesut tasci
# author firat payalan

GITLAB_FILENAME=".gitlab-ci.yml"
for d in */ ; do
    PROJECT_NAME="${d%/}"
    TEMPLATE="\n$PROJECT_NAME-stage:
  extends: .stage
  variables:
    APPLICATION_NAME: $PROJECT_NAME
    TEAM_NAME: epara-$PROJECT_NAME
  only:
    refs:
      - master
    changes:
      - $PROJECT_NAME/config-stage.json"

    echo "$TEMPLATE" >> "$d/$GITLAB_FILENAME"
done
