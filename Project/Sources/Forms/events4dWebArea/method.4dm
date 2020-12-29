// FM: "events4dWebArea"

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.currUrlWaEvents4d:=""
		Form:C1466.currPageTitleWaEvents4d:=""
		Form:C1466.colPageContWaEvents4d:=New collection:C1472
		Form:C1466.searchValueWaEvents4d:=""
		Form:C1466.searchTitleWaEvents4d:=""
		Form:C1466.progressWaWaEvents4d:=0
		
		// WA SET URL FILTERS
		// WA SET EXTERNAL LINKS FILTERS
		
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable contextual menu:K62:6; True:C214)
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable JavaScript:K62:4; True:C214)
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable plugins:K62:5; True:C214)
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable Web inspector:K62:7; True:C214)
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable URL drop:K62:8; True:C214)
		WA SET PREFERENCE:C1041(*; "oWaArea1"; WA enable Java applets:K62:3; True:C214)
		
		WA OPEN URL:C1020(*; "oWaArea1"; "about:blank")  // prevent from adopting previous wa-session as start-default
		
		OBJECT SET TITLE:C194(*; "oBtnChooseFormPage"; "WaEvents4d")  // form page 1
		
		Form:C1466.lastWaEvents:=""
		
	: (Form event code:C388=On Unload:K2:2)
		WA OPEN URL:C1020(*; "oWaArea1"; "about:blank")  // prevent from adopting previous wa-session as start-default
		
End case 

// - EOF -