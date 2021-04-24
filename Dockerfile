# current dockerfile in chapter3
#FROM busybox:latest
#RUN addgroup -g 10001 app && adduser -G app -u 10001 -D -h /app -s /sbin/nologin app
#
#RUN mkdir /app/statics/
#ADD statics /app/statics/
#
#COPY bin/invoicer /app/invoicer
#USER app
#EXPOSE 8080
#WORKDIR /app
#ENTRYPOINT /app/invoicer

# current dockerfile in chapter3
FROM golang:latest
RUN addgroup --gid 10001 app
RUN adduser --gid 10001 --uid 10001 --home /app --shell /sbin/nologin --disabled-password app

RUN mkdir /app/statics/
ADD statics /app/statics/

COPY bin/invoicer /app/invoicer
USER app
EXPOSE 8080
WORKDIR /app
ENTRYPOINT /app/invoicer
