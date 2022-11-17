{ config, lib, pkgs, ... }:
{
	config = {
		homebrew.casks = [
			"dozer"
			"figma"
			"phpstorm"
			"postman"
			"sublime-text"
			# "homebrew/cask-versions/firefox-developer-edition"
		];
	};
}

