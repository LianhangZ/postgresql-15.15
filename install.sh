./configure --prefix=$HOME/pgsql

make
make install

initdb # E: No such file


set -e

# PGDATA="/path/to/your/pgdata"
CONF="$PGDATA/postgresql.conf"

cp "$CONF" "$CONF.bak"

sed -i '' \
  -e "s|^#\?listen_addresses *=.*|listen_addresses = ''|" \
  -e "s|^#\?max_connections *=.*|max_connections = 10|" \
  -e "s|^#\?unix_socket_directories *=.*|unix_socket_directories = '$PGDATA'|" \
  -e "s|^#\?max_wal_senders *=.*|max_wal_senders = 4|" \
  "$CONF"

echo "Updated $CONF"
