FROM alpine
# the mirrors become very slow now, swtich to use the official sources
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/community/" >> /etc/apk/repositories
RUN ["apk","add","curl"]
RUN ["apk","add","bash"]
RUN ["apk","add","tar"]
# what's in busybox-extras: https://git.alpinelinux.org/aports/tree/main/busybox?h=master
RUN ["apk", "add", "busybox-extras"]
RUN ["apk", "add", "netcat-openbsd"]

# add etcdctl
RUN curl -sSL https://github.com/coreos/etcd/releases/download/v3.5.20/etcd-v3.5.20-linux-amd64.tar.gz \
    | tar -vxz -C /usr/local/bin --strip=1 etcd-v3.5.20-linux-amd64/etcd etcd-v3.5.20-linux-amd64/etcdctl \
    && chown root:root /usr/local/bin/etcd /usr/local/bin/etcdctl

RUN rm -rf /var/cache/apk/*
