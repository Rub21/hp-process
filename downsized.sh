# !/usr/bin/env bash
set -e
declare -a sides=('right' 'left')
# Main folder
while read folder ; do
    mkdir -p $folder/downsized
    for side in ${sides[*]} ; do
        echo $folder/$side
        if [ -d $folder/$side ]
        then
            for pathImagen in $folder/$side/* ; do
                imagen=${pathImagen##*/}
                if [ ${imagen: -4} == ".jpg" ]
                then
                    ffmpeg -i $pathImagen -vf scale=512:512 $folder/downsized/$imagen
                fi
            done
        else
            echo "Error: Directory $folder/$side does not exists."
        fi
    done
    aws s3 sync $folder/downsized/ s3://wbg-geography01/GEP/DRONE/LIMA/$folder/downsized/
done < lima.txt