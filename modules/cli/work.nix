{ config, lib, pkgs, ... }:

{
	home.programs.zsh = {
		shellAliases = {
			"fzclones" = "echo \"$HOME/workspace/ridi-clones/$(ls \"$HOME/workspace/ridi-clones\" | fzf)\"";
			"fzc" = "fzclones";
			"cdc" = "cd `fzclones`";
			"unsafe-chrome" = "open -n -a /Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --args --user-data-dir=\"$HOME/workspace/drafts/unsafe-chrome-userdata\" --disable-web-security";
		};
	};
}
