#!/usr/bin/env bash


generic() {
	cp bash/.bashrc ~/.bashrc
	cp bash/.bash_profile ~/.bash_profile
}


case $TARGET in
	*) gereric;;
esac
