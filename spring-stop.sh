echo "SPRINGBOOT STOP"
SPRINGBOOT="stswebjpa-0.0.1-SNAPSHOT.jar"
PID=$(pgrep -f "$SPRINGBOOT")
sudo kill -9 $PID
