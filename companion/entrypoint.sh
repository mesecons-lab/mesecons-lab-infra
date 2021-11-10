#!/bin/sh

test -d /minetest/.minetest || {
    echo "Creating folder structure"
    mkdir /minetest/.minetest
    chmod 777 /minetest -R
}

test -d /minetest/.minetest/games/mesecons_lab || {
    echo "cloning mesecons_lab"
    mkdir -p /minetest/.minetest/games
    cd /minetest/.minetest/games
    git clone https://github.com/mesecons-lab/mesecons_lab.git
    cd mesecons_lab
    git submodule init
    git submodule update
}

echo ok