FROM asdlokj1qpi23/subconverter
WORKDIR /base
RUN apk add tzdata --no-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata
    rm pref.example.toml /base
    rm pref.example.ini /base
    rm pref.example.yml /base
COPY pref.toml /base
COPY pref.yml /base
COPY pref.ini /base
