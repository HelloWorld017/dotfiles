{ config, lib, pkgs, ... }:
{
	config = {
		homebrew.casks = [
			"dozer"
			"sublime-text"
			# "homebrew/cask-versions/firefox-developer-edition"
		];
	};
}

