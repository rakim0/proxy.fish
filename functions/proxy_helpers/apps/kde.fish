function set_KDE_proxy
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'httpProxy' "$HTTP_PROXY"
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'httpsProxy' "$HTTP_PROXY"
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'ProxyType' '1'
    print "KDE Proxy: Activated" 
end

function unset_KDE_proxy
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'ProxyType' '0'
    print "KDE Proxy: Deactivated" 
end
