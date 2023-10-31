
Alias: $codeSystem = https://demos.dhis2.org/hmis/api/optionSets/P0RAq93jsi9/codeSystem
Alias: $valueSet = https://demos.dhis2.org/hmis/api/optionSets/P0RAq93jsi9/valueSet

Instance: MDCodeSystem-P0RAq93jsi9
InstanceOf: MDCodeSystem
* meta.lastUpdated = "2022-02-10T15:35:46.309+01:00"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "P0RAq93jsi9"
* identifier[code].system = "http://dhis2.org/identifiertypes#code"
* identifier[=].value = "HIV_Gender"
* url = $codeSystem
* version = "1"
* name = "Gender"
* title = "Gender"
* title.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[=].extension[+].url = "lang"
* title.extension[=].extension[=].valueCode = #es
* title.extension[=].extension[+].url = "content"
* title.extension[=].extension[=].valueString = "Sexo"
* description = "Gender"
* valueSet = $valueSet
* concept[+].code = #MALE
* concept[=].definition = "Male"
* concept[=].display = "Male"
* concept[=].designation[+].language = #es
* concept[=].designation[=].value = "Masculino"
* concept[+].code = #FEMALE
* concept[=].definition = "Female"
* concept[=].display = "Female"
* concept[=].designation[+].language = #es
* concept[=].designation[=].value = "Femenino"

Instance: MDValueSet-P0RAq93jsi9
InstanceOf: MDValueSet
* meta.lastUpdated = "2022-02-10T15:35:46.309+01:00"
* identifier[id].system = "http://dhis2.org/identifiertypes#id"
* identifier[=].value = "P0RAq93jsi9"
* identifier[code].system = "http://dhis2.org/identifiertypes#code"
* identifier[=].value = "HIV_Gender"
* url = $valueSet
* version = "1"
* name = "Gender"
* title = "Gender"
* title = "Gender"
* title.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[=].extension[+].url = "lang"
* title.extension[=].extension[=].valueCode = #es
* title.extension[=].extension[+].url = "content"
* title.extension[=].extension[=].valueString = "Sexo"
* description = "Gender"
* compose[+].include[+].system = $codeSystem
