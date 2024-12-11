# Use an official OpenJDK runtime as a base image (Java 17 in this case)
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the local machine into the container
COPY target/my-app.jar /app/my-app.jar

# Expose the port that your Java application will listen on (example 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "my-app.jar"]

