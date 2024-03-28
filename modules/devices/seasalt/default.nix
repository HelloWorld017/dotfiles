{ nixpkgs, home-manager, ... }: {
	nixosConfigurations."nenw-seasalt" = nixpkgs.lib.nixosSystem {
		system = "aarch64-linux";
		modules = let
			base = import ../../base;
			pkgs = import ../../packages;
		in
			[home-manager.nixosModules.home-manager] ++
			base ++
			pkgs.cli.presets.developments ++
			pkgs.cli.presets.essentials;
	};
}
