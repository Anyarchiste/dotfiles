use ./welcome_matt.nu *

export def cl [] {
    
    let user = $"(ansi purple)アニャ(ansi blue)さん"
    let slate = $"(ansi blue)A clean slate for"
    clear
    echo ("\n" | append $slate | append $user | append $"(ansi blue)UwU\n" | str join " ")
    }

