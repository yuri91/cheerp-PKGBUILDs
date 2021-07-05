#!/bin/bash
# print all statements
set -x
# exit on first error
set -e
# exit if variable not defined
set -u

function build_from_scratch {
	pushd $1
	rm -rf src/ pkg/ *.xz
	makepkg -si
	popd
}

build_from_scratch cheerp-newlib
build_from_scratch cheerp-libcxx
build_from_scratch cheerp-libs
