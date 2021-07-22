function fish_prompt
    set_color e305d9
    echo -n (whoami)(set_color normal)@(hostname | cut -d . -f 1 )\ (set_color $fish_color_cwd)(prompt_pwd)(set_color normal) '> '

    alias ls='exa'
    alias dc='cd'
    alias sl='exa'
    alias bright="bash /home/lare/bin/bright"
    alias weather="curl 'wttr.in/Kramfors?format=4'"
    alias umbra='ssh umbra@172.27.123.23 -p 22'
    alias midnight='ssh midnight@172.27.162.2 -p 22'
end
