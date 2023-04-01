#!/bin/bash

url="http://google.com:80/jjf"

response=$(curl -w %{response_code} -s -o /dev/null $url)

#2xx or 3xx
re="^[23]\d{2}$"

if [[ ! "$response" =~ $re ]]; then
  echo "$(date) - $url returned $response" >> /app/myapp.log
fi