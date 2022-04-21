if [ "$TERM" = "linux" ]; then
    echo -en "\e]P048483e" #black    -> this is the background color as well.
    echo -en "\e]P1dc2566" #darkred
    echo -en "\e]P28fc029" #darkgreen
    echo -en "\e]P3fd971f" #brown
    echo -en "\e]P455bcce" #darkblue
    echo -en "\e]P59358fe" #darkmagenta
    echo -en "\e]P656b7a5" #darkcyan
    echo -en "\e]P7acada1" #lightgray
    echo -en "\e]P876715e" #darkgray
    echo -en "\e]P9fa2772" #red
    echo -en "\e]PAa7e22e" #green
    echo -en "\e]PBe29152" #yellow
    echo -en "\e]PC66d9ee" #blue
    echo -en "\e]PDae82ff" #magenta
    echo -en "\e]PE66efd5" #cyan
    echo -en "\e]PFcfd0c2" #white    -> this is the foreground color as well.
    clear                  #repaint the whole background with the new color
fi
