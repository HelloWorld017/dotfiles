{ darwin, home-manager, ... }: {
	darwinConfigurations."nenw-iceflake" = darwin.lib.darwinSystem {
		system = "aarch64-darwin";
		modules = let
			base = import ../../base;
			pkgs = import ../../packages;
			devicePkgs = import ./packages;
		in
			[home-manager.darwinModules.home-manager] ++
			base ++
			pkgs.applications.presets.all ++
			pkgs.cli.presets.all ++
			pkgs.settings.presets.all ++
			pkgs.theme.presets.all ++
			devicePkgs.applications.presets.all ++
			devicePkgs.cli.presets.all;
	};
}
