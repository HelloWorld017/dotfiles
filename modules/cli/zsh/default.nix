{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.zsh = {
			enable = true;
			shellAliases =
				{
					# Base Aliases
					ls = "ls -F";
					ll = "exa -alFh";
					cls = "clear";
					fxxk = "fuck";
				} ++
				{
					# Git Related Aliases
					gl = "if git config --get alias.l > /dev/null; then git l; else git log --oneline --all --graph --decorate; fi";
					glc = "git log --oneline";
				} ++ 
				{
					# Editor Related Aliases
					vim = "nvim";
					kill-tsserver = "ps -ax | grep nvim | grep node | grep tsserver |  awk '{print $1}' | xargs kill -9";
				} ++
				{
					# Fuzzy Finder Commands
					fzfile = "fzf";
					fzrepo = "fd . $(git rev-parse --show-cdup) | fzf";
					fzbranch = "git show-ref --heads | cut -d/ -f3- | fzf --no-preview";
					fzbranchall = "git show-ref | grep refs/remotes | cut -d/ -f4- | fzf --no-preview";
					fzremotes = "git show-ref | grep refs/remotes | cut -d/ -f3- | fzf --no-preview";
					fzproc = "ps ax -o pid,command | fzf --no-preview | cut -d' ' -f1";
					fzr = "fzrepo";
					fzb = "fzbranch";
					fzba = "fzbranchall";
					fzp = "fzproc";
				} ++
				{
					# Docker Aliases
					dpsa = "docker ps -a";
					dcup = "docker-compose up";
					dcupd = "docker-compose up -d";
					dclf = "docker-compose logs -f";
					dclft = "docker-compose logs -f --tail=100";
					dcdown = "docker-compose down";
				} ++
				{
					# Desktop Environment Related Aliases
					"e." = "open .";
					unsafe-chrome = "open -n -a /Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --args --user-data-dir='/tmp/chrome_dev_test' --disable-web-security";
				};

			initExtra = (builtins.readFile ./init.zsh);
		};
	};
}
