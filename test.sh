#!/bin/bash

while read line
do
    have_frame=`echo ${line#*_Frame_} | awk -F_ '{if ($1 ~ /[0-9]+/) print $1}'`
    have_fps=`echo ${line#*_Frame_} | grep FPS`
    echo have_fps:$have_fps
    echo have_frame:$have_frame
done < testfile
