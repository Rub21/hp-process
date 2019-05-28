# !/usr/bin/env bash
set -e
echo "folder,numRight,numLeft,numDownsized,s3LeftFiles,s3RightFiles,s3DownsizedFiles"
while read folder ; do
    #count from s3   
    echo "image" > $folder.csv
    aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/${folder}/ | awk '{print $4}'  >> $folder.csv
    csvgrep -c 1 -r "Cam3.jpg" $folder.csv > $folder-left.csv
    csvgrep -c 1 -r "Cam1.jpg" $folder.csv > $folder-right.csv
    s3LeftFiles=$(wc -l < ${folder}-left.csv) && ((s3LeftFiles=rows-1))
    s3RightFiles=$(wc -l < ${folder}-right.csv) && ((s3RightFiles=rows-1))

    echo "image" > $folder-downsized.csv
    aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/${folder}/downsized/ | awk '{print $4}'  >> $folder-downsized.csv
    s3DownsizedFiles=$(wc -l < ${folder}-downsized.csv) && ((s3DownsizedFiles=rows-1))

    numRight=$(find ${folder}/right/ -type f -name '*.jpg' | wc -l)
    numLeft=$(find ${folder}/left/ -type f -name '*.jpg' | wc -l)
    numDownsized=$(find ${folder}/downsized/ -type f -name '*.jpg' | wc -l)
    echo $folder,$numRight,$numLeft,$numDownsized,$s3LeftFiles,$s3RightFiles,$s3DownsizedFiles
done < lima.txt
rm *.csv