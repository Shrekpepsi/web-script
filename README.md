# web-script
A general bash script to find response time for any web url/endpoint as per proper format.

# important note to remember

1-Need to add input from txt file so add all the url/endpoints of websites u need in a txt file(urlhits.txt).

2-Using the following command in linux shell first to remove carriage to prevent error:

      tr -d '\r' < urlhits.txt  > urlresponse.txt
