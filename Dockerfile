FROM alpine:3.14

RUN mkdir -p /home/app

COPY TestDocker.sh /home/app/TestDocker.sh

RUN chmod +x TestDocker.sh

CMD ["./TestDocker.sh"]
