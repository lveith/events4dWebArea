// OM: "events4dWebArea".oBtnHistoryForwardWaEvents4d

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If (WA Forward URL available:C1027(*; "oWaArea1"))
			WA OPEN FORWARD URL:C1022(*; "oWaArea1")
		Else 
			BEEP:C151  // no history Forward url available
		End if 
		
End case 

// - EOF -