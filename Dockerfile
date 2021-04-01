FROM adaliszk/valheim-server:vanilla

ENV UID="1029" GID="65538"

USER root

RUN addgroup --gid "${GID}" custom && adduser --uid "${UID}" --shell /bin/bash -G custom -S custom \
 && chown "${UID}:${GID}" /scripts /config /server /backup /data /logs

USER "${UID}"
