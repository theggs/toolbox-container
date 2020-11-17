FROM alpine
RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories
RUN echo "https://mirrors.aliyun.com/alpine/v3.6/community/" >> /etc/apk/repositories
RUN ["apk","add","curl"]
RUN ["apk","add","bash"]
RUN ["apk", "add", "busybox-extras"]
