
Profile: MDCodeSystem
Parent: CodeSystem
Title: "MDCodeSystem"
Description: "MDCodeSystem"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* name 1..1 MS // computer friendly
* title 1..1 MS // human friendly
* description 0..1 MS
* url 1..1 MS
* version 1..1 MS
// * valueSet 1..1 MS
* status = #active
* content = #complete
* experimental = true
* caseSensitive = true
* extension contains
    AttributeValue named attributeValue 0..* MS


Profile: MDValueSet
Parent: ValueSet
Title: "MDValueSet"
Description: "MDValueSet"

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
* experimental = true
* immutable = true
* extension contains
    AttributeValue named attributeValue 0..* MS
