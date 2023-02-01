FROM aler9/rtsp-simple-server AS server
FROM alpine
COPY --from=server /rtsp-simple-server /
ENTRYPOINT [ "/rtsp-simple-server /config/rtsp-simple-server.yml" ]
