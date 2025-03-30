FROM couchdb:latest

# Expose CouchDB default port
EXPOSE 5984

# Set environment variables
ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=abani@123

# Start CouchDB and create system databases
CMD ["sh", "-c", "couchdb & sleep 5 && curl -X PUT http://admin:COUCHDB_PASSWORD@127.0.0.1:5984/_users && wait"]
