FROM alpine
COPY TestDocker.sh /TestDocker.sh
CMD ["./entrypoint.sh"]
