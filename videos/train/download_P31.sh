#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/EPIC_KITCHENS_2018"
else
    outputPath="$HOME/Downloads/EPIC_KITCHENS_2018"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

epic_download() {
    local url=$1
    local path=$2
    local niceFilePath=$3
    
    echo -ne "# Downloading "$niceFilePath"\t"
    wget --progress=dot --continue --directory-prefix="$path" "$url" 2>&1 | grep --line-buffered "%" | sed -E "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
    echo -ne "\b\b\b\b"
    echo " # done"
}

epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_01.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_01.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_02.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_02.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_03.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_03.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_04.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_04.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_05.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_05.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_06.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_06.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_07.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_07.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_08.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_08.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_09.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_09.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_13.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_13.MP4"
epic_download "https://data.bris.ac.uk/datasets/3h91syskeag572hl6tvuovwv4d/videos/train/P31/P31_14.MP4" "$outputPath/videos/train/P31" "videos/train/P31/P31_14.MP4"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
