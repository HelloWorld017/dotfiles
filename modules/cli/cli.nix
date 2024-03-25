{ config, lib, pkgs, pkgs-unstable, ... }:

{
	config = {
		home.packages = with pkgs; [
			android-tools
			argocd
			awscli
			bat
			btop
			chafa
			darwin.iproute2mac
			docker-compose
			elixir
			eza
			fastmod
			fd
			ffmpeg
			fzf
			imagemagick
			jq
			kubectl
			kubernetes-helm
			nodejs
			nodePackages.pnpm
			nodePackages.yarn
			pkg-config
			php
			python311
			pv
			ripgrep
			rustup
			spicetify-cli
			tailspin
			tealdeer
			thefuck
			virtualenv
			wget
		];
	};
}
