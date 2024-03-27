{ config, lib, pkgs, ... }:

{
	config = lib.mkMerge [
		(lib.mkIf (!pkgs.stdenv.isDarwin) {
			# On darwin, the docker is installed in the docker-desktop
			home.packages = with pkgs; [ docker ];
		})
		({
			home.packages = with pkgs; [
				argocd
				awscli
				docker-compose
				kubectl
				kubernetes-helm
			];
		})
	];
}
