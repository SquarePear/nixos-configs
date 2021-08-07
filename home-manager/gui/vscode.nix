{ pkgs, ... }:

{
	programs.vscode = {
		enable = true;
		package = pkgs.vscode-fhs;

		userSettings = {
			"update.channel" = "none";

			"editor" = {
				"fontFamily" = "'CaskaydiaCove Nerd Font'";
				"fontLigatures" = true;
				"insertSpaces" = false;
			};

			"window.zoomLevel" = 2;
			"workbench.iconTheme" = "vscode-icons";

			"files.exclude" = {
				"**/*.meta" = true; # Unity meta files
			};
		};

		extensions = with pkgs.vscode-extensions; [
			# TODO: Add VSCode Extensions
		];
	};
}
