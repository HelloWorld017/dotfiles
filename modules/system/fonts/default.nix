{ config, lib, pkgs, ... }:

{
	config = {
		fonts.fontDir.enable = true;
		fonts.fonts = with pkgs; [
			(pkgs.callPackage ./sarasa-gothic.nix {})
			(pkgs.callPackage ./metropolis.nix {})
			pretendard
			pretendard-jp
		];
	};
}
