#!/usr/bin/env bash

BASEURL=http://distfiles.gentoo.org/releases/amd64/autobuilds/
CURRENTBUILD=$(curl ${BASEURL}latest-stage3-amd64.txt | tail -n 1 | cut -d " " -f 1)

docker import ${BASEURL}${CURRENTBUILD} d3v0x/gentoo
