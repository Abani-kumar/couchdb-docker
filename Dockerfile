FROM couchdb:latest

# Expose CouchDB's default port
EXPOSE 5984

# Copy custom CouchDB configuration
COPY local.ini /opt/couchdb/etc/local.ini

# Copy and set permissions for the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run the script
CMD ["/start.sh"]
