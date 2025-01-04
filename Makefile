.PHONY: sync

sync: 
	rsync --archive --exclude .git -v "${PWD}/dotfiles" ~
