{ config, lib, pkgs, ... }:
{
	config = lib.mkMerge [
		(lib.mkIf pkgs.stdenv.isDarwin {
			homebrew.casks = [
				"blender"
				"docker"
				"figma"
				"postman"
				"spotify"
				"sublime-text"
				"homebrew/cask-versions/firefox-developer-edition"
			];
		})
		(lib.mkIf !pkgs.stdenv.isDarwin {
			home.packages = with pkgs; [
				blender
				figma-linux
				firefox-devedition-bin
				postman
				spotify
				sublime4
			];
		})
	];
}

