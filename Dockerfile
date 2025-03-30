FROM couchdb:latest

# Expose CouchDB's default port
EXPOSE 5984

# Set environment variables
ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=chepu@123

# Run CouchDB using the default entrypoint
CMD ["couchdb"]
