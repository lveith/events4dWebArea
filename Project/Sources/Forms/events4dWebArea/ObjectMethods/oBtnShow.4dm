
C_TEXT:C284($vtItems)
C_LONGINT:C283($vlUserChoice)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		$vlUserChoice:=0
		$vtItems:=""
		$vtItems:=$vtItems+"ALL"+";"
		$vtItems:=$vtItems+"Issues"+";"
		$vlUserChoice:=Pop up menu:C542($vtItems)
		Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4dALL
		If ($vlUserChoice=2)
			Form:C1466.pageContWaEvents4dCurrEl.items:=Form:C1466.pageContWaEvents4dCurrEl.items.query("lastErrCode # 0 OR lastFilterUrl # ''")
		End if 
		
End case 