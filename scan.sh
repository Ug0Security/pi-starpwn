cat "iplist" | while read line
do
echo $line
torify timeout 5 curl -sk -u pi-star:raspberry $line/admin/admin.php | grep "Service Status"
echo ""
echo "" 
done
