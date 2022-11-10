{ pkgs, lib, config, ... }:
{
	config = {
		# Initialize Homebrew Casks
		homebrew = {
			enable = true;
			onActivation = {
				autoUpdate = false;
				cleanup = "zap";
				upgrade = false;
			};

			global = {
				brewfile = true;
				lockfiles = true;
			};

			extraConfig = ''
				cask_args require_sha: true
			'';

			taps = [
				"homebrew/cask"
				"homebrew/core"
				"homebrew/services"
			];
		};

		env.HOMEBREW_NO_ALAYTICS = "1";
	};
}
