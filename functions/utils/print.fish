# just a helper function to print
# argv[1]:  message to print "proxy set successfully!"
# argv[2]:  what color to use (if set to none then just use normal)
#           color should be defined in syntax highlighting variables
#           check the link below for valid variable names:
#           https://fishshell.com/docs/current/interactive.html#variables-color
function print
    set -l message "message is empty"
    set -l color "normal"

    if test -n "$argv[1]"
        set message "$argv[1]"
    end

    if test -n "$argv[2]"
        set color "$argv[2]"
    end

    echo (set_color $$color --underline)$message(set_color normal)
end
