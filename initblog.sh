#!/bin/bash
printf "Template Mokk GitHub repository: "
read blogmokk
printf "Basing blog off of https://github.com/${blogmokk}\n"
mkdir ./blog
cd ./blog
git clone --depth 1 https://github.com/Dirout/mokk-template.git --quiet
git clone --depth 1 https://github.com/${blogmokk}.git --quiet
cd ../
if [ -f "./blog/setup.sh" ]; then
    chmod +x ./blog/setup.sh && ./blog/setup.sh
fi
