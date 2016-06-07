#!/bin/bash


 netstat -t -p -n | tr ":" " " | awk ' /^tcp/ { print $1"\t\t"$4"\t"$5"\t"$6"\t"$8}' |
sort | uniq -c | awk 'BEGIN  {printf ( "%8s%15s%30s%12s%30s%35s\n","Cantidad", "Protocolo", "IPLocal", "Puerto", "IPRemota", "Estado") }; {printf("%8s%15s%30s%12s%30s%35s\n",$1,$2,$3,$4,$5,$6)}'
