{ config, ... }:
{
	config = {
		system.defaults.NSGlobalDomain.AppleShowAllFiles = true;
		system.defaults.NSGlobalDomain.InitialKeyRepeat = 40;
		system.defaults.NSGlobalDomain.KeyRepeat = 3;
		system.defaults.trackpad.Clicking = true;
		system.defaults.dock.autohide = true;
	};
}
