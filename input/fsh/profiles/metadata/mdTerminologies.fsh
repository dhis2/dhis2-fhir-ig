
Profile: MDCodeSystem
Parent: CodeSystem
Title: "MDCodeSystem"
Description: "MDCodeSystem"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* name 1..1 MS
* status = #active
* content = #complete
* experimental = true
* caseSensitive = true
* extension contains
    AttributeValue named attributeValue 0..* MS

Instance: MDCodeSystem-P0RAq93jsi9
InstanceOf: MDCodeSystem
* meta.lastUpdated = "2022-02-10T15:35:46.309+01:00"
* name = "HIV - Gender"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "P0RAq93jsi9"
* identifier[code].system = "http://dhis2.org/identifiertypes#code"
* identifier[=].value = "HIV_Gender"
* concept[+].code = #MALE
* concept[=].definition = "Male"
* concept[=].display = "Male"
* concept[+].code = #FEMALE
* concept[=].definition = "Female"
* concept[=].display = "Female"
