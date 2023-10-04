Logical: HIVCaseData
Id: d2-hiv-case-data
Title: "DHIS2 HIV Metadata Package: Initial Case Report"
Description: "Initial case report filled out after enrollment."
* initialCaseReportDate 1..1 date "Report date of initial case report"

* dateHIVPositiveTest 1..1 date "Date of documented positive HIV test" 
* ageWhenDiagnosedWithHiv 0..1 integer "Age at diagnosis"
* verticalTransmission 0..1 boolean "Vertical transmission"
* typeOfTesting 0..1 Coding "Type of community-level testing"
* typeOfTesting from HIVtypeOfTestingVS (example)
* facilityLevelTestingEntryPoint 0..1 Coding "Entry point for facility-level testing"
* facilityLevelTestingEntryPoint from HIVfacilityLevelTestingEntryPointsVS (example)
* patientInKeyPopGroup 1..1 boolean "Does this person belong to any Key Population groups"
* keyPopGroupMenWhoHaveSexWithMen 0..1 boolean "Key population - Men who have sex with men"
* keyPopGroupInjectionDrugUser 0..1 boolean "Key population - Injection drug user"
* keyPopGroupPrisoner 0..1 boolean "Key population - Prisoner"
* keyPopGroupSexWorker 0..1 boolean "Key population - Sex worker"
* keyPopGroupTransgender 0..1 boolean "Key population - Transgender"


// Local code systems
CodeSystem: HIVtypeOfTesting
Id: d2-hiv-type-of-testing
Title: "DHIS2 HIV Metadata Package: HIV Type of Testing"
Description: "DHIS2 HIV Metadata Package: HIV type of community-level testing"
* #MOBILE "Mobile testing (e.g. through vans or temporary testing facilities)"
* #VOLUNTARYCTC "Voluntary counceling and testing centres (not within a health facility setting)"
* #OTHERCOMMUNITY "Other community based testing"

CodeSystem: HIVfacilityLevelTestingEntryPoints
Title: "DHIS2 HIV Metadata Package: Entry Points for Facility-Level Testing"
Description: "DHIS2 HIV Metadata Package: entry points for facility-level testing"
* #PROVIDERINITIATED "Provider-initiated tested in a clinic or emergency facility"
* #ANTENATALCLINIC "Antenatal care clinic"
* #VOLUNTARYCOUNSELLING "Voluntary Counselling and Testing (within a health facility setting)"
* #FAMILYPLANNING "Family planning clinic"
* #OTHERFACILITY "Other facility-level testing"
* #TBCLINIC "TB clinic"



// Local value sets
ValueSet: HIVtypeOfTestingVS
Title: "DHIS2 HIV Metadata Package: Type of Testing Value Set"
Description: "DHIS2 HIV Metadata Package: HIV type of testing value set"
* include codes from system HIVtypeOfTesting

ValueSet: HIVfacilityLevelTestingEntryPointsVS
Title: "DHIS2 HIV Metadata Package: Entry Points for Facility-Level Testing Value Set"
Description: "DHIS2 HIV Metadata Package: Entry points for facility-level testing value set"
* include codes from system HIVfacilityLevelTestingEntryPoints