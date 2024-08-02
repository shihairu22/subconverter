FROM asdlokj1qpi23/subconverter
WORKDIR /base
RUN apk add tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata
RUN rm -rf /base/pref.example.toml && \
    rm -rf /base/pref.example.ini && \
    rm -rf /base/pref.example.yml
COPY pref.toml pref.yml pref.ini /base/
