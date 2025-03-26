FROM alpine
# the mirrors become very slow now, swtich to use the official sources
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/community/" >> /etc/apk/repositories
RUN ["apk","add","curl"]
RUN ["apk","add","bash"]
# what's in busybox-extras: https://git.alpinelinux.org/aports/tree/main/busybox?h=master
RUN ["apk", "add", "busybox-extras"]
RUN ["apk", "add", "netcat-openbsd"]

# add etcdctl
RUN apk-install curl && \
    curl -LOks https://github.com/coreos/etcd/releases/download/v${VERSION}/etcd-v3.5.20-linux-amd64.tar.gz && \
    tar zxvf etcd-v${VERSION}-linux-amd64.tar.gz && \
    cp etcd-v${VERSION}-linux-amd64/etcdctl /usr/bin/etcdctl && \
    rm -rf etcd-v* && \
    chmod +x /usr/bin/etcdctl
