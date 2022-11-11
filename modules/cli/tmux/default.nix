{ config, lib, pkgs, ... }:

{
	config = {
		home.programs.tmux = {
			enable = true;
			escapeTime = 5;
			extraConfig = ''
				# Enable full colors
				set -g default-terminal 'screen-256color'
			'';

			plugins = with pkgs.tmuxPlugins; [
				{
					plugin = power-theme;
					extraConfig = ''
						# Config powerline
						set -g @tmux_power_theme 'moon'
						set -g @tmux_power_user_icon ' ' # ' ﱤ '
						set -g @tmux_power_session_icon '  '
						set -g @tmux_power_time_icon '  '
						set -g @tmux_power_date_icon '  ' # '  '
						set -g @tmux_power_left_arrow_icon '​'
						set -g @tmux_power_right_arrow_icon '​'
					'';
				}
			];
		};
	};
}
