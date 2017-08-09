# Install-socat

Install socat on CoreOS.

This image will install *socat* binary in /opt/bin/socat.d/bin/socat and dependency libraries under /opt/bin/socat.d/lib.

A wrapper **socat** is installed at /opt/bin. You will need to set kubelete.service environment path to include /opt/bin directory.

```
$ cd /opt/bin && tree
.
├── socat
└── socat.d
    ├── bin
    │   └── socat
    └── lib
        ├── libcrypto.so.1.1
        ├── libreadline.so.7
        ├── libssl.so.1.1
        └── libtinfo.so.6
```

# Usage Examples

```
$ docker build -t <yournamespace>/install-socat
```

```
$ docker run --rm -v /opt/bin:/opt/bin <yournamespace>/install-socat
```

Configuration for kubelete.service systemd unit:

```
...
[Service]
Environment="PATH=/opt/bin/:/usr/sbin:/usr/bin:/sbin:/bin"
ExecStart=/opt/bin/kubelet \
...
```

# Inspiration

https://gist.github.com/cdemers/be415cb46327e56c5c47f9689a07a456
