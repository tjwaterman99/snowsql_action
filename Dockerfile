FROM alpine:3.10

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN rand > ~/out.txt

ENTRYPOINT ["/entrypoint.sh"]
