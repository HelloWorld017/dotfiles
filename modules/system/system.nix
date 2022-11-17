{ config, ... }:
{
	config = {
		system.defaults.NSGlobalDomain.AppleShowAllFiles = true;
		system.defaults.NSGlobalDomain.InitialKeyRepeat = 25;
		system.defaults.NSGlobalDomain.KeyRepeat = 2;
		system.defaults.trackpad.Clicking = true;
		system.defaults.dock.autohide = true;
	};
}
