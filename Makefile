.PHONY: install fish

install: fish
	stow --dotfiles --target=$(HOME) ghostty lazygit tmux fish

install-work:
	stow --dotfiles --target=$(HOME) fish-work

fish:
	brew install fish fisher
	fish -c "fish_add_path /opt/homebrew/bin"
	fish -c "fisher install IlanCosman/tide@v6"
	fish -c "tide configure --auto --style=Classic --prompt_colors='True color' --classic_prompt_color=Dark --show_time=No --classic_prompt_separators=Slanted --powerline_prompt_heads=Slanted --powerline_prompt_tails=Slanted --powerline_prompt_style='One line' --prompt_spacing=Sparse --icons='Many icons' --transient=Yes"

