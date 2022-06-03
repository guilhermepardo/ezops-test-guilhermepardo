#!/bin/bash
echo "Stopping any existing node servers"

# FILE = /var/www/html/index.html
# if [ -f "$FILE" ]; then
#     rm -rf /var/www/html/index.html 
# fi

pkill node
