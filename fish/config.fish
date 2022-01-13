function fish_prompt
	set_color e305d9
	echo -n (whoami)(set_color normal)@(hostname | cut -d . -f 1 )\ (set_color $fish_color_cwd)(prompt_pwd)(set_color normal) '> '

	alias ls='lsd'
	alias dc='cd'
	alias sl='lsd'
	alias bright="bash /home/lare/bin/bright"
	alias weather="curl 'wttr.in/Kramfors?format=4'"
	alias umbra='ssh umbra@172.27.123.23 -p 22'
	alias top='bpytop'
	alias du='ncdu'
	alias df='duf'
end
