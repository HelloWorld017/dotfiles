{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			awscli
			bat
			btop
			exa
			fd
			fzf
			jq
			nodejs
			ripgrep
			thefuck
			yarn
		];
	};
}
