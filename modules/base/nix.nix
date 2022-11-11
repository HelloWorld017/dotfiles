{ pkgs, lib, config, ... }:
{
	config = {
		# Nix Configuration
		nix.settings.substituters = [ "https://cache.nixos.org/" ];
		nix.settings.trusted-public-keys = [ "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=" ]; 
		nix.settings.trusted-users = [ "@admin" ];
		nix.extraOptions = ''
			auto-optimise-store = true
			experimental-features = nix-command flakes
			extra-platforms = x86_64-darwin aarch64-darwin
		'';

		nix.configureBuildUsers = true;
		nixpkgs.config.allowUnfree = true;
		services.nix-daemon.enable = true;
	};
}
