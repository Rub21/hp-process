# !/usr/bin/env bash
set -e
while read folder ; do
    mkdir -p $folder
    mkdir -p $folder/left
    mkdir -p $folder/right
    echo aws s3 sync s3://wbg-geography01/GEP/DRONE/LIMA/$folder/ $folder/left/ --exclude '*' --include '*3.jpg'
    echo aws s3 sync s3://wbg-geography01/GEP/DRONE/LIMA/$folder/ $folder/right/ --exclude '*' --include '*1.jpg'
done < lima.txt