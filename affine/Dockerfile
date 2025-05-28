FROM node:18-alpine

# Install necessary dependencies
RUN apk add --no-cache bash git

# Create a non-root user 'container'
RUN adduser -D -h /home/container container

# Set environment variables and working directory
USER container
ENV HOME=/home/container
WORKDIR /home/container

# Copy entrypoint script
COPY --chown=container:container entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Define the default command
CMD ["/entrypoint.sh"]
