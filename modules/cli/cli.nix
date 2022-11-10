{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			bat
			exa
			yarn
			nodejs
			fzf
			thefuck
			btop
		];
	};
}
