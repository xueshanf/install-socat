#! /bin/bash
PATH=/usr/bin:/bin:/usr/sbin:/sbin:/opt/bin
LD_LIBRARY_PATH=/opt/bin/socat.d/lib:$LD_LIBRARY_PATH exec /opt/bin/socat.d/bin/socat "$@"
