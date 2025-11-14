#!/usr/bin/env fish

alias k=kubectl

#
# Add krew to PATH
# Krew is the plugin manager for kubectl
#
set -gx PATH $PATH $HOME/.krew/bin
