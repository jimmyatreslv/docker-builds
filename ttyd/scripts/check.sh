#!/bin/bash

function runcmd() {
    echo "++ $@"
    $@
}

runcmd deck version

runcmd inso -version

runcmd node -v

runcmd jwt -h

runcmd kubectl version

runcmd http --version