#/bin/bash
cd /usr/local/redis-6.0.6
make MALLOC=libc USE_SYSTEMD=yes && \
make install PREFIX=/usr/local/redis
