#!/bin/bash

# Read password from mounted file
if [ -f /tmp/password.txt ]; then
  PASSWORD=$(cat /tmp/password.txt)
  echo "MySQL root password loaded from /tmp/password.txt"
else
  echo "Password file not found!"
  exit 1
fi

# Pass it explicitly as an environment variable to MySQL entrypoint
export MYSQL_ROOT_PASSWORD="$PASSWORD"

echo "custom entrypoint started"
# Now call the original MySQL entrypoint
exec  /entrypoint.sh mysqld

