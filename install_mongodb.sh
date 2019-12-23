#!/bin/bash

# Import the public key used by the package management system.
wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -

# Create a list file for MongoDB.
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Install the MongoDB packages.
sudo apt-get update
sudo apt-get install -y mongodb-org

# Start MongoDB
sudo systemctl start mongod
sudo systemctl enable mongod
