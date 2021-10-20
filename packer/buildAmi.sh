#!/bin/bash

# for linux
packer build -var-file=vars.json ami.json

# for windows
packer build -var-file vars.json ami.json

    