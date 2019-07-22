#!/bin/bash

# /docker-entrypoint-initdb.d/init-user-db.sh

# echo "CREATE USER $DB_USER PASSWORD '$DB_PASS'"
# echo "CREATE DATABASE $DB_NAME OWNER $DB_USER"

# psql -U postgres -c "CREATE USER $DB_USER PASSWORD '$DB_PASS'"
# psql -U postgres -c "CREATE DATABASE $DB_NAME OWNER $DB_USER"

#!/bin/bash
echo "$POSTGRES_USER"  "$POSTGRES_DB"

set -e



psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER docker;
    CREATE DATABASE docker;
    GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
EOSQL
