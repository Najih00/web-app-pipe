# Use a different base image from Docker Hub
FROM docker.io/adoptopenjdk/openjdk17:jre-17.0.1_12-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the web app JAR file into the container
COPY target/web_app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your web app is running on
EXPOSE 8181

# Define the command to run your web app
CMD ["java", "-jar", "app.jar"]
