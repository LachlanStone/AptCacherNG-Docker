#!/bin/bash
# chkconfig: 2345 20 80
# description: Description comes here....
   
start() {
   exec start-stop-daemon --start --exec $(/root/.local/bin/yacron -c /etc/apt-cacher-ng/yacron-jobs.yml) -m --background >> dev/null & disown 
}
   
stop(){
   exec start-stop-daemon --stop --exec $(/root/.local/bin/yacron -c /etc/apt-cacher-ng/yacron-jobs.yml) -m --background >> dev/null & disown 
}


case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       # code to check status of app comes here 
       # example: status program_name
       ;;
    *)
       echo "Usage: $0 {start|stop|status|restart}"
esac
   
exit 0 