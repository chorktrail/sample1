rem ########################################
rem   使い方：
rem   　①tesxtsplit.ps1  をどこかCドライブとかに置いておく
rem   　②textsplit.bat 中のps1ファイルパスを変更
rem   　③textsplit.bat に テキストファイルをドロップする
rem   　④テキストファイルと同フォルダに分割ファイルができ
rem   
rem   
rem ########################################

@echo off


rem  ## 途中改行は'^'です。


setlocal ENABLEDELAYEDEXPANSION



rem  ## ドロップしたファイル名出力
set valpath= %~dp1
set valname= %~nx1

rem   ## むかつくことに、両方いっぺんに書くとうまくいかない
set fullpath = "(%~dpnx1)"

rem  set fullpath = %valpath%%valname%

rem     echo %fullpath%
rem  echo %valpath%
rem  echo %valname%


rem  ##結合してfullpath name として渡すとうまくいかんので、フルパスとファイル名で別でbatchから渡してくるとうまくいく？
rem   powershell -NoProfile -ExecutionPolicy Bypass   -file "c:\tools\test1.ps1"  !fullpath!
powershell -NoProfile -ExecutionPolicy Bypass   -file "c:\xxxxxxxxxxxxxxxxxx\textsplit.ps1" !valpath! !valname!
