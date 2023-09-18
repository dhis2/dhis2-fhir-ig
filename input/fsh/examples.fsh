// TODO should probably generate this from a script

Instance: orgUnit100
InstanceOf: MDOrganisationUnitLocation
* name = "Org Unit 100"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "orgUnit100"
* extension[shortName].valueString = "Org Unit 100"
* extension[level].valueInteger = 1
* managingOrganization = Reference(MDOrganisationUnitOrganization/orgUnit100)

Instance: orgUnit100Organization
InstanceOf: MDOrganisationUnitOrganization
* name = "Org Unit 100"
// TODO should we have shortName for orgz?
// * extension[shortName].valueString = "Org Unit 100"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "orgUnit100"
* extension[openingDate].valuePeriod.start = "2020-01-01"
