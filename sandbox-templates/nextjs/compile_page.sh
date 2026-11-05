#!/bin/bash

# This script runs during building the sandbox template
# and makes sure the Next.js app is (1) running and (2) the `/` page is compiled
function ping_server() {
	dumped=0
	response=$(curl -s -o /tmp/home.html -w "%{http_code}" "http://localhost:3000" || echo "000")
	while [[ ${response} -ne 200 ]]; do
	  if [[ $dumped -eq 0 && "$response" != "000" && -s /tmp/home.html ]]; then
	    echo "Homepage returned ${response}"
	    head -c 3000 /tmp/home.html
	    echo
	    dumped=1
	  fi
	  echo "Waiting for server to start..."
	  sleep 1
	  response=$(curl -s -o /tmp/home.html -w "%{http_code}" "http://localhost:3000" || echo "000")
	done
}

ping_server &
cd /home/user && npx next dev
