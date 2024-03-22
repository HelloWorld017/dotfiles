{ config, lib, pkgs, ... }:

{
	config = lib.mkMerge [
		(lib.mkIf pkgs.stdenv.isDarwin {
			home.packages = with pkgs; [
				darwin.iproute2mac
			];
		})
		({
			home.packages = with pkgs; [
				btop
			];
		})
	];
}
