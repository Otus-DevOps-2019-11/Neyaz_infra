#!/bin/bash

# Clone app
git clone -b monolith https://github.com/express42/reddit.git

# Install dependencies
cd reddit && bundle install

# Start application server
puma -d
