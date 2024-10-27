FROM rabbitmq:3-management

# Copy configuration and script
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY rabbitmq-plugins.sh /usr/local/bin/rabbitmq-plugins.sh

# Make the script executable
RUN chmod +x /usr/local/bin/rabbitmq-plugins.sh

# Convert script to Unix format
RUN sed -i 's/\r//' /usr/local/bin/rabbitmq-plugins.sh

# Start RabbitMQ with the script
ENTRYPOINT ["/bin/sh", "-c", "/usr/local/bin/rabbitmq-plugins.sh && rabbitmq-server"]