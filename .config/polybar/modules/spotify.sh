#!/usr/bin/env sh
ARTIST=$(playerctl metadata xesam:artist | sed 's/\b\(.\)/\u\1/g')
TITLE=$(playerctl metadata xesam:title | sed 's/\b\(.\)/\u\1/g')
STATUS=$(playerctl status)

if [ "$STATUS" == "Playing" ]
then
	echo "$ARTIST - $TITLE"
else
	echo "$ARTIST - $TITLE - $STATUS"
fi
