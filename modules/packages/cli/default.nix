{
	presets = {
		all = 
			(import ./preset-devops) ++
			(import ./preset-development) ++
			(import ./preset-essentials) ++
			(import ./preset-extra) ++
			(import ./preset-system);

		devops = import ./preset-devops;
		development = import ./preset-development;
		essentials = import ./preset-essentials;
		extra = import ./preset-extra;
		system = import ./preset-system;
	};

	packages = {
		git = import ./app-git;
		nvim = import ./app-nvim;
		tmux = import ./app-tmux;
		zsh = import ./app-zsh;
	};
}
