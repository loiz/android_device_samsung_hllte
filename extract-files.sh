#!/bin/bash

VENDOR=samsung
<<<<<<< HEAD
DEVICE=ha3g
=======
DEVICE=hllte
>>>>>>> 83045a4dc80246260fdb640c38e4d5af227fe126

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
    OLDIFS=$IFS IFS=":" PARSING_ARRAY=($FILE) IFS=$OLDIFS
    FILE=${PARSING_ARRAY[0]}
    DEST=${PARSING_ARRAY[1]}
    if [ -z $DEST ]
    then
        DEST=$FILE
    fi
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$DEST
    # if file does not exist try destination
    if [ "$?" != "0" ]
    then
        adb pull /system/$DEST $BASE/$DEST
    fi
done

./setup-makefiles.sh
