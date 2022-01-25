FROM golang:1.17 as build

RUN mkdir cronv && cd cronv \
 && go mod init cronv \
 && go get -d github.com/takumakanari/cronv/cronv \
 && go build -o ./cronv github.com/takumakanari/cronv/cronv \
 && mv ./cronv /usr/local/bin

FROM alpine
RUN mkdir output
COPY --from=build /usr/local/bin/cronv /usr/local/bin/cronv

CMD cronv && mv ./crontab.html output/
