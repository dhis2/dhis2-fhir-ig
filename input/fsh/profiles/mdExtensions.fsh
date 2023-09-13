
Extension: ShortName
Id: ShortName
Title: "ShortName"
Description: "ShortName Extension"
* value[x] only string

Extension: OrganisationUnitGroup // TODO: Do we need this one? isn't normal identifiers enough?
Id: OrganisationUnitGroup
Title: "MDOrganisationUnitGroup Identifier"
Description: "MDOrganisationUnitGroup Identifier Extension"
* value[x] only Identifier

Extension: AttributeValue
Id: AttributeValue
Title: "MDAttributeValue"
Description: "MDAttributeValue Extension"
* extension contains
    attribute 1..1 MS and
    value 1..1 MS
* extension[attribute] ^short = "MDAttribute UID"
* extension[attribute].value[x] only Coding
* extension[value] ^short = "MDAttribute Value"
* extension[value].value[x] only string
