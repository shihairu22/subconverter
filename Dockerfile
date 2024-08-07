FROM asdlokj1qpi23/subconverter:latest
WORKDIR /base
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -f pref.example.*
COPY pref.* .
RUN rm -rf /base/base/*
COPY base/base/ /base/base/
