
RuleSet: IdSlice(id, cardinality)
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false  // can be omitted, since false is the default
* identifier ^slicing.description = "DHIS2 Unique Identifier"
* identifier contains {id} {cardinality} MS
* identifier[{id}].type = http://dhis2.org/identifiertypes#{id}
* identifier[{id}].value 1..1 MS
