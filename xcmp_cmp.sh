#!/bin/bash
echo '========================'
echo 'xcmp compression v.0.1.2'
echo '========================'
echo -n 圧縮するファイル: 
read cmp_file
echo -n ファイル名: 
read filename
mksquashfs $cmp_file ${filename}.xcmp