{ config, lib, pkgs, ... }:

{
	config = {
		homebrew.casks = [
			"asana"
			"notion"
			"slack"
			"tailscale"
		];
	};
}
