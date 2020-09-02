#!/bin/bash
find /records -type f -name '*' -exec /app/cloud189/main.py upload {} \;
