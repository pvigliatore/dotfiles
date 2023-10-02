.PHONY: sync

sync: 
	rsync --archive --exclude .git --exclude README --exclude Makefile --exclude .gitignore -v "${PWD}/" ~
