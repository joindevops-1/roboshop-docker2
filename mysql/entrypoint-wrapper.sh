#!/bin/bash

# Load the password from the file written by the init container
if [ -f /tmp/mysql/password.txt ]; then
  export MYSQL_ROOT_PASSWORD=$(cat /tmp/mysql/password.txt)
fi

echo "custom entrypoint started"
# Now call the original MySQL entrypoint
exec  /entrypoint.sh mysqld

