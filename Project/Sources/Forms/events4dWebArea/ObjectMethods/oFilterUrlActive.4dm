
Case of 
	: (Form event code:C388=On Clicked:K2:4)
		ARRAY TEXT:C222($filters; 0)
		ARRAY BOOLEAN:C223($AllowDeny; 0)
		If (Form:C1466.filterUrlActive=1)
			APPEND TO ARRAY:C911($filters; "*")  // Select all
			APPEND TO ARRAY:C911($AllowDeny; False:C215)  // Deny all
			APPEND TO ARRAY:C911($filters; "*4d.com.com*")  // Select livedoc.4d.com
			APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
			APPEND TO ARRAY:C911($filters; "*github.com*")
			APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
			APPEND TO ARRAY:C911($filters; "*grapecity.com*")
			APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
			APPEND TO ARRAY:C911($filters; "*4d.1045681.n5.nabble.com*")
			APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
			APPEND TO ARRAY:C911($filters; "*4dtoday.com*")
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
			APPEND TO ARRAY:C911($filters; "about:blank")
			APPEND TO ARRAY:C911($AllowDeny; True:C214)  // Allow
		End if 
		WA SET URL FILTERS:C1030(*; "oWaArea1"; $filters; $AllowDeny)
		
		
End case 
