FROM ubuntu:20.04 AS codeTest

WORKDIR /testDocker

COPY TestDocker.sh .

RUN apt-get update && apt-get install -y curl

RUN chmod +x TestDocker.sh


FROM nginx:latest

WORKDIR /root

COPY --from=codeTest testDocker/TestDocker.sh .

ENV PORT=80

EXPOSE 80

CMD ["./TestDocker.sh"]
