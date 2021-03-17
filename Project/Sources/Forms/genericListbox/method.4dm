C_COLLECTION:C1488($colKeys)
C_POINTER:C301($nilPtr)
C_LONGINT:C283($valTyp)
C_TEXT:C284($key; $columnFormulaTxt)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Case of 
			: (Value type:C1509(Form:C1466.colGenericLB)#Is collection:K8:32)
				Form:C1466.colGenericLB:=New collection:C1472
				
			: (Form:C1466.colGenericLB.length<1)
				
			Else 
				$colKeys:=OB Keys:C1719(Form:C1466.colGenericLB[0])
				For each ($key; $colKeys)
					$valTyp:=Value type:C1509(Form:C1466.colGenericLB[0][$key])
					Case of 
						: ($valTyp=Is text:K8:3)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is real:K8:4)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is boolean:K8:9)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is date:K8:7)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is time:K8:8)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is picture:K8:10)
							$columnFormulaTxt:="This."+$key
						: ($valTyp=Is object:K8:27)
							$columnFormulaTxt:="JSON Stringify(This."+$key+")"
							$columnFormulaTxt:="This."+$key
							$valTyp:=Is text:K8:3
						: ($valTyp=Is collection:K8:32)
							$columnFormulaTxt:="JSON Stringify(This."+$key+")"
							$valTyp:=Is text:K8:3
						Else 
							$valTyp:=Is text:K8:3
					End case 
					LISTBOX INSERT COLUMN FORMULA:C970(*; "oGenericLisbox"; $colKeys.length+1; "oCol"+$key; $columnFormulaTxt; $valTyp; "oHead"+$key; $nilPtr)
					OBJECT SET TITLE:C194(*; "oHead"+$key; $key)
				End for each 
				
		End case 
		
		
End case 
