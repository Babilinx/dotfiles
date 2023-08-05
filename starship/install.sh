#!/usr/bin/env bash


generic() {
	mkdir ~/.config
	cp starship/starship.toml ~/.config/
}


case $TARGET in
	*) generic;;
esac
