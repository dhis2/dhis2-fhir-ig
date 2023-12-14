Logical: D2OptionSet
Id: d2-md-option-set
Title: "D2OptionSet"
Description: "D2OptionSet"

* id 1..1 Identifier "Unique ID for option set" // identifier
* code 0..1 Identifier "Unique CODE for option set" // identifier
* href 0..1 Identifier "Unique URL where the option set is available from" // identifier
* name 1..1 string "Name of option set"
* shortName 1..1 string "Short name of option set" // extensions
* description 0..1 string "Description of option set"
* options 0..* D2Option "Options associated with this option set" // extension
* attributeValues 0..* D2AttributeValue "additional attributes" // extension
