{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.neovim = {
			enable = true;
			extraConfig = (builtins.readFile ./init.nvim);
			coc = {
				enable = true;
				settings = {
					"eslint" = {
						"autoFixOnSave" = true;
					};
					"suggest.noselect" = true;
					"suggest.enablePreselect" = false;
				};
			};
		};

		env.EDITOR = "nvim";
	};
}
