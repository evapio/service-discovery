FROM gliderlabs/consul-server
COPY ./config /config/
RUN mkdir -p /data
ENTRYPOINT ["/bin/consul", "agent", "-server", "-config-dir=/config"]
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
