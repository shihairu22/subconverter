#FROM tindy2013/subconverter
FROM dongshul/subconverter:0.9.3
LABEL maintainer="dongshul@qq.com"

ENV VERSION 0.1.6

WORKDIR /base
RUN apk add tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY groups.txt rulesets.txt /base/snippets/
COPY pref.yml /base

EXPOSE 25500

WORKDIR /base

CMD ["subconverter"]
