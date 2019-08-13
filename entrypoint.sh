#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /enju/tmp/pids/server.pid

usermod -u $UID -o root

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
