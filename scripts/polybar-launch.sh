#!/usr/bin/env bash
 
# Terminate already running bar instances
killall -q polybar
 
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
 
# Launch bar1 and bar2
bar1=example
bar2=example2
bar3=example3
echo "---" | tee -a /tmp/$bar1.log /tmp/$bar2.log
 
MONITOR="DVI-D-0" polybar --reload $bar1 -c ~/.config/polybar/config >>/tmp/$bar1.log 2>&1 &
MONITOR="HDMI-0" polybar --reload $bar3 -c ~/.config/polybar/config >>/tmp/$bar3.log 2>&1 &
 
externo=$(xrandr --query | grep "HDMI1")
if [[ ! $externo = *disconnected* ]]; then
  MONITOR="DP-0" polybar --reload $bar2 -c ~/.config/polybar/config >>/tmp/$bar2.log 2>&1 &
fi
 
echo "Bars launched..."

dunst
[ -f "/usr/bin/openrgb" ] && /usr/bin/openrgb -p pink.orp
