### proxy.fish

fish plugin to set/unset proxy for kde based devices
currently only setting proxy for kde settings and git. 
will add more as I need them

primarily using for my college proxy

TODO: 
- [ ] Add support for KDE 
- [ ] Add support for YAST
- [ ] Add support for reading configuration from conf.d 
    - [ ] Allow changing URLs from config, maybe set something like set_proxy_url
    - [ ] Allow changing greeting messages, maybe set something like set_greet_message
- [ ] Add autocompletion support

Ideally it should work the following way:
```console
~
$ proxy uni
Switching to IIITA Proxy: http://172.31.2.3:8080

$ proxy home
Welcome back! Proxy unset
```

```
proxy.fish
├── completions
│   └── proxy.fish
│       └── autocompletions
├── conf.d
│   └── proxy.fish
│       └── configuration for url
└── functions
    │── proxy.fish
    │   └── handler function
    │── apps
    │   └── all the app specific logic goes here
    └── utils 
        └── helper functions: pretty printing etc.
```


references:
idea shamelessly copied from:
[athityakumar/proxyrc](https://github.com/athityakumar/proxyrc)
and
[himanshub16/ProxyMan](https://github.com/himanshub16/ProxyMan/)
