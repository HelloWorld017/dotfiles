{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			android-tools
			awscli
			bat
			btop
			docker-compose
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
