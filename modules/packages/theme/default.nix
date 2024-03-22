{
	presets = {
		all = 
			(import ./preset-essentials);

		essentials = import ./preset-essentials;
	};

	packages = {
		fonts = import ./app-fonts;
	};
}
