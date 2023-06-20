killall -q volctl
while pgrep -u $UID -x volctl >/dev/null; do sleep; done
volctl &
