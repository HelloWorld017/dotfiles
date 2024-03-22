{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			bat
			eza
			fd
			fzf
			jq
			pkg-config
			pv
			ripgrep
			tealdeer
			thefuck
			wget
		];
	};
}
