#!/bin/bash

cd ./evie/src/theme
gulp build
cd ../../../
cp ./evie/Evie/css/style.css ./assets/css/evie.css
sed -i "" 's/..\/images/\/images/' ./assets/css/evie.css
