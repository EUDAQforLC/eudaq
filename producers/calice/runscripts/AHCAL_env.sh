#!/bin/bash

#EUDAQ runcontrol server port
export RCPORT=44000
[ "$1" != "" ] && RCPORT=$1

#PC running EUDAQ runcontrol
export HOSTIP=192.168.21.1


export TLUIP=127.0.0.1


#PC runing producer
export HOSTNAME=192.168.21.100

#cd `dirname $0`
#export LD_LIBRARY_PATH="`pwd`/bin:$LD_LIBRARY_PATH"

export EUDAQDIR=$PWD/../../../
export EUDAQBIN=$EUDAQDIR/bin
export CALEUDAQ=$PWD
export DATADIR=$EUDAQDIR/data

#done in the /etc/bashrc file
#check it!
export PATH=$PATH:$EUDAQDIR/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$EUDAQDIR/lib
