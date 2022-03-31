#!/bin/bash


hostname=$(awk -F: '{print $2}' <(grep hostname .kitchen/default-ubuntu-2104.yml) | tr -d ' ')
public_key='.kitchen/default-ubuntu-2104.pem'
rundeck_version='4.0.0'
username='ubuntu'

scp \
  -o StrictHostKeyChecking=no \
  -o UserKnownHostsFile=/dev/null \
  -i "$public_key" "$username@$hostname:~/rundeck/rundeckapp/build/libs/rundeck-$rundeck_version-SNAPSHOT.war" \
  .
