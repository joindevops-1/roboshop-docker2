FROM mysql:8.0

COPY db/* /docker-entrypoint-initdb.d/
COPY entrypoint-wrapper.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint-wrapper.sh
ENTRYPOINT ["/usr/local/bin/entrypoint-wrapper.sh"]
