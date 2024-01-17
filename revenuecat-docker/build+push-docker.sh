#!/bin/bash

echo "Building docker image locally"
docker build .. --file Dockerfile.sql --platform=linux/amd64 -t 602297180373.dkr.ecr.us-east-1.amazonaws.com/apicurio-registry:sql-2.5.8.Revenuecat

echo
echo "Pushing built docker image"
docker push 602297180373.dkr.ecr.us-east-1.amazonaws.com/apicurio-registry:sql-2.5.8.Revenuecat

if [[ $? -ne 0 ]]; then
  echo
  echo "Failed to push docker image. Probably you need to login in the AWS docker registry. Run this and try again:"
  echo "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 602297180373.dkr.ecr.us-east-1.amazonaws.com"
fi
