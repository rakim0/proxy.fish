function set_git_proxy    
    git config --global http.proxy "$HTTP_PROXY"
    git config --global https.proxy "$HTTP_PROXY"
    print "Git Proxy: Activated" 
end

function unset_git_proxy
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    print "Git Proxy: Deactivated" 
end
