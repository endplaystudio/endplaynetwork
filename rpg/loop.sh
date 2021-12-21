#!/bin/sh
cd /home/supermine/rpg-magma
while true
do
        /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.275.b01-0.el7_9.x86_64/jre/bin/java -server -Xmx5000M -jar /home/supermine/rpg-magma/magma-rpg.jar
        echo "Для полной остановки сервера сейчас пожалуйста, нажмите Ctrl+C до конца отсчёта!"
        echo "Перезагрузка через:"
        for i in 5 4 3 2 1
        do
                echo "$i..."
                sleep 1
        done
        echo "Перезагружаемся!"
done
