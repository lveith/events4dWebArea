// OM: "events4dWebArea".oBtnChooseFormPage

C_TEXT:C284($vtItems)
C_LONGINT:C283($vlUserChoice)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		$vlUserChoice:=0
		$vtItems:=""
		$vtItems:=$vtItems+"WaEvents4d"+";"
		$vlUserChoice:=Pop up menu:C542($vtItems)
		If ($vlUserChoice>0)
			FORM GOTO PAGE:C247($vlUserChoice)
			OBJECT SET TITLE:C194(*; "oBtnChooseFormPage"; Split string:C1554($vtItems; ";")[$vlUserChoice-1])
		End if 
		
End case 

// - EOF -