{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			elixir
			fastmod
			nodejs
			nodePackages.pnpm
			nodePackages.yarn
			pkg-config
			php
			python311
			virtualenv
		];
	};
}
