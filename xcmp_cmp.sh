#!/usr/bin/env bash

set -e

cmp_file=$(zenity --file-selection --directory --title "圧縮するディレクトリを選んで下さい")
filedir=$(zenity --file-selection --directory --title "圧縮後ファイルを置くディレクトリを選んで下さい")
filename=$(zenity --entry --title "xcmp" --text "圧縮後のファイル名")
zenity --progress --text "お待ちください..." --pulsate & mksquashfs $cmp_file ${filedir}/${filename}.xcmp  
zenity --notification --text "処理が終わりました。"
zenity --info --title "done" --text "処理が完了しました"
exit 
