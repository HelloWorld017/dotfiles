{ config, options, lib, pkgs, ... }:
{
	config = {
		home.programs.git = {
			enable = true;
			userName = "nenw";
			userEmail = "khi@nenw.dev";
		};

		home.packages = with pkgs; [
			git-lfs
			rs-git-fsmonitor
			watchman
			delta
		];
	};
}
