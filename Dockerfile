FROM tindy2013/subconverter:latest
COPY replacements/ /base/
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
&& apk add tzdata \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 25500
