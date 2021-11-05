#!/bin/bash
# inline action for replace text and push into remote repo
# firat 5 november 2021
# bash sucks

cd .deploy/
&& sed -i.bak 's/im-da-boomer-one/im-da-cool-one/g' k8s.yml
&& rm -rf *.bak
&& cd ..
&& git add .
&& git checkout -b "WLT-1-rename-image-pull-secret"
&& git commit -m "change image pull secret variable"
&& git push -u origin head