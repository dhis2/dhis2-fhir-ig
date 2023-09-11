Logical: MDOptionSet
Id: d2-md-option-set
Title: "DHIS2 Metadata: OptionSet"
Description: "DHIS2 Metadata: OptionSet"

* id 1..1 identifier "Unique UID for option set" // identifier
* code 0..1 identifier "Unique CODE for option set" // identifier
* href 0..1 identifier "Unique URL where the option set is available from" // identifier
* name 1..1 string "Name of option set"
* shortName 1..1 string "Short name of option set"
* description 0..1 string "Description of option set"
* options 0..* MDOption "programs associated with this option set"
* attributeValues 0..* MDAttributeValue "additional attributes that are in this option set"
