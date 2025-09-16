

echo "SPRINGBOOT RESTART"
SPRING_PID=$(pgrep -f stswebjpa-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/mistya16/stswebjpa/target/stswebjpa-0.0.1-SNAPSHOT.jar"

echo $SPRING_PID
echo $SPRING_PATH

if [ -z "$SPRING_PID" ]; then
  echo "스프링 종료된상태" 
  echo "스프링 재시작 - $(date)"
  echo "kn97su97" | nohup sudo -S java -jar $SPRING_PATH 1> /home/mistya16/stswebjpa/logout > logfile 2>&1 &
else  
  echo "스프링 실행된상태"
fi