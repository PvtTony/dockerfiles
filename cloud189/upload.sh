#!/bin/bash
/usr/bin/expect -f /config.sh
find /records -type f -name '*' -exec /app/cloud189/main.py upload {} \;
