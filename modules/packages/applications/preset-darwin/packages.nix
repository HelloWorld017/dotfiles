{ config, lib, pkgs, ... }:
{
	config = lib.mkIf pkgs.stdenv.isDarwin {
		homebrew.casks = [
			"dozer"
			"fuwari"
			"gureumkim"
			"kap"
			"rectangle"
		];
	};
}

