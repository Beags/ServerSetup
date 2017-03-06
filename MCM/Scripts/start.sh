while true
do
java -Xms2g -Xmx2g -jar server.jar
echo "Restarting in 5 seconds."
sleep 5
echo "Restarting!"
done
