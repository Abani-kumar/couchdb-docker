#!/bin/sh

# Start CouchDB in the background
couchdb &

# Wait until CouchDB is ready
echo "Waiting for CouchDB to start..."
until curl -s http://127.0.0.1:5984/ >/dev/null; do
  sleep 2
done

echo "CouchDB is ready!"

# Create required databases
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_users
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_replicator
curl -X PUT http://admin:chepu@123@127.0.0.1:5984/_global_changes

# Keep CouchDB running
wait
