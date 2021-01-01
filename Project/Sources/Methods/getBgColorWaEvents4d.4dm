//%attributes = {}
// PM: "getBgColorWaEvents4d"
// getBgColorWaEvents4d(This.lastErrCode; This.evCode)

C_TEXT:C284($bgColor; $0)
C_LONGINT:C283($lastErrCode; $1)
C_LONGINT:C283($eventCode; $2)

If (Count parameters:C259>0)
	$lastErrCode:=$1
	If (Count parameters:C259>0)
		$eventCode:=$2
	End if 
End if 


Case of 
	: ($lastErrCode>=400)
		$bgColor:="#FFDDDD"
		
	: ($lastErrCode#0)
		$bgColor:="#FFEEEE"
		
	: ($eventCode=On Window Opening Denied:K2:51)
		$bgColor:="#FFDDFF"
		
	: ($eventCode=On URL Filtering:K2:49)
		$bgColor:="#CCAAFF"
		
	Else 
		$bgColor:="white"
		
End case 

$0:=$bgColor

// - EOF -