#!/bin/bash
base_dir=log
log_name=run
splitLogDir=$(date +%Y%m%d) 
echo $base_dir/$log_name.$splitLogDir 
mkdir -p $base_dir/$log_name.$splitLogDir 

splitLogFile=$(date +%Y%m%d%H%M) 
echo $base_dir/$log_name.$splitLogDir/$log_name.$splitLogFile
cp run.log $base_dir/$log_name.$splitLogDir/$log_name.$splitLogFile
: > run.log
