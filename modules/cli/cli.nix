{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			android-tools
			awscli
			bat
			btop
			darwin.iproute2mac
			docker-compose
			exa
			fd
			ffmpeg
			fzf
			imagemagick
			jq
			nodejs
			nodePackages.pnpm
			nodePackages.yarn
			pkg-config
			php
			python311
			pv
			ripgrep
			tealdeer
			thefuck
			virtualenv
			wget
		];
	};
}
