Logical: HIVCaseVisitData
Id: d2-hiv-case-visit-data
Title: "DHIS2 HIV Metadata Package: Visit"
Description: "Report filled out during facility visit."

* visitDate 1..1 date "Viral load test date"
* dueDate 1..1 date "Visit due date" 
* reasonForVisit 0..1 Coding "The reason for this visit"
* reasonForVisit from HIVreasonsForVisitVS (example)
* treatmentStarted 0..1 boolean "Is the patient currently on treatment?"
* dateARTInitiation 0..1 date "Date of ART initiation"
* eligibleforTBPreventiveTreatment 0..1 boolean "Is patient eligible for preventive treatment?"
// TODO: add constraint: TPT data elements are only filled out IF eligibleForTBPreventiveTreatment is true
* TPTEligibleDate 0..1 date "TPT Date Eligible"
* TPTInitiatedDate 0..1 date "TPT Date Initiated"
* TPTRegimen 0..1 Coding "TPT Regimen"
* TPTRegimen from HIVtptRegimenVS (example)
* TPTCompletedDate 0..1 date "TPT Date Completed"
* TPTrestartTreatment 0..1 boolean "TPT restart treatment"
* treatmentStatus 0..1 Coding "Treatment status"
* treatmentStatus from HIVtreatmentStatusVS (example)
* viralLoadTestDate 0..1 date "Viral load test date"
* viralLoadLessThanThousand 0..1 boolean "Viral load < 1000?"
* numberOfviralLoadTestResults 0..1 integer "Viral load test results"
* previousViralLoadValue 0..1 integer "Previous viral load value"
* lastDateWithART 0..1 date "Last day with ART"
* dateOfDeath 0..1 date "Date of death"
* statusChangeDate 0..1 date "Status change date"
* currentlyPregnant 0..1 boolean "Currently pregnant?"
* daysARTdispensed 0..1 integer "Days of ART provided"

// Local code systems
CodeSystem: HIVreasonsForVisit
Title: "DHIS2 HIV Metadata Package: Reasons for Visit"
Description: "DHIS2 HIV Metadata Package: reasons for visit"
* #CLINICAL_VISIT "Clinical visit"
* #ARV_PICKUP "Antiretroviral drug pick up"
* #ISSUES "Issues and concerns"

// Local code systems
CodeSystem: HIVtptRegimen
Title: "DHIS2 HIV Metadata Package: TPT Regimen"
Description: "DHIS2 HIV Metadata Package: TPT regimen"
* #1HP "1HP (one month of daily rifapentine plus isoniazid)"
* #3HP "3HP (three months of weekly rifapentine plus isoniazid)"
* #3RH "3RH (three months of daily rifampicin plus isoniazid)"
* #4R "4R (four months of daily rifampicin monotherapy)"
* #6H "6H (six months of daily isoniazid monotherapy)"
* #9H "9H (nine months of daily isoniazid monotherapy)"
* #INH-B6 "Combination INH-B6-Cotrim (for the duration of INH specified)"
* #OTHERTPT "Other"

CodeSystem: HIVtreatmentStatus
Title: "DHIS2 HIV Metadata Package: Treatment Status"
Description: "DHIS2 HIV Metadata Package: treatment status"
* #RETAINED "On ART"
* #DEAD "Death (documented)"
* #TREATMENTSTOPPED "Refused (stopped) treatment"
* #TRANSFEROUT "Transferred out"
* #LTFU "Lost to follow up"



// Local value sets
ValueSet: HIVreasonsForVisitVS
Title: "DHIS2 HIV Metadata Package: Reasons for Visit Value Set"
Description: "DHIS2 HIV Metadata Package: reasons for visit value set"
* include codes from system HIVreasonsForVisit

ValueSet: HIVtptRegimenVS
Title: "DHIS2 HIV Metadata Package: TPT Regimen Value Set"
Description: "DHIS2 HIV Metadata Package: TPT regimen value set"
* include codes from system HIVtptRegimen

ValueSet: HIVtreatmentStatusVS
Title: "DHIS2 HIV Metadata Package: Treatment Status Value Set"
Description: "DHIS2 HIV Metadata Package: treatment status value set"
* include codes from system HIVtreatmentStatus