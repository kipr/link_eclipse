rm -Rf /kovan/bin/LinkTest /kovan/archives/LinkTest 
cd /tmp 
touch empty.kam 
kissarchive -c surrogate 1.0.0 empty.kam 2> /dev/null 
cd /tmp 
mv *.kiss '/kovan/archives/LinkTest' 
mkdir -p '/kovan/bin/LinkTest' 
echo -e '#!/bin/bash\njava -cp /usr/lib/libkovan.jar:$(dirname $0) Main' > /kovan/bin/LinkTest/LinkTest 
chmod +x /kovan/bin/LinkTest/LinkTest 
