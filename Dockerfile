FROM adaliszk/valheim-server:onbuild



RUN addgroup --gid 65538 custom && adduser --uid 1029 --shell /bin/bash -G custom -S custom \
  && chown 1029:65538 /scripts /config /server /backup /data /logs

USER 1029
