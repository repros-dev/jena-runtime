FROM cirss/repro-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/boot-setup /repro/dist/
RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require jena-runtime exports --util

CMD  /bin/bash -il
