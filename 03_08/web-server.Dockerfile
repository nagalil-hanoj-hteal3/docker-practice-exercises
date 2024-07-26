FROM ubuntu
LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"

USER root
COPY ./web-server.bash /

RUN chmod 755 /web-server.bash
RUN apt -y update
# update line 10 with 'netcat-openbsd'
RUN apt -y install bash netcat-openbsd

USER nobody

ENTRYPOINT [ "/web-server.bash" ]
