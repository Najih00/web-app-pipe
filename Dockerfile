# Use a base image compatible with OpenShift
FROM adoptopenjdk/openjdk11:jre-11.0.12_7-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the web app JAR file into the container
COPY target/web_app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your web app is running on (this is informational in OpenShift)
EXPOSE 8181

# Command to run the application when the container starts
CMD ["java", "-jar", "app.jar"]
