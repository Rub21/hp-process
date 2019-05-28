# !/usr/bin/env bash
echo "folder,numRight,numLeft,numDownsized,s3LeftFiles,s3RightFiles,s3DownsizedFiles"
while read folder ; do
    numRight=$(find ${folder}/right/ -type f -name '*.jpg' | wc -l)
    numLeft=$(find ${folder}/left/ -type f -name '*.jpg' | wc -l)

    if (( numRight > 1200 )); then
       echo "img" > $folder.csv
       ls $folder -lh | awk '{print $9}' >> $folder.csv
        
    fi
    # if (( numRight > 1000 )); then
        
    # fi
done < lima.txt
