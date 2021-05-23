FROM maven:3.6.0-jdk-8
COPY pom.xml testNG.xml send_notification.sh ./
COPY src ./src
RUN mvn dependency:resolve
RUN mvn clean install -DskipTests