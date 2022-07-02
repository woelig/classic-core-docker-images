ARG base_image=terrarebels/core
ARG version=latest

FROM ${base_image}:${version}

COPY ./entrypoint.sh /entrypoint.sh

USER root

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
