{ config, options, lib, pkgs, ... }:
{
	config = {
		home.programs.git = {
			enable = true;
			userName = "nenw";
			userEmail = "khi@nenw.dev";
			extraConfig = {
				alias.cmps = "!f() { git checkout \"$1\" && git merge - && git push && git checkout -; }; f";
				alias.cpmps = "!f() { git checkout \"$1\" && git pull --rebase && git merge - && git push && git checkout -; }; f";
				alias.bundlebranch = "!f() { git bundle create \"$2\" \"$1\" ^$(git merge-base \"$1\" \"master\"); }; f";
				alias.bundlestash = "!f() { git tag git-bundlestash-tag \"stash@{$1}\"; git bundle create \"$2\" git-bundlestash-tag ^master; git tag -d git-bundlestash-tag; }; f";
				alias.l = "!sh -c 'PAGER=\"less -FRXK +/HEAD\" git log --oneline --graph --decorate'";
				pager.diff = "delta --plus-style 'syntax #205820'";
				pull.ff = "only";
				push.autoSetupRemote = "true";
				rerere.enabled = "true";
				# core.fsmonitor = "rs-git-fsmonitor";
			};
		};

		home.packages = with pkgs; [
			git-lfs
			rs-git-fsmonitor
			watchman
			delta
		];
	};
}
