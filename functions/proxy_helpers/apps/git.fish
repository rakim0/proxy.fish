function set_git_proxy
    git config --global http.proxy http://172.31.2.4:8080
    git config --global https.proxy http://172.31.2.4:8080
    print "Git Proxy: Activated" fish_color_command
end

function unset_git_proxy
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    print "Git Proxy: Deactivated" fish_color_command
end
