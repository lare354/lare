#!/bin/sh

if [ -z "$1" ]; then
  volume=$(pacmd list-sources | grep "\* index:" -A 7 | grep "volume" | awk -F/ '{print $2}')
  mute=$(pacmd list-sources | grep "\* index:" -A 11 | grep "muted")
else
  volume=$(pacmd list-sources | grep "$1" -A 6 | grep "volume" | awk -F/ '{print $2}')
  mute=$(pacmd list-sources | grep "$1" -A 11 | grep "muted" )
fi

if [ -z "$volume" ]; then
  echo "No Mic Found"
else
  volume="${volume//[[:blank:]]/}" 
  if [[ "$mute" == *"yes"* ]]; then
    echo "muted"
  elif [[ "$mute" == *"no"* ]]; then
        if [[ "$volume" == 0% ]]; then
	    echo " muted"
	else
	    echo "$volume"
  fi
  else
    echo "$volume !"
  fi
fi
