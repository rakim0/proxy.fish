function set_KDE_proxy
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'httpProxy' 'http://172.31.2.4:3128'
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'httpsProxy' 'http://172.31.2.4:3128'
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'ProxyType' '1'
end

function unset_KDE_proxy
    kwriteconfig5 --file kioslaverc --group 'Proxy Settings' --key 'ProxyType' '0'
end
