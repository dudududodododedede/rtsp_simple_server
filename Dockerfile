FROM aler9/rtsp-simple-server:latest
RUN echo "Hello World"
ENTRYPOINT [ "sh", "-c", "/rtsp-simple-server" ]
