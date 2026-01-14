#!/usr/bin/env fish

alias k=kubectl

#
# Add to PATH
# Krew is the plugin manager for kubectl
#
fish_add_path --global \
	$HOME/.krew/bin \
	$HOME/.local/bin
