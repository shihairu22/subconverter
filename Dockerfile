FROM asdlokj1qpi23/subconverter:latest
WORKDIR /base
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -f pref.example.*
    rm -rf /base/base/*
COPY pref.* .
COPY base/base/ /base/base/
