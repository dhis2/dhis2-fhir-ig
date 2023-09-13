/*
    TODO:
    - Add ruleset for id slices
    - Figure out naming of profiles
*/

RuleSet: IdSlice(id, cardinality)
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false  // can be omitted, since false is the default
* identifier ^slicing.description = "DHIS2 Unique Identifier"
* identifier contains {id} {cardinality} MS
* identifier[{id}].type = http://dhis2.org/identifiertypes#{id}
* identifier[{id}].value 1..1 MS

Profile: MDOrganisationUnitLocation
Parent: Location
Title: "MDOrganisationUnit Location"
Description: "MDOrganisationUnit Location"

* identifier 0..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* extension contains
    ShortName named shortName 1..1 MS and
    Level named level 1..1 MS and
    OrganisationUnitGroup named organisationUnitGroup 0..* MS and
    AttributeValue named attributeValue 0..* MS and
    http://hl7.org/fhir/StructureDefinition/location-boundary-geojson named geometry 0..1 MS

* partOf MS
* name 1..1 MS
* managingOrganization 1..1
* managingOrganization only Reference(MDOrganisationUnitOrganization)
* description MS

Profile: MDOrganisationUnitOrganization
Parent: Organization
Title: "MDOrganisationUnit Organization"
Description: "MDOrganisationUnit Organization"

* identifier 0..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1
* extension[period].valuePeriod.start 1..1
* extension[period].valuePeriod.end 0..0

/* Local Extensions */

Extension: Level
Id: Level
Title: "MDOrganisationUnit Hiearchy Level"
Description: "MDOrganisationUnit Hiearchy Level"
* value[x] only integer
