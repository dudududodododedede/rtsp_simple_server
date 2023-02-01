FROM aler9/rtsp-simple-server:v0.17.17 AS server
FROM alpine
COPY --from=server /rtsp-simple-server /
ENTRYPOINT [ "/rtsp-simple-server", "/config/rtsp-simple-server.yml" ]
