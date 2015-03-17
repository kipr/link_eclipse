#!/bin/bash
ssh root@$1 "rm -Rf /kovan/bin/$2 /kovan/archives/$2"
ssh root@$1 "cd /tmp && touch empty.kam && kissarchive -c surrogate 1.0.0 empty.kam 2> /dev/null"
ssh root@$1 "cd /tmp && mv *.kiss '/kovan/archives/$2' && mkdir -p '/kovan/bin/$2'"
ssh root@$1 "echo -e '#!/bin/bash\njava -cp /usr/lib/libkovan.jar:\$(dirname \$0) Main' > /kovan/bin/$2/$2 && chmod +x /kovan/bin/$2/$2"
scp -r "$3/bin/"* "root@$1:/kovan/bin/$2" 
