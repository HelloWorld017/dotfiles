{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			slack
		];

		homebrew.casks = [
			"asana"
			"notion"
		];
	};
}
