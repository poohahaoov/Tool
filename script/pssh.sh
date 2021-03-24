#!/bin/bash
COMMAND=$2
for NODE in `cat $1`
do
echo "##### ssh $NODE $COMMAND #####"
ssh -o ConnectTimeout=5 $NODE $COMMAND
done
