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
			"graphql" = {
				"command" = "graphql-lsp";
				"args" = ["server" "-m" "stream"];
				"filetypes" = ["graphql"];
			};
			"nix" = {
				"command" = "nil";
				"filetypes" = ["nix"];
				"rootPatterns" = ["flake.nix"];
			};
			"biome" = {
				"command" = "biome";
				"args" = ["lsp-proxy"];
				"filetypes" = ["javascript" "typescript" "javascriptreact" "typescriptreact"];
				"rootPatterns" = ["biome.json"];
				"requireRootPattern" = true;
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
		"graphql" = {
			"filetypes" = ["graphql"];
		};
	};
in {
	config = {
		# TODO Make it configurable
		home.packages = with pkgs; [
			biome
			nil
			nodePackages.graphql-language-service-cli
		];
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
