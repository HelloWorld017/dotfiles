{ config, lib, pkgs, ... }:

let
	cocSettings = {
		"eslint" = {
			"autoFixOnSave" = true;
		};
		"suggest.noselect" = true;
		"suggest.enablePreselect" = false;
		"suggest.completionItemKindLabels" = {
			"text" = "  (text)";
			"method" = " (method)";
			"function" = " (function)";
			"constructor" = " (constructor)";
			"field" = " (field)";
			"variable" = " (variable)";
			"class" = " (class)";
			"interface" = " (interface)";
			"module" = " (module)";
			"property" = " (property)";
			"unit" = " (unit)";
			"value" = " (value)";
			"enum" = " (enum)";
			"enumMember" = " (enum member)";
			"keyword" = " (keyword)";
			"snippet" = " (snippet)";
			"color" = " (color)";
			"file" = " (file)";
			"reference" = " (reference)";
			"folder" = " (folder)";
			"constant" = " (constant)";
			"struct" = " (struct)";
			"event" = " (event)";
			"operator" = " (operator)";
			"typeParameter" = " (type parameter)";
			"default" = " (default)";
		};
		"languageserver" = {
			"nix" = {
				"command" = "nil";
				"filetypes" = ["nix"];
				"rootPatterns" = ["flake.nix"];
			};
		};
		"workspace" = {
			"rootPatterns" = [
				".git"
				".hg"
				".projections.json"
				"tsconfig.json"
			];
		};
		"tsserver" = {
			"useLocalTsdk" = true;
		};
	};
in {
	config = {
		home.packages = with pkgs; [ nil ];
		home.programs.neovim = {
			enable = true;
			extraConfig = builtins.readFile ./assets/init.nvim;
		};

		home.configFile = {
			"nvim/header.txt" = {
				source = ./assets/header.txt;
			};

			"nvim/coc-settings.json" = let
				json = pkgs.formats.json { };
			in {
				source = json.generate "coc-settings.json" cocSettings;
			};
		};

		home.file = {
			".eslintrc" = {
				text = "{}";
			};
		};

		env.EDITOR = "nvim";
	};
}
