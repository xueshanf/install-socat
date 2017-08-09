# Install-socat

Install socat on CoreOS.

This image will install *socat* binary in /opt/bin/socat.d/bin/socat and dependency libraries under /opt/bin/socat.d/lib.

A wrapper **socat** is installed at /opt/bin. You will need to set kubelete.service environment path to include /opt/bin directory.

Note the Dockerfile doesn't work with dockerhub.com auto-build yet because multi-stage build is not supported by dockerhub.com with docer version 17.03.1.

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
