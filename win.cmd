rm -Rf /kovan/bin/%2 /kovan/archives/%2
cd /tmp && touch empty.kam && kissarchive -c surrogate 1.0.0 empty.kam 2> /dev/null
cd /tmp && mv *.kiss '/kovan/archives/%2' && mkdir -p '/kovan/bin/%2'
echo -e '#!/bin/bash\njava -cp /usr/lib/libkovan.jar:\$(dirname \$0) Main' > /kovan/bin/%2/%2 && chmod +x /kovan/bin/%2/%2