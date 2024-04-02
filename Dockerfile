FROM openjdk:8-jre-alpine
#COPY target/gs-maven-0.1.0.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

# Use a base image with Maven installed
#FROM maven:3.8.5-openjdk-11-slim AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Maven project descriptor
COPY pom.xml .

# Fetch dependencies (download dependencies listed in pom.xml)
RUN mvn dependency:go-offline -B

# Copy the application source code
COPY src ./src

# Build the application
RUN mvn package -DskipTests

# Use a lighter base image for runtime
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the JAR file from the build stage
COPY --from=build /usr/src/app/target/gs-maven-0.1.0.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]