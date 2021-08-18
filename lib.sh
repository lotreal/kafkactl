#!/usr/bin/env bash
fn:run() {
    for cmd in $*; do
        # echo [MAKE] call $cmd...
        $cmd
    done
}

style:pass() {
    echo $(tput bold)$(tput setaf 2)
}

style:user() {
    echo $(tput bold)$(tput setaf 4)
}

style:host() {
    echo $(tput bold)$(tput setaf 4)
}

style:split() {
    echo $(tput bold)$(tput setaf 5)
}

style:end() {
    echo $(tput sgr0)
}
