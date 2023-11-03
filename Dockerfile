# Use a different base image
FROM adoptopenjdk:17-jre

# Set the working directory in the container
WORKDIR /app

# Copy the web app JAR file into the container
COPY target/web_app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your web app is running on
EXPOSE 8181

# Create a non-root user to run the application (optional but recommended for security)
RUN adduser --system webapp

# Set file permissions and ownership for the application
RUN chown webapp:webapp app.jar
USER webapp

# Define the command to run your web app
CMD ["java", "-jar", "app.jar"]
