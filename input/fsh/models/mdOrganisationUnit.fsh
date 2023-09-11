Logical: MDOrganisationUnit
Id: d2-md-organisation-unit
Title: "DHIS2 Metadata: OrganisationUnit"
Description: "DHIS2 Metadata: OrganisationUnit"

* id 1..1 Identifier "Unique UID for organisation unit" // identifier
* code 0..1 Identifier "Unique CODE for organisation unit" // identifier
* href 0..1 Identifier "Unique URL where the organisation unit is available from" // identifier
* level 1..1 integer "Level in hiearchy of organisation units" // extension
* parent 0..1 string "Parent of organisation unit" // partOf
* leaf 1..1 boolean "Is this is leaf in the organisation unit tree" // extension
* name 1..1 string "Name of organisation"
* shortName 1..1 string "Short name of organisation unit"  // extension
* description 0..1 string "Description of organisation unit" 
* openingDate 1..1 date "Date this organisation unit was opened"  // extension
* geometry 0..1 string "GeoJson geometry of organisation unit"  // extension
* organisationUnitGroups 0..* Identifier "organisation unit groups that contains this organisation unit" // identifier
* dataSets 0..* Identifier "data sets associated with this organisation unit" // identifier
* programs 0..* Identifier "programs associated with this organisation unit" // identifier
* attributeValues 0..* MDAttributeValue "additional attributes that are in this organisation unit"  // extension
