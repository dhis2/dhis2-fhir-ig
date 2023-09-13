Profile: MDOrganisationUnitLocation
Parent: Location
Title: "MDOrganisationUnit Location"
Description: "MDOrganisationUnit Location"

* identifier 0..* MS // TODO: Slice for id, code, href 
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
* identifier 0..* MS // TODO: Slice for id, code, href 
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1
* extension[period].valuePeriod.start 1..1
* extension[period].valuePeriod.end 0..0

/* Local Extensions */

Extension: Level
Id: Level
Title: "MDOrganisationUnit Hiearchy Level"
Description: "MDOrganisationUnit Hiearchy Level"
* value[x] only integer
