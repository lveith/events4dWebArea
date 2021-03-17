

Case of 
	: (Form event code:C388=On Clicked:K2:4)
/*
// https://developer.mozilla.org/en-US/docs/Web/API/Performance/getEntriesByType
		
// resources would be of type PerformanceResourceTiming[]
const resources = window.navigation.getEntriesByType("resource");
		
// resources would be of type PerformanceMeasure[]
const measures = window.navigation.getEntriesByType("measure");
		
// marks would be of type PerformanceMark[]
const marks = window.navigation.getEntriesByType("mark");
		
// paints would still be of type PerformanceEntryList
const paints = window.navigation.getEntriesByType("paint");
*/
		
		$funcCode:="return window.performance.getEntriesByType(\"resource\");"
		$colResult:=WA Evaluate JavaScript:C1029(*; "oWaArea1"; "(function(){"+$funcCode+"})();"; Is collection:K8:32)
		
		$winRef:=Open form window:C675("genericListbox"; Palette form window:K39:9)
		DIALOG:C40("genericListbox"; New object:C1471("colGenericLB"; $colResult); *)
		//CLOSE WINDOW($winRef)
		
		If (False:C215)
			$jsonTxt:=JSON Stringify:C1217($colResult; *)
			SET TEXT TO PASTEBOARD:C523($jsonTxt)
		End if 
		
/*
[
  {
    "name": "https://blog.4d.com/wp-content/uploads/2016/09/logoOrignal.png",
    "entryType": "resource",
    "startTime": 264.51499992982,
    "duration": 183.81499999668,
    "initiatorType": "img",
    "nextHopProtocol": "http/1.1",
    "workerStart": 0,
    "redirectStart": 0,
    "redirectEnd": 0,
    "fetchStart": 264.51499992982,
    "domainLookupStart": 264.51499992982,
    "domainLookupEnd": 264.51499992982,
    "connectStart": 264.51499992982,
    "connectEnd": 264.51499992982,
    "secureConnectionStart": 0,
    "requestStart": 443.54000000749,
    "responseStart": 445.60500001535,
    "responseEnd": 448.3299999265,
    "transferSize": 0,
    "encodedBodySize": 11416,
    "decodedBodySize": 11416,
    "serverTiming": [],
    "workerTiming": []
  },
  {
    "name": "https://blog.4d.com/...",
    "entryType": "resource",
    "workerTiming": []
  }
]
*/
		
		
End case 