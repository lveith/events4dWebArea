// OM: "events4dWebArea".oBtnHistoryBackWaEvents4d

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If (WA Back URL available:C1026(*; "oWaArea1"))
			waLoadNewUrl("##HISTORY##")
			WA OPEN BACK URL:C1021(*; "oWaArea1")
		Else 
			BEEP:C151  // no history back url available
		End if 
		
End case 

// - EOF -