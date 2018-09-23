#!/bin/bash
for f in `ls src|grep -P ".*thrift" `
do
    echo $f
    thrift --gen go src/$f
    #thrift -r --gen py $file
done
