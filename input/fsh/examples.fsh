// TODO should probably generate this from a script

Instance: MDOrganisationUnitLocation-Sierra-Leone
InstanceOf: MDOrganisationUnitLocation
* name = "Sierra Leone"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "ImspTQPwCqd"
* identifier[code].system = "http://dhis2.org/identifiertypes#code"
* identifier[=].value = "OU_525"
* extension[shortName].valueString = "Sierra Leone"
* extension[level].valueInteger = 1
* extension[geometry].valueAttachment.data = "eyJ0eXBlIjogIlBvaW50IiwgImNvb3JkaW5hdGVzIjogWy0xMi45NDg3LCA5LjAxMzFdfQ=="
* managingOrganization = Reference(MDOrganisationUnitOrganization/ImspTQPwCqd)

Instance: MDOrganisationUnitOrganization-Sierra-Leone
InstanceOf: MDOrganisationUnitOrganization
* name = "Sierra Leone"
// TODO should we have shortName for orgz?
// * extension[shortName].valueString = "Org Unit 100"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "ImspTQPwCqd"
* identifier[code].system = "http://dhis2.org/identifiertypes#code"
* identifier[=].value = "OU_525"
* extension[openingDate].valuePeriod.start = "1994-01-01"
