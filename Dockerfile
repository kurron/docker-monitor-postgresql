# Pre-built JDK 8 image
FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@jvmguy.com>

ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/example/monitor-postgresql/2.1.0.RELEASE/monitor-postgresql-2.1.0.RELEASE.jar /opt/example/application.jar

EXPOSE 8400

ENTRYPOINT ["java", "-jar", "/opt/example/application.jar"]

