{ config, lib, pkgs, ... }:

{
	config = {
		fonts.fontDir.enable = true;
		fonts.fonts = with pkgs; [
			(pkgs.callPackage ./sarasa-gothic.nix {})
			pretendard-jp
		];
	};
}
