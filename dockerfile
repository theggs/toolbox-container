FROM alpine
# the mirrors become very slow now, swtich to use the official sources
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories
# RUN echo "https://mirrors.aliyun.com/alpine/v3.6/community/" >> /etc/apk/repositories
RUN ["apk","add","curl"]
RUN ["apk","add","bash"]
# what's in busybox-extras: https://git.alpinelinux.org/aports/tree/main/busybox?h=master
RUN ["apk", "add", "busybox-extras"]
RUN ["apk", "add", "netcat-openbsd"]

