# Use Cobweb base image
FROM shynome/cobweb:v3.1.2

# Set working directory
WORKDIR /app

# Define a persistent data directory
VOLUME ["/app/pb_data"]

# Expose the Cobweb HTTP port
EXPOSE 10000

# Run Cobweb server
ENTRYPOINT ["/app/cobweb", "serve", "--http=0.0.0.0:10000"]
