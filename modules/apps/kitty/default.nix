{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.kitty = {
			enable = true;
		};
	};
}
