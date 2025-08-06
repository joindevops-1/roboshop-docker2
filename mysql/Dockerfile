FROM mysql:8.0

COPY db/* /docker-entrypoint-initdb.d/
COPY entrypoint-wrapper.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
