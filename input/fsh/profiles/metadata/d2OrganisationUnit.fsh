/*
    TODO:
    - Figure out naming of profiles
*/

Profile: D2OrganisationUnitLocation
Parent: Location
Title: "D2OrganisationUnit Location"
Description: "D2OrganisationUnit Location"

* identifier 1..* MS
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
* managingOrganization only Reference(D2OrganisationUnitOrganization)
* description 0..1 MS

Profile: D2OrganisationUnitOrganization
Parent: Organization
Title: "D2OrganisationUnit Organization"
Description: "D2OrganisationUnit Organization"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named openingDate 1..1
* extension[openingDate].valuePeriod.start 1..1
* extension[openingDate].valuePeriod.end 0..0

/* Local Extensions */

Extension: Level
Id: Level
Title: "D2OrganisationUnit Hiearchy Level"
Description: "D2OrganisationUnit Hiearchy Level"
* valueInteger 1..1
