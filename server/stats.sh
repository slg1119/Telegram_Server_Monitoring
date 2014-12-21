#!/bin/sh

TotalMem=`free -g | grep Mem | awk '{print $2}'`
FreeMem=`free -g | grep Mem | awk '{print $3}'`
UsedMem=`free -g | grep Mem | awk '{print $4}'`
UsedPer=`free | grep Mem | awk '{print $3/$2 * 100.0}'`
ProcessCnt=`ps -A | wc -l`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
echo '---Memory---'
echo 'TotalMem : '"$TotalMem"
echo 'FreeMem : '"$FreeMem"
echo 'UsedMem : '"$UsedMem"
echo 'Memory Usage : '"$UsedPer"'%'
echo 'Processes : '"$ProcessCnt"
echo '---CPU---'
echo 'CPU Usage : '"$CPUPer"'%'
