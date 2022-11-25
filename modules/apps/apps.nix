{ config, lib, pkgs, ... }:
{
	config = {
		homebrew.casks = [
			"dozer"
			"docker"
			"figma"
			"fuwari"
			"gureumkim"
			"phpstorm"
			"postman"
			"sublime-text"
			"homebrew/cask-versions/firefox-developer-edition"
		];
	};
}

