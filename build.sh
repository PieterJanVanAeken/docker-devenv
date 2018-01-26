#!/bin/bash

images=( "devenv-base" "devenv-jdk8" "devenv-jdk8-ansible")

for i in "${images[@]}"
do
  docker build -t vanaepi/$i $i
done
