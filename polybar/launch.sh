##!/usr/bin/env bash

## Terminate already running bar instances
#killall -q polybar
## If all your bars have ipc enabled, you can also use 
## polybar-msg cmd quit

## Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar bar1 >>/tmp/polybar1.log 2>&1 & disown
#polybar main >>/tmp/polybar2.log 2>&1 & disown

#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload example &
fi

echo "Polybar launched..."
