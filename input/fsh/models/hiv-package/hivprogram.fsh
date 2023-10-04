Logical: HIVView
Id: d2-hiv-case-surveillance
Title: "DHIS2 HIV Metadata Package: HIV Case Surveillance"
Description: "Representation of the HIV case surveillance and treatment follow up program."

// Program stages
* caseReport 0..1 HIVCaseData "HIV Initial Case Report"
* visit 0..* HIVCaseVisitData "HIV Visit"
* followUp 0..* HIVFollowUp "HIV Follow-Up"
// enrollment
* patient 1..1 HIVPatientInfo "HIV Patient"