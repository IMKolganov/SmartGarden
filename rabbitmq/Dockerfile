FROM rabbitmq:3-management

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY rabbitmq-plugins.sh /usr/local/bin/rabbitmq-plugins.sh

RUN chmod +x /usr/local/bin/rabbitmq-plugins.sh

ENTRYPOINT ["/bin/sh", "-c", "/usr/local/bin/rabbitmq-plugins.sh && rabbitmq-server"]
