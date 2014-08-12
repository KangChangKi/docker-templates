source /.bashrc
RES=$(/usr/local/spark/sbin/start-master.sh)
echo $RES | awk '{{ print $5; }}' | xargs tail -f
