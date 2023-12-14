/*
    TODO:
    - Figure out naming of profiles
*/

Profile: D2Location
Parent: Location
Title: "D2OrganisationUnit Location"
Description: "D2OrganisationUnit Location"

* identifier 1..* MS
* insert IdSlice(id, 1..1)
* insert IdSlice(code, 0..1)
* insert IdSlice(href, 0..1)

* extension contains
    D2ShortName named shortName 1..1 MS and
    D2Level named level 1..1 MS and
    D2OrganisationUnitGroup named organisationUnitGroup 0..* MS and
    D2AttributeValue named attributeValue 0..* MS and
    http://hl7.org/fhir/StructureDefinition/location-boundary-geojson named geometry 0..1 MS

* partOf MS
* name 1..1 MS
* managingOrganization 1..1
* managingOrganization only Reference(D2Organization)
* description 0..1 MS

Profile: D2Organization
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

Extension: D2Level
Id: D2Level
Title: "D2OrganisationUnit Hierarchy Level"
Description: "D2OrganisationUnit Hierarchy Level"
* valueInteger 1..1
