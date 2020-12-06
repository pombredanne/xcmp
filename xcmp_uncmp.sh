#!/usr/bin/env bash

set -e

unzip_file=$(zenity --file-selection --text "解凍するファイルを選んで下さい。")
unzip_dir=$(zenity --file-selection --directory --title "解凍したファイルを置くディレクトリを選んで下さい")
cd $unzip_dir
zenity --progress --text "お待ちください..." --pulsate & sasquatch $unzip_file
zenity --notification --text "処理が終わりました。"
zenity --info --title "done" --text "処理が完了しました"
