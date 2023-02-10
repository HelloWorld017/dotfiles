{ config, lib, pkgs, ... }:

{
	home.programs.zsh = {
		shellAliases = {
			"fzclones" = "echo \"$HOME/workspace/ridi-clones/$(ls \"$HOME/workspace/ridi-clones\" | fzf)\"";
			"fzc" = "fzclones";
			"cdc" = "cd `fzclones`";
		};
	};
}
