// OM: "events4dWebArea".oBtnTrace
// Only Trace and later here may be some code-examples to debug


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		TRACE:C157
		Case of 
			: (False:C215)
				ARRAY TEXT:C222($filters; 0)
				ARRAY BOOLEAN:C223($AllowDeny; 0)
				WA GET URL FILTERS:C1031(*; "oWaArea1"; $filters; $AllowDeny)
				
			: (False:C215)
				Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4d.query("evCode = 47")
				
			: (False:C215)
				LISTBOX SELECT ROWS:C1715(*; "oColPageContWaEvents4dG"; New collection:C1472(Form:C1466.colPageContWaEvents4d[0]); lk replace selection:K53:1)
				ALERT:C41(String:C10(Form:C1466.pageContWaEvents4dCurrEl.id))
				Form:C1466.colPageContWaEvents4d:=Form:C1466.colPageContWaEvents4d  // refresh/redraw lisbox collection
				Form:C1466.pageContWaEvents4dCurrSel:=Form:C1466.pageContWaEvents4dCurrSel
				
				// Form.pageContWaEvents4dCurrEl
				// Form.pageContWaEvents4dCurrPos
				// Form.pageContWaEvents4dCurrSel
				
			: (False:C215)  // step in here if you like
				// ...insert your own debug examples
				
		End case 
		
	: (Form event code:C388=On Long Click:K2:37)
		// ...maybe a "Pop up menu" or other stuffs
		
End case 

// - EOF -
