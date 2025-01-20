# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file into the container at /app
COPY target/taskmaster-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on (default Spring Boot port is 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

