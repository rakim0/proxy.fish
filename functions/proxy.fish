set script_dir (dirname (status --current-filename))
source $script_dir/proxy_helpers/apps/kde.fish
source $script_dir/proxy_helpers/apps/git.fish
source $script_dir/proxy_helpers/utils/print.fish

function set_proxy
    set_KDE_proxy
    set_git_proxy
    print "Proxy: Activated successfully" fish_color_command
end

function unset_proxy
    unset_KDE_proxy
    unset_git_proxy
    print "Proxy: Unset ^_^" fish_color_command
end

function proxy
    if test "$argv[1]" = "set"
        set_proxy 
    else if test "$argv[1]" = "unset"
        unset_proxy
    end
end
