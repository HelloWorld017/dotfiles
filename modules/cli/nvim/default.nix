{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.neovim = {
			enable = true;
			extraConfig = (builtins.readFile ./init.nvim);
		};

		env.EDITOR = "nvim";
	};
}
