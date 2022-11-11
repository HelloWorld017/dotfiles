{ config, lib, pkgs, ... }:

{
	config = {
		homebrew.casks = [
			"karabiner-elements"
		];

		home.file.".config/karabiner/karabiner.json".text =
			(builtins.readFile ./karabiner.json);
	};
}

