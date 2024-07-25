#!/bin/bash
# [ zrfisaac ]

# [ about ]
# - author : Isaac Caires
# . - email : zrfisaac@gmail.com
# . - site : zrfisaac.github.io

# [ bash ]
command -v sudo >/dev/null 2>&1 && sudo="sudo" || sudo=""
$sudo docker run -d -p 1521:1521 --name oracle --network bridge oracle
