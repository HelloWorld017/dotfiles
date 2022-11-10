{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.zsh = {
			enable = true;
		};
	};
}
