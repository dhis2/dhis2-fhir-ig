Logical: MDOption
Id: d2-md-option
Title: "DHIS2 Metadata: Option"
Description: "DHIS2 Metadata: Option"

* id 1..1 Identifier "Unique UID for option" // identifier
* code 0..1 Identifier "Unique CODE for option" // identifier
* href 0..1 Identifier "Unique URL where the option is available from" // identifier
* name 1..1 string "Name of option"
* shortName 1..1 string "Short name of option" // extension
* description 0..1 string "Description of option"
* attributeValues 0..* MDAttributeValue "additional attributes that are in this option"  // extension
