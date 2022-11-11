{ pkgs, lib, config, options, ... }:
let
	user = "nenw";
in with lib; {
	options = with types; {
		home = {
			file = mkOption {
				type = attrs;
				default = {};
				description = "Files to place directly in $HOME";
			};

			services = mkOption {
				type = attrs;
				default = {};
				description = "Home-manager provided user services";
			};

			packages = mkOption {
				type = listOf package;
				default = [];
				description = "Home-manager provided packages";
			};

			programs = mkOption {
				type = attrs;
				default = {};
				description = "Home-manager provided programs";
			};
		};
	};
	
	config = {
		programs.zsh.enable = true;
		users.users.${user} = {
			name = user;
			home = "/Users/${user}";
			shell = pkgs.zsh;
		};

		# Initialize Home
		home-manager = {
			useUserPackages = true;
			useGlobalPkgs = true;

			users.${user} = {
				home = {
					file = mkAliasDefinitions options.home.file;
					packages = mkAliasDefinitions options.home.packages;
					stateVersion = "22.05";
				};
				programs = mkAliasDefinitions options.home.programs;
				services = mkAliasDefinitions options.home.services;
			};
		};
	};
}
