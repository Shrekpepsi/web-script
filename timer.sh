#!/bin/bash

#http://localhost:8084/hello

# tr -d '\r' < urlhits.txt  > urlresponse.t // remove carriage command

#curl -o /dev/null -s -w 'Total: %{time_total}s\n'>output.txt

#!/bin/bash

while read line;
do
    echo "EndPoint :  " $line >> response.txt
    startTime=$(date +"%T.%6N")
    responseTime=$(curl -o /dev/null -s -w '%{time_total}\n' "$line");
    endTime=$(date -d "$startTime + $responseTime seconds" +'%H:%M:%S.%6N')
    echo "Start Time  :  $startTime     End Time  :  $endTime     Response Time  :  $responseTime sec ">> response.txt
    echo $responseTime
done < url.txt







 

   








