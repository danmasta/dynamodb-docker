# tried alpine but dynamodb requests cause unknown crash
FROM openjdk:7

RUN mkdir -p /opt/dynamodb
WORKDIR /opt/dynamodb

RUN wget http://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz -O /tmp/dynamo.tar.gz && \
    tar -xvzf /tmp/dynamo.tar.gz -C /opt/dynamodb && \
    rm /tmp/dynamo.tar.gz

VOLUME ["/var/dynamodb"]

EXPOSE 8000

ENTRYPOINT ["java", "-jar", "./DynamoDBLocal.jar", "-sharedDb", "-dbPath", "/var/dynamodb"]