#!/bin/sh

for FILE in *.wav
do
		FILENAME=`echo ${FILE} | sed 's/\.[^\.]*$//'`
		ffmpeg -i ${FILENAME}.wav -vn -ac 2 -ar 44100 -ab 255k -acodec libmp3lame -f mp3 ${FILENAME}.mp3
done

`mkdir Outputs`

for MP in *.mp3
do
		`mv ${MP} Outputs`
done
		
