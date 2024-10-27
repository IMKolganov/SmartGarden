#!/bin/sh
set -e
set -x

echo "rabbit-pugins.sh Starting plugin configuration..."

# Enable plugins
rabbitmq-plugins enable rabbitmq_mqtt
rabbitmq-plugins enable rabbitmq_web_mqtt

echo "rabbit-pugins.sh Plugins enabled successfully."