# !/usr/bin/env bash
set -x
mkdir -p downsized
inputFolder=$1
outputFolder=${1}downsized
mkdir -p $outputFolder
for pathImagen in $inputFolder* ; do
    imagen=${pathImagen##*/}
    if [ ${imagen: -4} == ".jpg" ]
    then
        ffmpeg -i $pathImagen -vf scale=512:512 $outputFolder/$imagen
    fi
done