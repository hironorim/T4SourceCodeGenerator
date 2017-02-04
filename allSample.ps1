Set-Item Env:Path (Get-ChildItem "C:\Program Files (x86)\Common Files\Microsoft Shared\TextTemplating" | Select-Object -Last 1).FullName

TextTransform.exe sample1.tt -o sample1.sql -a !!DataFile!sample1.csv
TextTransform.exe sample2.tt -o sample2.txt -a !!name!Ichiro
TextTransform.exe sample3.tt -o sample3.html -a !!JsonFile!sample3.json
