FROM asdlokj1qpi23/subconverter


WORKDIR /base
RUN apk add tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY pref.example.toml /base
COPY pref.example.yml /base
COPY pref.example.ini /base



EXPOSE 25500

WORKDIR /base

