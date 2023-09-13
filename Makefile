.PHONY: sync

sync: 
	rsync --exclude .git --exclude README --exclude Makefile --quiet .* ~
