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
		
		Form:C1466.filterUrlActive:=1
		ARRAY TEXT:C222($filters; 0)
		ARRAY BOOLEAN:C223($AllowDeny; 0)
		APPEND TO ARRAY:C911($filters; "*")  // Select all
		APPEND TO ARRAY:C911($AllowDeny; False:C215)  // Deny all
		APPEND TO ARRAY:C911($filters; "https://livedoc.4d.com.com*")  // Select livedoc.4d.com
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "https://blog.4d.com.com*")  // Select blog.4d.com
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "https://forum.4d.com.com*")  // Select forum.4d.com
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "https://developer.4d.com.com*")  // developer blog.4d.com
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*github.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*www.grapecity.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*4d.1045681.n5.nabble.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*www.4dtoday.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*kb.4d.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*4dmethod.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*ch-de.4d.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "*google.com*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		APPEND TO ARRAY:C911($filters; "file:///*")
		APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		
		WA SET URL FILTERS:C1030(*; "oWaArea1"; $filters; $AllowDeny)
		
		WA OPEN URL:C1020(*; "oWaArea1"; "about:blank")  // prevent from adopting previous wa-session as start-default
		
		OBJECT SET TITLE:C194(*; "oBtnChooseFormPage"; "WaEvents4d")  // form page 1
		
		Form:C1466.lastWaEvents:=""
		
	: (Form event code:C388=On Unload:K2:2)
		WA OPEN URL:C1020(*; "oWaArea1"; "about:blank")  // prevent from adopting previous wa-session as start-default
		
End case 

// - EOF -