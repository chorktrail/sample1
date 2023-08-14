#  コメントだよ～　　　途中改行は'`'を使うこと！

#  結合してfullpath name として渡すとうまくいかんので、フルパスとファイル名で別でbatchから渡してくるとうまくいく？
#   param($fullpath)
param($valpath, $valname)


#    Write-Host $fullpath

#  下記でデバッグしてみると、これでも先頭に１文字半角スペースが入っているような
# Write-Host "["$valpath"]"
# Write-Host "["$valname"]"


$i=0; Get-Content $valpath$valname  `
        -ReadCount 1000000  `
         | % {$_ | Out-File $valpath"outfile_$i.txt" -Encoding UTF8 -Append; $i++}

