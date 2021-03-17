//%attributes = {}
// PM: "waLoadNewUrl"

C_TEXT:C284($newUrl; $1)
C_OBJECT:C1216($obj)

If (Count parameters:C259>0)
	$newUrl:=$1
End if 

If (Form:C1466.colPageContWaEvents4dALL=Null:C1517)
	Form:C1466.colPageContWaEvents4dALL:=New collection:C1472
	Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4dALL
End if 

If (Form:C1466.currPageSessionId=Null:C1517)
	Form:C1466.currPageSessionId:=0
End if 

If ($newUrl#"")
	
	Form:C1466.currPageTitle:=""
	Form:C1466.currPageSessionId:=Form:C1466.colPageContWaEvents4d.length+1
	
	$obj:=New object:C1471
	$obj.id:=Form:C1466.currPageSessionId
	$obj.time:=String:C10(Current time:C178; HH MM SS:K7:1)
	$obj.pageTitle:=Form:C1466.currPageTitle
	$obj.currUrl:=$newUrl
	$obj.items:=New collection:C1472
	Form:C1466.colPageContWaEvents4dALL.push($obj)
	LISTBOX SELECT ROW:C912(*; "oColPageContWaEvents4dG"; Form:C1466.colPageContWaEvents4d.length; lk replace selection:K53:1)
	OBJECT SET SCROLL POSITION:C906(*; "oColPageContWaEvents4dG"; Form:C1466.colPageContWaEvents4d.length; 1)
	If ($newUrl#"##HISTORY##")
		Form:C1466.currUrlWaEvents4d:=$newUrl  // loads url in webArea
	End if 
	
End if 

// - EOF -