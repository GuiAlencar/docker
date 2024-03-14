FROM nginx:1.23.3-alpine

HEALTHCHECK --interval=10s --timeout=5s --start-period=15s --retries=2 \
    CMD curl -f http://localhost/


STOPSIGNAL SIGKILL

# docker image build -t nginx:stop-heath .
# docker container run -dt --rm --name nginx-stop-heath nginx:stop-heath