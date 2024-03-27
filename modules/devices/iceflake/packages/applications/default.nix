{
	presets = {
		all = 
			(import ./preset-default) ++
			(import ./preset-work);

		default = import ./preset-default;
		work = import ./preset-work;
	};
}
