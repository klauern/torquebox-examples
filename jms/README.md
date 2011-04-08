Messaging
=========

This follows TorqueBox's simple defaults for publishing and receiving messages
on both Queues and Topics.

Deploying the queues and topics
-------------------------------
deploy the torquebox.yml file in this directory, which will deploy the queues
and topics as standalone messaging containers.

    $ jruby -S rake torquebox:deploy

Deploying the message senders
-----------------------------
The `messaging-sender/` project is a simple app that allows you to test sending
messages to the queues and topics by simply browsing to a URL with HTTP GET
requests.

### Send a Topic message

    curl http://localhost:8080/jms/send/queue_nick
    curl http://localhost:8080/jms/send/queue_second
    curl http://localhost:8080/jms/send/topic_nick
    curl http://localhost:8080/jms/send/topic_second

### Test receiving a Topic message

    curl http://localhost:8080/jms/receive/queue_nick
    curl http://localhost:8080/jms/receive/queue_second
    curl http://localhost:8080/jms/receive/topic_nick
    curl http://localhost:8080/jms/receive/topic_second


