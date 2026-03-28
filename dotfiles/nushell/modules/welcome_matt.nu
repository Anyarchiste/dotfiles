
export def welcomematt []: any -> any {
    
    let user = $"(ansi purple)アニャ(ansi blue)さん"
    let welc = $"(ansi blue)おかえり!!"
    let category = $"(ansi red)注意："
    let reminder = $"(ansi blue) 自分を愛しましょう"

    let lineOne = ( $welc | append $user | str join " " )
    let lineTwo = ( $category | append $reminder | str join "")

    let welcomeMatt = ( $lineOne | append $lineTwo | str join "\n\n" )
    
    echo $"\n($welcomeMatt)\n"
    }
