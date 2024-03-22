{
	presets = {
		all = 
			(import ./preset-essentials) ++
			(import ./preset-darwin);

		essentials = import ./preset-essentials;
		darwin = import ./preset-darwin;
	};

	packages = {
		karabiner = import ./app-karabiner;
		kitty = import ./app-kitty;
	};
}
