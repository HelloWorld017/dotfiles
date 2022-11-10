{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.zsh = {
			enable = true;
			shellAliases = {
				e = "open .";
				gl = "if git config --get alias.l > dev/null; then git l; else git log --oneline --all --graph --decorate; fi";
				glc = "git log --oneline";
				ls = "ls -F";
				ll = "exa -alFh";
				cls = "clear";
				dpsa = "docker ps -a";
				dcup = "docker compose up";
				dcupd = "docker compose up -d";
				dclf = "docker compose logs -f";
				dclft = "docker compose logs -f --tail=100";
				dcdown = "docker compose down";
				unsafe-chrome = "open -n -a /Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --args --user-data-dir='/tmp/chrome_dev_test' --disable-web-security";
				fzf = "fzf --bind 'enter:execute(bat --paging=always {})' --preview 'bat --style=numbers color=always {}'";
				fxxk = "fuck";
				vim = "nvim";
			};
		};
	};
}
