// OM: "events4dWebArea".oBtnOpenWebInspector

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		// BUG ? Test on
		// macOv10.15.7(19H114)
		// 4Dv18R5.259994
		// with embeddedEngineActivated
		// crashed 4D!
		TRACE:C157
		WA OPEN WEB INSPECTOR:C1736(*; "oWaArea1")
		
End case 

// - EOF -