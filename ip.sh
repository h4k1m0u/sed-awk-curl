#!/bin/bash
# by h4k1m
# Get public ip address from whatismyipaddress.com

ip=`
    curl -s --user-agent '' http://whatismyipaddress.com | 
    awk -F"\n" '/Your IP Address Is:/,0 {print $0}' | 
    head |
    sed -e 's/<div.*>//' -e 's!</div>!!' -e 's!<.*>!!' -e 's!&#46;!.!g'
`;

echo "Your public ip address is:";
echo $ip;
