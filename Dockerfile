FROM asdlokj1qpi23/subconverter
WORKDIR /base
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del --purge tzdata && \
    rm -rf /base/pref.example.toml /base/pref.example.ini /base/pref.example.yml
COPY pref.toml pref.yml pref.ini /base/
