C_COLLECTION:C1488($col)
C_TEXT:C284($menuItems)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		$col:=New collection:C1472
		$col.push("https://livedoc.4d.com/Error/4Dv18R5.999-14966.en.html?revision=5064400")
		$col.push("https://livedoc.4d.com/OK/4Dv18R5.999-884.en.html?revision=5064400")
		$col.push("https://livedoc.4d.com/Document/4Dv18R5.999-888.en.html?revision=5064400")
		$col.push("https://livedoc.4d.com/LockedSet/4Dv18R5.999-889.en.html?revision=5064400")
		$col.push("https://livedoc.4d.com/Current-record/4Dv18R5.999-886.en.html?revision=5064400")
		$col.push("https://blog.4d.com/")
		$col.push("https://forums.4d.com/MyHome/DE")
		$col.push("https://developer.4d.com/")
		$col.push("https://doc.4d.com/4Dv18/index.de.html")
		$col.push("https://github.com/4d")
		$col.push("https://github.com/4D-JP")
		$col.push("https://github.com/miyako")
		$col.push("https://github.com/ThomasMaul")
		$col.push("https://github.com/vdelachaux")
		$col.push("https://github.com/mesopelagique")
		$col.push("https://github.com/rlaveaux")
		$col.push("https://github.com/KirkBrooks")
		$col.push("https://github.com/AMorgaut")
		$col.push("https://github.com/4dgeek")
		$col.push("https://highlightjs.org/static/demo/")
		$col.push("https://github.com/metodika/node-4d")
		$col.push("https://github.com/4dgeek/4d-component-jsonEditor")
		$col.push("https://github.com/josdejong/jsoneditor")
		$col.push("https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet")
		$col.push("https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md")
		$col.push("https://www.grapecity.com/demos/spread/JS/WebDesigner/content/index.html")
		$col.push("http://4d.1045681.n5.nabble.com")
		$col.push("http://www.4dtoday.com/reference")
		$col.push("https://kb.4d.com")
		$col.push("https://4dmethod.com")
		$col.push("https://ch-de.4d.com")
		$col.push("https://google.com")
		
		$menuItems:=$col.join(";")
		$menuItems:=Char:C90(1)+Replace string:C233($menuItems; ";"; Char:C90(1))
		
		$chooseItemPos:=Pop up menu:C542($menuItems)
		
		If (($chooseItemPos>0) & ($chooseItemPos<=$col.length))
			Form:C1466.colPageContWaEvents4d:=New collection:C1472
			Form:C1466.currUrlWaEvents4d:=$col[$chooseItemPos-1]
			WA OPEN URL:C1020(*; "oWaArea1"; $col[$chooseItemPos-1])
		End if 
		
End case 
