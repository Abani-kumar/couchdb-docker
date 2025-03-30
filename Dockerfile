FROM couchdb:latest

# Expose CouchDB's default port
EXPOSE 5984

# Copy custom CouchDB configuration
COPY local.ini /opt/couchdb/etc/local.ini

# Use the default CouchDB entry point
CMD ["tini", "--", "couchdb"]
