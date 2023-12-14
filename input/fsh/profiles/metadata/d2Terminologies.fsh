
Profile: D2CodeSystem
Parent: CodeSystem
Title: "D2CodeSystem"
Description: "D2CodeSystem"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* name 1..1 MS // computer friendly
* title 1..1 MS // human friendly
* description 0..1 MS
* url 1..1 MS
* version 1..1 MS
* valueSet 1..1 MS
* status = #active
* content = #complete
* experimental = false
* caseSensitive = true
* extension contains
    AttributeValue named attributeValue 0..* MS


Profile: D2ValueSet
Parent: ValueSet
Title: "D2ValueSet"
Description: "D2ValueSet"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* name 1..1 MS // computer friendly
* title 1..1 MS // human friendly
* description 0..1 MS
* url 1..1 MS
* version 1..1 MS
* status = #active
* experimental = false
* immutable = true
* extension contains
    AttributeValue named attributeValue 0..* MS
