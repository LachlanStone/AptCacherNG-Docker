# Start the APT-Cacher-NG Service

# exec start-stop-daemon --start --exec $(yacron -c /etc/apt-cacher-ng/yacron-jobs.yml) --m --background
service apt-cacher-ng start
service yacron.sh start