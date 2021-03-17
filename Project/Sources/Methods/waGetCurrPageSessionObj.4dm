//%attributes = {}
// PM: "waGetCurrPageSessionObj"

C_OBJECT:C1216($obj; $0)
C_COLLECTION:C1488($col)

If (Form:C1466.currPageSessionId>0)
	$col:=Form:C1466.colPageContWaEvents4dALL.query("id = :1"; Form:C1466.currPageSessionId)
	If ($col.length>0)
		$obj:=$col[0]
	End if 
End if 

If ($obj=Null:C1517)
	Form:C1466.currPageSessionId:=Form:C1466.colPageContWaEvents4d.length+1
	$obj:=New object:C1471
	$obj.id:=Form:C1466.currPageSessionId
	$obj.time:=String:C10(Current time:C178; HH MM SS:K7:1)
	$obj.pageTitle:=Form:C1466.currPageTitle
	$obj.currUrl:=$newUrl
	$obj.items:=New collection:C1472
	Form:C1466.colPageContWaEvents4dALL.push($obj)
End if 

$0:=$obj

// - EOF -