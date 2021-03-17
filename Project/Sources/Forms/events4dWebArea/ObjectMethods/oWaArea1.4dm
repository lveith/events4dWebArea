// OM: "events4dWebArea".oWaArea1

C_TEXT:C284($resultTxt)
C_OBJECT:C1216($obj; $objG)
C_TEXT:C284($url; $description; $lastFilteredUrl)
C_LONGINT:C283($errorCode)

If (Form:C1466.colPageContWaEvents4dALL=Null:C1517)
	Form:C1466.colPageContWaEvents4dALL:=New collection:C1472
	Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4dALL
End if 

// -----------------------------------------

Case of 
	: (Form event code:C388=On Load:K2:1)
	: (Form event code:C388=On Getting Focus:K2:7)
	: (Form event code:C388=On Losing Focus:K2:8)
	: (Form event code:C388=On Unload:K2:2)
		
	: (Form event code:C388=On Begin URL Loading:K2:45)
		Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4d  // refresh/redraw lisbox collection
		
	: (Form event code:C388=On End URL Loading:K2:47)
		Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4d  // refresh/redraw lisbox collection
		
	: (Form event code:C388=On URL Loading Error:K2:48)
		WA GET LAST URL ERROR:C1034(*; "oWaArea1"; $url; $description; $errorCode)
		
	: (Form event code:C388=On URL Filtering:K2:49)
		$lastFilteredUrl:=WA Get last filtered URL:C1035(*; "oWaArea1")
		
	: (Form event code:C388=On Window Opening Denied:K2:51)
		$lastFilteredUrl:=WA Get last filtered URL:C1035(*; "oWaArea1")
		
	: (Form event code:C388=On Open External Link:K2:50)
		$lastFilteredUrl:=WA Get last filtered URL:C1035(*; "oWaArea1")
		
	: (Form event code:C388=On URL Resource Loading:K2:46)
		
End case 

// -----------------------------------------

Case of 
	: (Form event code:C388=On Load:K2:1)
	: (Form event code:C388=On Getting Focus:K2:7)
	: (Form event code:C388=On Losing Focus:K2:8)
	: (Form event code:C388=On Unload:K2:2)
	Else 
		$objG:=waGetCurrPageSessionObj
		
		$obj:=New object:C1471
		$obj.evCode:=FORM Event:C1606.code
		$obj.evDescription:=FORM Event:C1606.description
		$obj.evObjName:=FORM Event:C1606.objectName
		$obj.id:=$objG.items.length+1
		$obj.time:=String:C10(Current time:C178; HH MM SS:K7:1)
		If (($objG.items.length<1) & (Form event code:C388=On URL Resource Loading:K2:46))
			$obj.currUrl:=Form:C1466.currUrlWaEvents4d
			$obj.pageTitle:=""
		Else 
			Form:C1466.currPageTitle:=WA Get page title:C1036(*; "oWaArea1")
			$obj.pageTitle:=Form:C1466.currPageTitle
			$obj.currUrl:=WA Get current URL:C1025(*; "oWaArea1")
		End if 
		$obj.lastFilterUrl:=$lastFilteredUrl
		$obj.lastErrUrl:=$url
		$obj.lastErrDescript:=$description
		$obj.lastErrCode:=$errorCode
		
		$objG.items.push($obj)
		$objG.currUrl:=Form:C1466.currUrlWaEvents4d
		$objG.evObjName:=FORM Event:C1606.objectName
		$objG.pageTitle:=Form:C1466.currPageTitle
		
End case 

// - EOF -