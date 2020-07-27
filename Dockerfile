FROM node:10.22.0-alpine3.11

# 更新最新镜像源列表
RUN apk update

# 设置Docker 时间为上海时区
RUN apk add -U tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/shanghai" >> /etc/timezone

# 依次安装命令curl、scp、telnet
RUN apk add curl
RUN apk add openssh-client
RUN apk add busybox-extras

ENTRYPOINT ["top"]
