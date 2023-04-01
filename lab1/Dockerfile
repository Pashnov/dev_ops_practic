FROM alpine:latest

WORKDIR app
RUN pwd

COPY check_http_response_code.sh check_http_response_code.sh

RUN chmod +x /app/check_http_response_code.sh

RUN apk --no-cache add curl

RUN echo "* * * * * sh /app/check_http_response_code.sh" > /etc/crontabs/root

# start cron in the foreground
CMD ["crond", "-f"]
