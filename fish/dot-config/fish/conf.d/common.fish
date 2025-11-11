#!/usr/bin/env fish

set -x EDITOR nvim

#
# Initialize direnv
#
eval (direnv hook fish)

#
# Initialize ASDF
#
set -gx PATH $HOME/.asdf/shims $PATH
