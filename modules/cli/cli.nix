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
			ffmpeg
			fzf
			jq
			nodejs
			pkg-config
			php
			python311
			pv
			ripgrep
			tealdeer
			thefuck
			virtualenv
			wget
			yarn
		];
	};
}
