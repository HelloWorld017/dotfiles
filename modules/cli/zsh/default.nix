{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.zsh = {
			enable = true;
			shellAliases = {
				"e." = "open .";
				gl = "if git config --get alias.l > /dev/null; then git l; else git log --oneline --all --graph --decorate; fi";
				glc = "git log --oneline";
				ls = "ls -F";
				ll = "exa -alFh";
				cls = "clear";
				dpsa = "docker ps -a";
				dcup = "docker-compose up";
				dcupd = "docker-compose up -d";
				dclf = "docker-compose logs -f";
				dclft = "docker-compose logs -f --tail=100";
				dcdown = "docker-compose down";
				unsafe-chrome = "open -n -a /Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --args --user-data-dir='/tmp/chrome_dev_test' --disable-web-security";
				fzfile = "fzf";
				fzrepo = "fd . $(git rev-parse --show-toplevel) | fzf";
				fzbranch = "git show-ref --heads | cut -d/ -f3- | fzf --no-preview";
				fzremotes = "git show-ref | grep refs/remotes | cut -d/ -f3- | fzf --no-preview";
				fzproc = "ps ax -o pid,command | fzf --no-preview | cut -d' ' -f1";
				fxxk = "fuck";
				vim = "nvim";
				kill-tsserver = "ps -ax | grep nvim | grep node | grep tsserver |  awk '{print $1}' | xargs kill -9";
			};

			initExtra = (builtins.readFile ./init.zsh);
		};
	};
}
