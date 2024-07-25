#!/bin/bash
# [ zrfisaac ]

# [ about ]
# - author : Isaac Caires
# . - email : zrfisaac@gmail.com
# . - site : zrfisaac.github.io

# [ shell ]
# - : docker login

# [ bash ]
command -v sudo >/dev/null 2>&1 && sudo="sudo" || sudo=""
$sudo docker build -t xrdp-ubuntu .
$sudo docker tag xrdp-ubuntu zrfisaac/xrdp-ubuntu:latest
$sudo docker login
$sudo docker push zrfisaac/xrdp-ubuntu:latest
