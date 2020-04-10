#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom -b --config ~/.config/jwm/picom.conf
fi
