#!/bin/sh
if [ ! -f UUID ]; then
  UUID="202064ca-ad8c-4a98-b424-621a50e88bfe"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

