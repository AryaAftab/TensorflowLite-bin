#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1dbvHkCRHheJr2FiKb73yg0iaJwrX94Ff" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1dbvHkCRHheJr2FiKb73yg0iaJwrX94Ff" -o tflite_runtime-2.5.0rc0-cp38-none-linux_armv7l.whl

echo Download finished.
