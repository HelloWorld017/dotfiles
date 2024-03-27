{ config, lib, pkgs, ... }:
{
	config = {
		homebrew.casks = [
			"fontforge"
			"phpstorm"
		];
	};
}

