FROM tindy2013/subconverter:latest
COPY replacements/ /base/
RUN apk add tzdata \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 25500
