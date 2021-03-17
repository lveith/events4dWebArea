
Case of 
	: (Form event code:C388=On Clicked:K2:4)
		Form:C1466.colPageContWaEvents4dALL:=New collection:C1472
		Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4dALL
		GOTO OBJECT:C206(*; "oColPageContWaEvents4dG")  // refresh first+second listbox
		// LISTBOX SORT COLUMNS(*; "oColPageContWaEvents4dG"; 1; >)  // refresh first listbox
		// LISTBOX SORT COLUMNS(*; "oColPageContWaEvents4d"; 1; >)  // refresh second listbox
End case 
