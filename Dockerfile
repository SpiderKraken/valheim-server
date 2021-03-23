FROM adaliszk/valheim-server:onbuild

ARG UID="1029"
ARG GID="65538"

RUN addgroup --gid ${GID} custom && adduser --uid ${UID} --shell /bin/bash -G custom -S custom \
  && chown ${UID}:${GID} /scripts /config /server /backup /data /logs

USER 1029
