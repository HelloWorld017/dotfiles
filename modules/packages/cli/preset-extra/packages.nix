{ config, lib, pkgs, ... }:

{
	config = {
		home.packages = with pkgs; [
			android-tools
			chafa
			ffmpeg
			imagemagick
			spicetify-cli
		];
	};
}
