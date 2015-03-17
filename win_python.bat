@echo rm -Rf /kovan/bin/%2 /kovan/archives/%2 > win.cmd
@echo cd /tmp >> win.cmd
@echo touch empty.kam >> win.cmd
@echo kissarchive -c surrogate 1.0.0 empty.kam ^2^> /dev/null >> win.cmd
@echo cd /tmp >> win.cmd
@echo mv ^*.kiss '/kovan/archives/%2' >> win.cmd
@echo mkdir -p '/kovan/bin/%2' >> win.cmd
@echo echo -e '#!/bin/bash\npython $(dirname $0)/main.py' ^> /kovan/bin/%2/%2 >> win.cmd
@echo chmod +x /kovan/bin/%2/%2 >> win.cmd
@putty -ssh root@%1 -m win.cmd
@pscp -r "%3\src\*.py" "root@%1:/kovan/bin/%2"
