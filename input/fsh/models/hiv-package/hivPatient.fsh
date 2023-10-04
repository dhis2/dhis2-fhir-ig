Logical: HIVPatientInfo
Parent: BasePatient
Id: d2-hiv-patient
Title: "DHIS2 HIV Metadata Package: Patient"
Description: "Extension of the base patient data model. Includes properties specific to the HIV program."

* hivEnrollmentUnit 0..1 string "The organization unit where the person was first registered"
* programNationaId 0..* Identifier "Program national ID"
* deceased 0..1 boolean "Deceased"
* deceasedDate 0..1 boolean "Deceased date"
* gender 1..1 Coding "Gender"
* gender from HIVPatientGenderVS (example)
  * ^comment = "(valueset depends on the program)"
* healthFacilityCode 0..1 string "Health facility code"
* nhisId 0..1 string "NHIS ID"

// @Name: Local Code Systems
// Define a local code system
CodeSystem: HIVPatientGender
Id:         patient-gender
Title:     "DHIS2 HIV Metadata Package: Patient Gender Codes"
Description: "DHIS2 HIV Metadata Package: Patient Gender Codes"
* #male "Male"
* #female "Female"
* #transgender "Transgender"
* #other "Other"
* #unknown "Unknown"



ValueSet: HIVPatientGenderVS
Title: "DHIS2 HIV Metadata Package: Patient Gender Value Set"
Description: "DHIS2 HIV Metadata Package: Patient Gender Value Set"
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system HIVPatientGender