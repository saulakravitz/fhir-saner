Instance: Patient1a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.value = "Pat111111"
* gender = #female
* birthDate = "1940-02-02"

Instance: Encounter1a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc111111"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-09"
* period.end = "2020-09-09"
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient1a)
* location.location = Reference(Location1a)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location1a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44083"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition1a
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con111111"
* subject = Reference(Patient1a)
* code = http://snomed.info/sct#870590002 "Acute hypoxemic respiratory failure due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-09
Instance: Observation11a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs111111-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter1a)
* subject = Reference(Patient1a)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest11a
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 1a: Admission date =Today (T) w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med111111"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient1a)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-09"

Instance: Patient1b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 1b: Admission date =T-1 w/ outcome = Yes"
* identifier.value = "Pat222222"
* gender = #female
* birthDate = "1967-08-23"
Instance: Encounter1b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 1b: Admission date =T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc222222"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient1b)
* location.location = Reference(Location1b)
* reasonCode =  http://snomed.info/sct#233604007 "Pneumonia (disorder)"

Instance: Location1b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 1b: Admission date =T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1076-9 "Pediatric Medical Ward"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDU "Pediatric unit"

Instance: Observation11b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 1b: Admission date =T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs222222-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter1b)
* subject = Reference(Patient1b)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest11b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 1b: Admission date =T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med222222"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient1b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient1c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.value = "Pat333333"
* gender = #male
* birthDate = "1949-12-07"
Instance: Encounter1c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc333333"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-07"
* period.end = "2020-09-10"

* subject = Reference(Patient1c)
* location.location = Reference(Location1c)
* reasonCode =  http://snomed.info/sct#233604007 "Pneumonia (disorder)"

Instance: Location1c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44081"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition1c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con333333"
* subject = Reference(Patient1c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-07
Instance: Observation11c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs333333-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter1c)
* subject = Reference(Patient1c)
* effectiveDateTime = "2020-09-02"
* code = http://loinc.org#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"

Instance: Observation31c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "333333-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter1c)
* subject = Reference(Patient1c)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Observation41c
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "333333-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter1c)
* subject = Reference(Patient1c)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: Immunization11c
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 1c: Admission date =T-2 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "333333"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient1c)


Instance: Patient2a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.value = "Pat444444"
* gender = #male
* birthDate = "1956-09-13"

Instance: Encounter2a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc444444"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-09"

* subject = Reference(Patient2a)
* location.location = Reference(Location2a)
* reasonCode =  http://snomed.info/sct#233604007 "Pneumonia (disorder)"

Instance: Location2a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1208-8 "Telemetry Ward"

Instance: Condition2a
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con444444"
* subject = Reference(Patient2a)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-08
Instance: Observation12a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs444444-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2a)
* subject = Reference(Patient2a)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Immunization12a
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 2a: Positive test result w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "444444"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient2a)


Instance: Patient2b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 2b: Negative test result w/ outcome = No"
* identifier.value = "Pat555555"
* gender = #female
* birthDate = "1949-04-04"
Instance: Encounter2b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc555555"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient2b)
* location.location = Reference(Location2b)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location2b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1060-3 "Medical Ward"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#HU "Hospital unit"

Instance: Condition2b
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con555555"
* subject = Reference(Patient2b)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-08
Instance: Observation12b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs555555-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2b)
* subject = Reference(Patient2b)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation42b
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "555555-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2b)
* subject = Reference(Patient2b)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest12b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med555555"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient2b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Immunization12b
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 2b: Negative test result w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "555555"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient2b)


Instance: Patient2c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.value = "Pat666666"
* gender = #male
* birthDate = "1929-09-30"
Instance: Encounter2c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc666666"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient2c)
* location.location = Reference(Location2c)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location2c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1030-6 "Surgical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU  "Intensive care unit"

Instance: Condition2c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con666666"
* subject = Reference(Patient2c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-08
Instance: Observation12c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs666666-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2c)
* subject = Reference(Patient2c)
* effectiveDateTime = "2020-09-01"
* code = http://loinc.org#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory specimen by NAA with probe detection"

Instance: Observation22c
InstanceOf: Observation
Usage: #example
Description: "Observation-2 for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs666666-2"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2c)
* subject = Reference(Patient2c)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation32c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "666666-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter2c)
* subject = Reference(Patient2c)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: MedicationRequest12c
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med666666"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient2c)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Immunization12c
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 2c: Negative test followed by Positive  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "666666"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient2c)


Instance: Patient3a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.value = "Pat777777"
* gender = #female
* birthDate = "1940-02-02"
Instance: Encounter3a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc777777"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient3a)
* location.location = Reference(Location3a)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location3a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"


Instance: Observation13a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs777777-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter3a)
* subject = Reference(Patient3a)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"
Instance: Observation43a
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "777777-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter3a)
* subject = Reference(Patient3a)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest13a
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 3a: Neither Adm diagnosis or Problem list  doument COVID w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med777777"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient3a)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient3b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.value = "Pat999999"
* gender = #male
* birthDate = "1949-12-07"
Instance: Encounter3b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc999999"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient3b)
* location.location = Reference(Location3b)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location3b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1060-3 "Medical Ward"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#HU "Hospital unit"

Instance: Condition3b
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con999999"
* subject = Reference(Patient3b)
* code = http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"
* onsetDateTime = 2020-09-09


Instance: Observation13b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs999999-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter3b)
* subject = Reference(Patient3b)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation33b
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 3b: Adm diagnosis documents COVID but problem list does not w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "999999-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter3b)
* subject = Reference(Patient3b)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Patient4a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 4a: T-1 w/ outcome = Yes"
* identifier.value = "Pat123456"
* gender = #male
* birthDate = "1940-02-02"
Instance: Encounter4a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 4a: T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc123456"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-09"
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient4a)
* location.location = Reference(Location4a)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location4a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 4a: T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"


Instance: Observation14a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 4a: T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs123456-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4a)
* subject = Reference(Patient4a)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation34a
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 4a: T-1 w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "123456-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4a)
* subject = Reference(Patient4a)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Patient4b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 4b: T-15 w/ outcome = No"
* identifier.value = "Pat234567"
* gender = #female
* birthDate = "1967-08-23"
Instance: Encounter4b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 4b: T-15 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc234567"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-09"

* subject = Reference(Patient4b)
* location.location = Reference(Location4b)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location4b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 4b: T-15 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1076-9 "Pediatric Medical Ward"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDU  "Pediatric unit"


Instance: Observation14b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 4b: T-15 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs234567-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4b)
* subject = Reference(Patient4b)
* effectiveDateTime = "2020-08-25"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation34b
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 4b: T-15 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "234567-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4b)
* subject = Reference(Patient4b)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: MedicationRequest14b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 4b: T-15 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med234567"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient4b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient4c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 4c: T w/ outcome = No"
* identifier.value = "Pat345678"
* gender = #male
* birthDate = "1949-12-07"
Instance: Encounter4c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc345678"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-10"

* subject = Reference(Patient4c)
* location.location = Reference(Location4c)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location4c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1028-0 "Medical Cardiac Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition4c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con345678"
* subject = Reference(Patient4c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-08
Instance: Observation14c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs345678-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4c)
* subject = Reference(Patient4c)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation34c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "345678-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter4c)
* subject = Reference(Patient4c)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: MedicationRequest14c
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 4c: T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med345678"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient4c)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient5a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.value = "Pat456789"
* gender = #male
* birthDate = "1940-02-02"

Instance: Encounter5a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc456789"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient5a)
* location.location = Reference(Location5a)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location5a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU  "Intensive care unit"
Instance: Condition5a
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con456789"
* subject = Reference(Patient5a)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-09

Instance: Observation15a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs456789-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter5a)
* subject = Reference(Patient5a)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest15a
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 5a: Only positive collected today w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med456789"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient5a)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient5b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 5b: Only positive collected T-1 w/ outcome = No"
* identifier.value = "Pat987654"
* gender = #female
* birthDate = "1967-08-23"

Instance: Encounter5b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 5b: Only positive collected T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc987654"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient5b)
* location.location = Reference(Location5b)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location5b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 5b: Only positive collected T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Observation15b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 5b: Only positive collected T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs987654-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter5b)
* subject = Reference(Patient5b)
* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest15b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 5b: Only positive collected T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med987654"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* subject = Reference(Patient5b)
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient5c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 5c: Positives collected T-13 and T w/ outcome = No"
* identifier.value = "Pat876543"
* gender = #male
* birthDate = "1949-12-07"

Instance: Encounter5c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 5c: Positives collected T-13 and T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc876543"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient5c)
* location.location = Reference(Location5c)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location5c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 5c: Positives collected T-13 and T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition5c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 5c: Positives collected T-13 and T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con876543"
* subject = Reference(Patient5c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* onsetDateTime = 2020-09-08

Instance: Observation15c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 5c: Positives collected T-13 and T w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs876543-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter5c)
* subject = Reference(Patient5c)
* effectiveDateTime = "2020-08-27"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Patient6a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.value = "Pat765432"
* gender = #male
* birthDate = "1940-02-02"

Instance: Encounter6a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc765432"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-09"
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient6a)
* location.location = Reference(Location6a)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location6a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU  "Intensive care unit"

Instance: Condition6a
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con765432"
* subject = Reference(Patient6a)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-09
Instance: Observation16a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs765432-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6a)
* subject = Reference(Patient6a)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation36a
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 6a: Ventilator (intubation) start date = T-1 and no stop (extubation) date w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "765432-3"
* effectiveDateTime = "2020-09-08"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6a)
* subject = Reference(Patient6a)
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100
Instance: Patient6b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.value = "Pat654321"
* gender = #female
* birthDate = "1967-08-23"

Instance: Encounter6b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc654321"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient6b)
* location.location = Reference(Location6b)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location6b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1076-9 "Pediatric Medical Ward"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#PEDU "Pediatric unit"

Instance: Observation16b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs654321-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6b)
* subject = Reference(Patient6b)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation36b
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "654321-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6b)
* subject = Reference(Patient6b)
* effectiveDateTime = "2020-09-06"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Observation46b
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "654321-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6b)
* subject = Reference(Patient6b)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest16b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 6b: Ventilator (intubation)start date = T-3 and stop (extubation) date = T  w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med654321"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient6b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient6c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.value = "Pat543210"
* gender = #male
* birthDate = "1949-12-07"
Instance: Encounter6c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc543210"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* period.end = "2020-09-10"

* subject = Reference(Patient6c)
* location.location = Reference(Location6c)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location6c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1028-0 "Medical Cardiac Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition6c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con543210"
* subject = Reference(Patient6c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-07
Instance: Observation16c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs543210-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6c)
* subject = Reference(Patient6c)
* effectiveDateTime = "2020-09-02"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation36c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "543210-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6c)
* subject = Reference(Patient6c)
* effectiveDateTime = "2020-09-03"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Observation46c
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "543210-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter6c)
* subject = Reference(Patient6c)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest16c
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med543210"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient6c)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Immunization16c
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 6c: Ventilator (intubation) start date = T-6 and stop date (extubation) =T-1 w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "543210"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient6c)


Instance: Patient7a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 7a: No w/ outcome = No"
* identifier.value = "Pat112233"
* gender = #female
* birthDate = "1967-08-23"
Instance: Encounter7a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc112233"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient7a)
* location.location = Reference(Location7a)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location7a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1208-8 "Telemetry Ward"

Instance: Condition7a
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con112233"
* subject = Reference(Patient7a)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-09
Instance: Observation17a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs112233-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter7a)
* subject = Reference(Patient7a)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation37a
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "112233-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter7a)
* subject = Reference(Patient7a)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Observation47a
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "112233-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter7a)
* subject = Reference(Patient7a)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest17a
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 7a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med112233"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient7a)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient7b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 7b: Yes w/ outcome = Yes"
* identifier.value = "Pat223344"
* gender = #female
* birthDate = "1949-12-07"
Instance: Encounter7b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 7b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc223344"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient7b)
* location.location = Reference(Location7b)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location7b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 7b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition7b
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 7b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con223344"
* subject = Reference(Patient7b)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-09
Instance: Observation17b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 7b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs223344-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter7b)
* subject = Reference(Patient7b)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest17b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 7b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med223344"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = #Remdesivir
* subject = Reference(Patient7b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient8a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 8a: No w/ outcome = No"
* identifier.value = "Pat334455"
* gender = #female
* birthDate = "1956-09-13"
Instance: Encounter8a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 8a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc334455"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient8a)
* location.location = Reference(Location8a)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location8a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 8a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1030-6 "Surgical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU  "Intensive care unit"

Instance: Observation18a
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 8a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs334455-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter8a)
* subject = Reference(Patient8a)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest18a
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 8a: No w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med334455"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient8a)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient8b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 8b: Yes w/ outcome = Yes"
* identifier.value = "Pat265928"
* gender = #male
* birthDate = "1949-04-04"
Instance: Encounter8b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 8b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc265928"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient8b)
* location.location = Reference(Location8b)
* reasonCode =  http://snomed.info/sct#233604007 "Pneumonia (disorder)"

Instance: Location8b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 8b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1097-5 "Post-anesthesia Care Unit (as an Overflow unit)"


Instance: Observation18b
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 8b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs265928-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter8b)
* subject = Reference(Patient8b)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: MedicationRequest18b
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 8b: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med265928"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient8b)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient8c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 8c: Yes w/ outcome = Yes"
* identifier.value = "Pat445566"
* gender = #female
* birthDate = "1929-09-30"
Instance: Encounter8c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc445566"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient8c)
* location.location = Reference(Location8c)
* reasonCode =  http://snomed.info/sct#67782005 "Acute respiratory distress syndrome (disorder)"

Instance: Location8c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1108-0 "Emergency Department"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER "Emergency room"

Instance: Observation18c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs445566-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter8c)
* subject = Reference(Patient8c)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation38c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "445566-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter8c)
* subject = Reference(Patient8c)
* effectiveDateTime = "2020-09-08"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: Observation48c
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "445566-4"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter8c)
* subject = Reference(Patient8c)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: MedicationRequest18c
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 8c: Yes w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med445566"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient8c)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Patient9a
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 9a: Diagnosis of Suspected COVID-19 WITHOUT positive viral test w/ outcome = Yes"
* identifier.value = "Pat556677"
* gender = #male
* birthDate = "1956-09-13"
Instance: Encounter9a
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 9a: Diagnosis of Suspected COVID-19 WITHOUT positive viral test w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc556677"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"
* subject = Reference(Patient9a)
* location.location = Reference(Location9a)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location9a
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 9a: Diagnosis of Suspected COVID-19 WITHOUT positive viral test w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1030-6 "Surgical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Patient9b
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 9b: No Diagnosis of Suspected  COVID-19 nor positive viral test w/ outcome = No"
* identifier.value = "Pat667788"
* gender = #female
* birthDate = "1949-04-04"
Instance: Encounter9b
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 9b: No Diagnosis of Suspected  COVID-19 nor positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc667788"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient9b)
* location.location = Reference(Location9b)
* reasonCode =  http://snomed.info/sct#233604007 "Pneumonia (disorder)"

Instance: Location9b
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 9b: No Diagnosis of Suspected  COVID-19 nor positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"




Instance: Observation49b
InstanceOf: Observation
Usage: #example
Description: "Observation-4 for Test Case 9b: No Diagnosis of Suspected  COVID-19 nor positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "667788-4"
* status = http://hl7.org/fhir/observation-status#final

* effectiveDateTime = "2020-09-07"
* code = http://loinc.org#20077-4  "Positive end expiratory pressure setting Ventilator"
* valueQuantity.code = http://unitsofmeasure.com#cm[H2O]
* valueQuantity.value = 5

Instance: Immunization19b
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 9b: No Diagnosis of Suspected  COVID-19 nor positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "667788"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient9b)


Instance: Patient9c
InstanceOf: Patient
Usage: #example
Description: "Patient for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.value = "Pat778899"
* gender = #female
* birthDate = "1929-09-30"
Instance: Encounter9c
InstanceOf: Encounter
Usage: #example
Description: "Encounter for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Encounter"
* identifier.value = "Enc778899"
* status = http://hl7.org/fhir/encounter-status#in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2020-09-08"

* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#exp
* subject = Reference(Patient9c)
* location.location = Reference(Location9c)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#U07.1 "COVID-19"

Instance: Location9c
InstanceOf: Location
Usage: #example
Description: "Location for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Location"
* identifier.value = "Loc44082"
* type[0] = https://www.cdc.gov/nhsn/cdaportal/terminology/codesystem/hsloc.html#1027-2 "Medical Critical Care"
* type[1] =  http://terminology.hl7.org/CodeSystem/v3-RoleCode#ICU "Intensive care unit"

Instance: Condition9c
InstanceOf: Condition
Usage: #example
Description: "Condition for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Condition"
* identifier.value = "Con778899"
* subject = Reference(Patient9c)
* code = http://snomed.info/sct#882784691000119100 "Pneumonia caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* onsetDateTime = 2020-09-08
Instance: Observation19c
InstanceOf: Observation
Usage: #example
Description: "Observation-1 for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "Obs778899-1"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter9c)
* subject = Reference(Patient9c)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#94759-8 "SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with probe detection"

Instance: Observation39c
InstanceOf: Observation
Usage: #example
Description: "Observation-3 for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/Observation"
* identifier.value = "778899-3"
* status = http://hl7.org/fhir/observation-status#final
* encounter = Reference(Encounter9c)
* subject = Reference(Patient9c)
* effectiveDateTime = "2020-09-09"
* code = http://loinc.org#19994-3  "Oxygen/Inspired gas setting [Volume Fraction] Ventilator"
* valueQuantity.value = 100

Instance: MedicationRequest19c
InstanceOf: MedicationRequest
Usage: #example
Description: "MedicationRequest for Test Case 9c: Diagnosis of Suspected COVID-19 AND ALSO  positive viral test w/ outcome = No"
* identifier.system = "http://sanerproject.org/test/MedicationRequest"
* identifier.value = "Med778899"
* status = http://hl7.org/fhir/CodeSystem/medicationrequest-status#active
* intent = http://hl7.org/fhir/CodeSystem/medicationrequest-intent#order
* medicationCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#2367757
* subject = Reference(Patient9c)
* dosageInstruction.timing.repeat.boundsPeriod.start =  "2020-09-08"

Instance: Immunization19a
InstanceOf: Immunization
Usage: #example
Description: "Immunization for Test Case 9a: Diagnosis of Suspected COVID-19 WITHOUT positive viral test w/ outcome = Yes"
* identifier.system = "http://sanerproject.org/test/Immunization"
* identifier.value = "556677"
* occurrenceDateTime =  "2020-09-09"
* status = http://hl7.org/fhir/event-status#completed
* vaccineCode = http://http://snomed.info/sct#346524008
* patient = Reference(Patient9c)
