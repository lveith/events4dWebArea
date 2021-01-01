//%attributes = {}
// PM: "getBgColorWaEvents4d"
// getBgColorWaEvents4d(This.lastErrCode)

C_TEXT:C284($bgColor; $0)
C_LONGINT:C283($lastErrCode; $1)

If (Count parameters:C259>0)
	$lastErrCode:=$1
End if 

$bgColor:=Choose:C955($lastErrCode>=400; "#FFDDDD"; "white")

$0:=$bgColor

// - EOF -