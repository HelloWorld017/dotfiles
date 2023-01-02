{ config, lib, pkgs, ... }:
{
	config = {	
		homebrew.casks = [
			"blender"
			"dozer"
			"docker"
			"figma"
			"fuwari"
			"gureumkim"
			"kap"
			"phpstorm"
			"postman"
			"rectangle"
			"sublime-text"
			"homebrew/cask-versions/firefox-developer-edition"
		];
	};
}

