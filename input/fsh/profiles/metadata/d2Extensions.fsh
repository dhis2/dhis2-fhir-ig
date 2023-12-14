
Extension: D2ShortName
Id: D2ShortName
Title: "D2ShortName"
Description: "D2ShortName Extension"
* valueString 1..1 MS

Extension: D2OrganisationUnitGroup // TODO: Do we need this one? isn't normal identifiers enough?
Id: D2OrganisationUnitGroup
Title: "D2OrganisationUnitGroup Identifier"
Description: "D2OrganisationUnitGroup Identifier Extension"
* value[x] only Identifier

Extension: D2AttributeValue
Id: D2AttributeValue
Title: "D2AttributeValue"
Description: "D2AttributeValue Extension"
* extension contains
    attribute 1..1 MS and
    value 1..1 MS
* extension[attribute] ^short = "D2AttributeValue ID"
* extension[attribute].value[x] only Coding
* extension[value] ^short = "D2AttributeValue Value"
* extension[value].value[x] only string
