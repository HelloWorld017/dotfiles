{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			bat
			coreutils
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
