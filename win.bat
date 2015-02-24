echo "Please wait..."
putty -ssh root@%1 -m win.cmd
pscp -r "%3/bin/"* "root@%1:/kovan/bin/%2" 
echo "done!"
