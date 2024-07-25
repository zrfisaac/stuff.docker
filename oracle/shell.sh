#!/bin/bash
command -v sudo >/dev/null 2>&1 && sudo="sudo" || sudo=""
$sudo docker exec -it oracle bash
