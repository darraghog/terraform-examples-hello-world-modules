#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World - this is the ${environment_name} environment!</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

#nohup python3 -m http.server "${server_port}" &
nohup busybox httpd -f -p "${server_port}" &

