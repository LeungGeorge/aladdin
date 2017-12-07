#!/bin/bash

exeTime=$(date +%Y%m%d%H%M%S)
echo $exeTime

exec ./pp pullmaster
