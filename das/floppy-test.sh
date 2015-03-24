#!/bin/bash
function play_sound() {
	for i in {0..5}; do echo -e \\\a;sleep 0.2s; done
}
for COUNT in {0..5};
do
	if ! chkfd.sh; then
	   play_sound;
	   echo FAILURE;
	   exit 2;
	fi;
done
beep -f 400 -l 1000 ; beep -f 1500 -l 133
echo SUCCESS;
	
