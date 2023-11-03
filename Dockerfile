# Use the official OpenJDK base image for Java 17
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the web app JAR file into the container
COPY target/web_app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your web app is running on
EXPOSE 8181

# Define the command to run your web app
CMD ["java", "-jar", "app.jar"]