#!/bin/sh

cat <<EOF > /usr/share/nginx/html/config.js
window.__CONFIG__ = {
  API_BASE: "${API_BASE}"
};
EOF

exec "$@"