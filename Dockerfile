FROM asdlokj1qpi23/subconverter
WORKDIR /base
RUN apk add tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata
    rm /base/pref.example.toml
    rm /base/pref.example.ini
    rm /base/pref.example.yml
COPY pref.toml /base
COPY pref.yml /base
COPY pref.ini /base
