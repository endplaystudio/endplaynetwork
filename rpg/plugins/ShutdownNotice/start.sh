#!/bin/sh
while $RELOAD
do
    RELOAD=false
    java -Xmx4096M -Xms1024M -jar spigot-1.8.3.jar -o true
    if [ -f plugins/ShutdownNotice/restart ]; then
        RELOAD=true
        echo "Restarting server in 5 seconds..."
        sleep 5
    fi
done