FROM openjdk:latest
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY /hello-world/target/hello-docker-world-0.0.1-SNAPSHOT.jar hello-world.jar
EXPOSE 12345
ENTRYPOINT exec java $JAVA_OPTS -jar hello-world.jar

# /home/runner/work/GitHub-Actions-Demo/GitHub-Actions-Demo/hello-world/target/hello-docker-world-0.0.1-SNAPSHOT.jar