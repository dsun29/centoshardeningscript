#!/bin/bash

cp /etc/sudoers /etc/sudoers.origional
cp /etc/sudoers /etc/sudoers.new
echo "## Add developers group" >> /etc/sudoers.new
echo "%developers ALL=(ALL) SERVICES" >> /etc/sudoers.new

