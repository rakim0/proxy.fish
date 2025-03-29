function set_shell_proxy
    set -Ux HTTP_PROXY "http://172.31.2.4:8080"
    set -Ux HTTPS_PROXY "$HTTP_PROXY"
    set -Ux http_proxy "$HTTP_PROXY"
    set -Ux https_proxy "$HTTP_PROXY"
    set -Ux ALL_PROXY "$HTTP_PROXY"
    print "Environment Variables set!" 
end

function unset_shell_proxy
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
    set -e http_proxy
    set -e https_proxy
    set -e ALL_PROXY

    set -Ue HTTP_PROXY
    set -Ue HTTPS_PROXY
    set -Ue http_proxy
    set -Ue https_proxy
    set -Ue ALL_PROXY
    print "Environment Variables unset" 
end

