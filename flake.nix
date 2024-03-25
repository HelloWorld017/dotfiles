{
	description = "nenw's Flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-23.05-darwin";
		nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";

		darwin.url = "github:lnl7/nix-darwin/master";
		darwin.inputs.nixpkgs.follows = "nixpkgs-unstable";

		home-manager.url = "github:nix-community/home-manager/master";
		home-manager.inputs.nixpkgs.follows = "nixpkgs-unstable";
	};

	outputs = { self, darwin, home-manager, ... }: {
		darwinConfigurations."nenw-iceflake" = darwin.lib.darwinSystem {
			system = "aarch64-darwin";
			modules = [home-manager.darwinModules.home-manager] ++ import ./modules;
		};
	};
}
