Logical: BasePatient
Id: d2-base-patient
Title: "DHIS2 Base: Patient"
Description: "Representation of common DHIS2 tracked entity properties."

* registrationDateTime 1..1 dateTime "Date and Time when the patient information was entered into DHIS2"
* firstregisteredAt 1..1 Reference(Organization) "The organization unit where the patient was first registered"
* firstName 0..1 string "Given name of the patient"
* lastName 0..1 string "Family name of the patient"
* dateOfBirth 1..1 string "Date of birth of patient"
* dateOfBirthIsEstimated 0..1 boolean "Is the date of birth estimated?"
* sexAtBirth 1..1 code "Sex at birth"
* sexAtBirth from PatientSexAtBirthVS (example)
  * ^comment = "(valueset depends on the program)"
* currentHomeAddress 1..1 string "Current home address"
* contactPhoneNumber 1..1 string "Contact phone number"
* countryOfBirth 0..1 string "Country of birth (ISO 3166 - country Codes)"
* countryOfBirth from urn:iso:std:iso:3166 (example)
* nationaId 0..1 string "National ID"
* consent 0..1 boolean  "Consent"


// @Name: Local Code Systems

// Define a local code system
CodeSystem: PatientSexAtBirth
Id:         patient-sex-at-birth
Title:     "Patient Sex at Birth"
Description: "Patient sex at birth."
* #male "Male"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Masculino"
  * ^designation[+].language = #es
  * ^designation[=].value = "Masculino"
  * ^designation[+].language = #et
  * ^designation[=].value = "Mees"
* #female "Female"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Feminino"
  * ^designation[+].language = #es
  * ^designation[=].value = "Feminino"
  * ^designation[+].language = #et
  * ^designation[=].value = "Naine"
* #other "Other"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Outro"
  * ^designation[+].language = #es
  * ^designation[=].value = "Otro"
  * ^designation[+].language = #et
  * ^designation[=].value = "Muu"
* #unknown "Unknown"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Desconhecido"
  * ^designation[+].language = #es
  * ^designation[=].value = "Desconocido"
  * ^designation[+].language = #et
  * ^designation[=].value = "Teadmata"



ValueSet: PatientSexAtBirthVS
Id: patient-sex-at-birth-vs
Title: "Patient Sex at Birth Value Set"
Description: "patient sex at birth value set."
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system PatientSexAtBirth
