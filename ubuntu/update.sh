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
$sudo docker build -t ubuntu .
$sudo docker tag ubuntu zrfisaac/ubuntu:latest
$sudo docker login
$sudo docker push zrfisaac/ubuntu:latest
