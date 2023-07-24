#!/bin/bash
curl -w "@curl-format.txt" -o /dev/null -s "$1"
read -r time_namelookup time_connect time_appconnect time_starttransfer<<<$(curl -kso /dev/null -w "%{time_namelookup} %{time_connect} %{time_appconnect} %{time_starttransfer}" $1)
echo $time_connect