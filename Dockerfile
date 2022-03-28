FROM ubuntu:20.04

COPY TestDocker.sh /

RUN chmod +x /TestDocker.sh

ENTRYPOINT ["/bin/bash", "/TestDocker.sh"]

CMD ["DONE"]
