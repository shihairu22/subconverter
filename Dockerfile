FROM ubuntu:latest

LABEL maintainer="dongshull"

ENV VERSION 0.3.2

WORKDIR /base
RUN apt-get update && \
    apt-get install -y tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apt-get remove --purge -y tzdata && \
    apt-get autoremove -y && \
    apt-get clean

COPY groups.txt rulesets.txt /base/snippets/
COPY pref.yml /base

EXPOSE 25500

WORKDIR /base

CMD ["subconverter"]
