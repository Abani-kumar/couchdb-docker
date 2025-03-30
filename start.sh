#!/bin/sh

# Start CouchDB using the full path
/opt/couchdb/bin/couchdb &

# Wait for CouchDB to start
echo "Waiting for CouchDB to start..."
until curl -s http://127.0.0.1:5984/ >/dev/null; do
  sleep 2
done

echo "CouchDB is ready!"

# Create system databases with authentication
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_users
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_replicator
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_global_changes

# Keep CouchDB running
wait
