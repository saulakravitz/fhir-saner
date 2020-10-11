Instance: CDCPatientImpactAndHospitalCapacity
InstanceOf: Questionnaire
Title: "Patient Impact and Hospital Capacity"
Description: "SANER implementation of the CDC COVID-19 Patient Impact & Hospital Capacity Module"
* id = "CDCPatientImpactAndHospitalCapacity"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* url = "http://hl7.org/fhir/uv/fhir-saner/Questionnaire/CDCPatientImpactAndHospitalCapacity"
* version = "0.1.0"
* name = "CDCPatientImpactAndHospitalCapacity"
* title = "Patient Impact and Hospital Capacity"
* status = "draft"
* date = "2020-04-27T07:08:50-04:00"
* publisher = "HL7 International"
* description = "SANER implementation of the CDC COVID-19 Patient Impact & Hospital Capacity Module"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.value[x].coding = http://snomed.info/sct#840539006
* jurisdiction.coding = urn:iso:std:iso:3166#US
* item.linkId = "section_0"
* item.text = "COVID-19 Module: Patient Impact and Hospital Capacity Pathway"
* item.type = "group"
* item.repeats = false
* item.item.linkId = "facilityId"
* item.item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#facilityId
* item.item.text = "Facility ID #:"
* item.item.type = "string"
* item.item.required = true
* item.item.repeats = false
* item.item[1].linkId = "summaryCensusId"
* item.item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#summaryCensusId
* item.item[1].text = "Summary Census ID #:"
* item.item[1].type = "string"
* item.item[1].required = true
* item.item[1].repeats = false
* item.item[2].linkId = "collectionDate"
* item.item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#collectionDate
* item.item[2].text = "Collection Date: Select the date for which the recorded data was collected for the following questions."
* item.item[2].type = "date"
* item.item[2].required = true
* item.item[2].repeats = false
* item[1].linkId = "section_1"
* item[1].text = "Patient Impact Data Elements"
* item[1].type = "group"
* item[1].repeats = false
* item[1].item.linkId = "numC19HospPats"
* item[1].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19HospPats
* item[1].item.text = "Hospitalized COVID-19 Patients: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19."
* item[1].item.type = "integer"
* item[1].item.required = false
* item[1].item.repeats = false
* item[1].item[1].linkId = "numC19MechVentPats"
* item[1].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19MechVentPats
* item[1].item[1].text = "Hospitalized and Ventilated COVID-19 Patients: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator."
* item[1].item[1].type = "integer"
* item[1].item[1].required = false
* item[1].item[1].repeats = false
* item[1].item[2].linkId = "numC19HOPats"
* item[1].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19HOPats
* item[1].item[2].text = "Hospital Onset COVID-19 Patients: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID - 19 14 or more days after hospitalization."
* item[1].item[2].type = "integer"
* item[1].item[2].required = false
* item[1].item[2].repeats = false
* item[1].item[3].linkId = "numC19OverflowPats"
* item[1].item[3].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19OverflowPats
* item[1].item[3].text = "ED/Overflow COVID-19 Patients: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed."
* item[1].item[3].type = "integer"
* item[1].item[3].required = false
* item[1].item[3].repeats = false
* item[1].item[4].linkId = "numC19OFMechVentPats"
* item[1].item[4].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19OFMechVentPats
* item[1].item[4].text = "ED/Overflow and Ventilated COVID-19 Patients: Patients with suspected or confirmed COVID - 19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator."
* item[1].item[4].type = "integer"
* item[1].item[4].required = false
* item[1].item[4].repeats = false
* item[1].item[5].linkId = "numC19Died"
* item[1].item[5].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numC19Died
* item[1].item[5].text = "COVID-19 Patient Deaths: Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location."
* item[1].item[5].type = "integer"
* item[1].item[5].required = false
* item[1].item[5].repeats = false
* item[2].linkId = "section_2"
* item[2].text = "Hospital Bed/ Intensive Care Unit (ICU)/ Ventilator Capacity Data Elements"
* item[2].type = "group"
* item[2].repeats = false
* item[2].item.linkId = "numTotBeds"
* item[2].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numTotBeds
* item[2].item.text = "All Hospital Beds: Total number of all Inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow(surge) beds used for inpatients or outpatients."
* item[2].item.type = "integer"
* item[2].item.required = false
* item[2].item.repeats = false
* item[2].item[1].linkId = "numbeds"
* item[2].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numbeds
* item[2].item[1].text = "Hospital Inpatient Beds: Inpatient beds, including all staffed, licensed, and overflow(surge) beds used for inpatients."
* item[2].item[1].type = "integer"
* item[2].item[1].required = true
* item[2].item[1].repeats = false
* item[2].item[2].linkId = "numBedsOcc"
* item[2].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numBedsOcc
* item[2].item[2].text = "Hospital Inpatient Bed Occupancy: Total number of staffed inpatient beds that are occupied."
* item[2].item[2].type = "integer"
* item[2].item[2].required = false
* item[2].item[2].repeats = false
* item[2].item[3].linkId = "numICUBeds"
* item[2].item[3].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numICUBeds
* item[2].item[3].text = "ICU Beds: Total number of staffed inpatient intensive care unit (ICU) beds."
* item[2].item[3].type = "integer"
* item[2].item[3].required = false
* item[2].item[3].repeats = false
* item[2].item[4].linkId = "numICUBedsOcc"
* item[2].item[4].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numICUBedsOcc
* item[2].item[4].text = "ICU Bed Occupancy: Total number of staffed inpatient ICU beds that are occupied."
* item[2].item[4].type = "integer"
* item[2].item[4].required = false
* item[2].item[4].repeats = false
* item[2].item[5].linkId = "numVent"
* item[2].item[5].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numVent
* item[2].item[5].text = "Mechanical Ventilators: Total number of ventilators available."
* item[2].item[5].type = "integer"
* item[2].item[5].required = false
* item[2].item[5].repeats = false
* item[2].item[6].linkId = "numVentUse"
* item[2].item[6].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#numVentUse
* item[2].item[6].text = "Mechanical Ventilators in Use: Total number of ventilators in use."
* item[2].item[6].type = "integer"
* item[2].item[6].required = false
* item[2].item[6].repeats = false

Instance: CDCHealthcareSupplyPathway
InstanceOf: Questionnaire
Title: "COVID-19 Healthcare Supply Pathway"
Description: "SANER implementation of the CDC COVID-19 Healthcare Supply Pathway"
* id = "CDCHealthcareSupplyPathway"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* url = "http://hl7.org/fhir/uv/fhir-saner/Questionnaire/CDCHealthcareSupplyPathway"
* version = "0.1.0"
* name = "CDCHealthcareSupplyPathway"
* title = "COVID-19 Healthcare Supply Pathway"
* status = "draft"
* date = "2020-04-27T07:08:50-04:00"
* publisher = "HL7 International"
* description = "SANER implementation of the CDC COVID-19 Healthcare Supply Pathway"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.value[x].coding = http://snomed.info/sct#840539006
* jurisdiction.coding = urn:iso:std:iso:3166#US
* item.linkId = "section_0"
* item.text = "COVID-19 Module: Healthcare Supply Pathway"
* item.type = "group"
* item.repeats = false
* item.item.linkId = "facilityId"
* item.item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#facilityId
* item.item.text = "Facility ID #:"
* item.item.type = "string"
* item.item.required = true
* item.item.repeats = false
* item.item[1].linkId = "summaryCensusId"
* item.item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#summaryCensusId
* item.item[1].text = "Summary Census ID #:"
* item.item[1].type = "string"
* item.item[1].required = true
* item.item[1].repeats = false
* item.item[2].linkId = "collectiondate"
* item.item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#collectiondate
* item.item[2].text = "Collection Date: Select the date for which the recorded data was collected for the following questions."
* item.item[2].type = "date"
* item.item[2].required = true
* item.item[2].repeats = false
* item[1].linkId = "section_1"
* item[1].text = "Information:"
* item[1].type = "group"
* item[1].repeats = false
* item[1].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[1].item.modifierExtension.value[x] = true
* item[1].item.linkId = "onHandSupply"
* item[1].item.text = "On-hand Supply: Please answer based on your organization’s best estimation for the supply of this item."
* item[1].item.type = "choice"
* item[1].item.required = true
* item[1].item.repeats = false
* item[1].item.answerOption.value[x] = "Zero days"
* item[1].item.answerOption[1].value[x] = "1-3 days"
* item[1].item.answerOption[2].value[x] = "4-14 days"
* item[1].item.answerOption[3].value[x] = "15 or more days"
* item[1].item[1].linkId = "reuseOrExtendedUse"
* item[1].item[1].text = "Reusing or Extending Use: Are you currently reusing the item or implementing extended use?"
* item[1].item[1].type = "display"
* item[1].item[1].required = false
* item[1].item[1].repeats = false
* item[1].item[2].linkId = "ableToObtain"
* item[1].item[2].text = "Able to Obtain: Are you able to obtain this item? If you have placed an order but are not able to have that order filled, please answer NO."
* item[1].item[2].type = "display"
* item[1].item[2].required = false
* item[1].item[2].repeats = false
* item[2].linkId = "section_2"
* item[2].text = "Ventilator supplies (any, including tubing): any supplies, including flow sensors, tubing, connectors, valves, filters, etc"
* item[2].type = "group"
* item[2].repeats = false
* item[2].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[2].item.modifierExtension.value[x] = true
* item[2].item.linkId = "ventsupply"
* item[2].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#ventsupply
* item[2].item.text = "On-hand Supply"
* item[2].item.type = "choice"
* item[2].item.required = false
* item[2].item.repeats = false
* item[2].item.answerOption.value[x] = "Zero days"
* item[2].item.answerOption[1].value[x] = "1-3 days"
* item[2].item.answerOption[2].value[x] = "4-14 days"
* item[2].item.answerOption[3].value[x] = "15 or more days"
* item[2].item[1].linkId = "ventreuse"
* item[2].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#ventreuse
* item[2].item[1].text = "Reusing or Extending Use"
* item[2].item[1].type = "boolean"
* item[2].item[1].required = false
* item[2].item[1].repeats = false
* item[2].item[2].linkId = "ventobtain"
* item[2].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#ventobtain
* item[2].item[2].text = "Able to Obtain"
* item[2].item[2].type = "boolean"
* item[2].item[2].required = false
* item[2].item[2].repeats = false
* item[3].linkId = "section_3"
* item[3].text = "N95 masks:"
* item[3].type = "group"
* item[3].repeats = false
* item[3].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[3].item.modifierExtension.value[x] = true
* item[3].item.linkId = "n95masksupply"
* item[3].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#n95masksupply
* item[3].item.text = "On-hand Supply"
* item[3].item.type = "choice"
* item[3].item.required = false
* item[3].item.repeats = false
* item[3].item.answerOption.value[x] = "Zero days"
* item[3].item.answerOption[1].value[x] = "1-3 days"
* item[3].item.answerOption[2].value[x] = "4-14 days"
* item[3].item.answerOption[3].value[x] = "15 or more days"
* item[3].item[1].linkId = "n95maskreuse"
* item[3].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#n95maskreuse
* item[3].item[1].text = "Reusing or Extending Use"
* item[3].item[1].type = "boolean"
* item[3].item[1].required = false
* item[3].item[1].repeats = false
* item[3].item[2].linkId = "n95maskobtain"
* item[3].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#n95maskobtain
* item[3].item[2].text = "Able to Obtain"
* item[3].item[2].type = "boolean"
* item[3].item[2].required = false
* item[3].item[2].repeats = false
* item[4].linkId = "section_4"
* item[4].text = "Other respirators including PAPRs: Other respirators such as PAPRs or elastomerics"
* item[4].type = "group"
* item[4].repeats = false
* item[4].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[4].item.modifierExtension.value[x] = true
* item[4].item.linkId = "othrespsupply"
* item[4].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#othrespsupply
* item[4].item.text = "On-hand Supply"
* item[4].item.type = "choice"
* item[4].item.required = false
* item[4].item.repeats = false
* item[4].item.answerOption.value[x] = "Zero days"
* item[4].item.answerOption[1].value[x] = "1-3 days"
* item[4].item.answerOption[2].value[x] = "4-14 days"
* item[4].item.answerOption[3].value[x] = "15 or more days"
* item[4].item[1].linkId = "othrespreuse"
* item[4].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#othrespreuse
* item[4].item[1].text = "Reusing or Extending Use"
* item[4].item[1].type = "boolean"
* item[4].item[1].required = false
* item[4].item[1].repeats = false
* item[4].item[2].linkId = "othrespobtain"
* item[4].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#othrespobtain
* item[4].item[2].text = "Able to Obtain"
* item[4].item[2].type = "boolean"
* item[4].item[2].required = false
* item[4].item[2].repeats = false
* item[5].linkId = "section_5"
* item[5].text = "Surgical masks:"
* item[5].type = "group"
* item[5].repeats = false
* item[5].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[5].item.modifierExtension.value[x] = true
* item[5].item.linkId = "surgmasksupply"
* item[5].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#surgmasksupply
* item[5].item.text = "Reusing or Extending Use"
* item[5].item.type = "choice"
* item[5].item.required = false
* item[5].item.repeats = false
* item[5].item.answerOption.value[x] = "Zero days"
* item[5].item.answerOption[1].value[x] = "1-3 days"
* item[5].item.answerOption[2].value[x] = "4-14 days"
* item[5].item.answerOption[3].value[x] = "15 or more days"
* item[5].item[1].linkId = "surgmaskreuse"
* item[5].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#surgmaskreuse
* item[5].item[1].text = "Able to Obtain"
* item[5].item[1].type = "boolean"
* item[5].item[1].required = false
* item[5].item[1].repeats = false
* item[6].linkId = "section_6"
* item[6].text = "Eye protection including face shields or goggles:"
* item[6].type = "group"
* item[6].repeats = false
* item[6].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[6].item.modifierExtension.value[x] = true
* item[6].item.linkId = "shieldsupply"
* item[6].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shieldsupply
* item[6].item.text = "On-hand Supply"
* item[6].item.type = "choice"
* item[6].item.required = false
* item[6].item.repeats = false
* item[6].item.answerOption.value[x] = "Zero days"
* item[6].item.answerOption[1].value[x] = "1-3 days"
* item[6].item.answerOption[2].value[x] = "4-14 days"
* item[6].item.answerOption[3].value[x] = "15 or more days"
* item[6].item[1].linkId = "shieldreuse"
* item[6].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shieldreuse
* item[6].item[1].text = "Reusing or Extending Use"
* item[6].item[1].type = "boolean"
* item[6].item[1].required = false
* item[6].item[1].repeats = false
* item[6].item[2].linkId = "shieldobtain"
* item[6].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shieldobtain
* item[6].item[2].text = "Able to Obtain"
* item[6].item[2].type = "boolean"
* item[6].item[2].required = false
* item[6].item[2].repeats = false
* item[7].linkId = "section_7"
* item[7].text = "Gowns (single use):"
* item[7].type = "group"
* item[7].repeats = false
* item[7].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[7].item.modifierExtension.value[x] = true
* item[7].item.linkId = "gownsupply"
* item[7].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#gownsupply
* item[7].item.text = "On-hand Supply"
* item[7].item.type = "choice"
* item[7].item.required = false
* item[7].item.repeats = false
* item[7].item.answerOption.value[x] = "Zero days"
* item[7].item.answerOption[1].value[x] = "1-3 days"
* item[7].item.answerOption[2].value[x] = "4-14 days"
* item[7].item.answerOption[3].value[x] = "15 or more days"
* item[7].item[1].linkId = "gownreuse"
* item[7].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#gownreuse
* item[7].item[1].text = "Reusing or Extending Use"
* item[7].item[1].type = "boolean"
* item[7].item[1].required = false
* item[7].item[1].repeats = false
* item[7].item[2].linkId = "gownobtain"
* item[7].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#gownobtain
* item[7].item[2].text = "Able to Obtain"
* item[7].item[2].type = "boolean"
* item[7].item[2].required = false
* item[7].item[2].repeats = false
* item[8].linkId = "section_8"
* item[8].text = "Gloves:"
* item[8].type = "group"
* item[8].repeats = false
* item[8].item.modifierExtension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[8].item.modifierExtension.value[x] = true
* item[8].item.linkId = "glovesupply"
* item[8].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#glovesupply
* item[8].item.text = "On-hand Supply"
* item[8].item.type = "choice"
* item[8].item.required = false
* item[8].item.repeats = false
* item[8].item.answerOption.value[x] = "Zero days"
* item[8].item.answerOption[1].value[x] = "1-3 days"
* item[8].item.answerOption[2].value[x] = "4-14 days"
* item[8].item.answerOption[3].value[x] = "15 or more days"
* item[8].item[1].linkId = "glovereuse"
* item[8].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#glovereuse
* item[8].item[1].text = "Reusing or Extending Use"
* item[8].item[1].type = "boolean"
* item[8].item[1].required = false
* item[8].item[1].repeats = false
* item[8].item[2].linkId = "gloveobtain"
* item[8].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#gloveobtain
* item[8].item[2].text = "Able to Obtain"
* item[8].item[2].type = "boolean"
* item[8].item[2].required = false
* item[8].item[2].repeats = false

Instance: CDCHealthcareWorkerStaffingPathway
InstanceOf: Questionnaire
Title: "COVID-19 Healthcare Worker Staffing Pathway"
Description: "SANER implementation of the CDC COVID-19 Healthcare Worker Staffing Pathway"
* id = "CDCHealthcareWorkerStaffingPathway"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* url = "http://hl7.org/fhir/uv/fhir-saner/Questionnaire/CDCHealthcareWorkerStaffingPathway"
* version = "0.1.0"
* name = "CDCHealthcareWorkerStaffingPathway"
* title = "COVID-19 Healthcare Worker Staffing Pathway"
* status = "draft"
* date = "2020-04-27T07:08:50-04:00"
* publisher = "HL7 International"
* description = "SANER implementation of the CDC COVID-19 Healthcare Worker Staffing Pathway"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.value[x].coding = http://snomed.info/sct#840539006
* jurisdiction.coding = urn:iso:std:iso:3166#US
* item.linkId = "section_0"
* item.text = "COVID-19 Module: Healthcare Worker Staffing Pathway"
* item.type = "group"
* item.repeats = false
* item.item.linkId = "facilityId"
* item.item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#facilityId
* item.item.text = "Facility ID #:"
* item.item.type = "string"
* item.item.required = true
* item.item.repeats = false
* item.item[1].linkId = "summaryCensusId"
* item.item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#summaryCensusId
* item.item[1].text = "Summary Census ID #:"
* item.item[1].type = "string"
* item.item[1].required = true
* item.item[1].repeats = false
* item.item[2].linkId = "collectiondate"
* item.item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#collectiondate
* item.item[2].text = "Collection Date: Select the date for which the recorded data was collected for the following questions."
* item.item[2].type = "date"
* item.item[2].required = true
* item.item[2].repeats = false
* item[1].linkId = "section_1"
* item[1].text = "Information:"
* item[1].type = "group"
* item[1].repeats = false
* item[1].item.linkId = "groupToday"
* item[1].item.text = "Critical Staffing Shortage Today: Does your organization consider that it has a critical staffing shortage in this group today?"
* item[1].item.type = "display"
* item[1].item.required = false
* item[1].item.repeats = false
* item[1].item[1].linkId = "groupThisWeek"
* item[1].item[1].text = "Critical Staffing Shortage Within a Week: Does your organization anticipate that it will have a critical staffing shortage in this group within one week?"
* item[1].item[1].type = "display"
* item[1].item[1].required = false
* item[1].item[1].repeats = false
* item[2].linkId = "section_2"
* item[2].text = "Environmental services: Front-line persons who clean patient rooms and all areas in a healthcare facility"
* item[2].type = "group"
* item[2].repeats = false
* item[2].item.linkId = "shortenvsvc"
* item[2].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortenvsvc
* item[2].item.text = "Critical Staffing Shortage Today"
* item[2].item.type = "boolean"
* item[2].item.required = false
* item[2].item.repeats = false
* item[2].item[1].linkId = "posshortenvsvc"
* item[2].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortenvsvc
* item[2].item[1].text = "Critical Staffing Shortage Within a Week"
* item[2].item[1].type = "boolean"
* item[2].item[1].required = false
* item[2].item[1].repeats = false
* item[3].linkId = "section_3"
* item[3].text = "Nurses: Registered nurses and licensed practical nurses"
* item[3].type = "group"
* item[3].repeats = false
* item[3].item.linkId = "shortnurse"
* item[3].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortnurse
* item[3].item.text = "Critical Staffing Shortage Today"
* item[3].item.type = "boolean"
* item[3].item.required = false
* item[3].item.repeats = false
* item[3].item[1].linkId = "posshortnurse"
* item[3].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortnurse
* item[3].item[1].text = "Critical Staffing Shortage Within a Week"
* item[3].item[1].type = "boolean"
* item[3].item[1].required = false
* item[3].item[1].repeats = false
* item[4].linkId = "section_4"
* item[4].text = "Respiratory therapists: Certified medical professionals who specialize in knowledge and use of mechanical ventilation as well as other programs for respiratory care"
* item[4].type = "group"
* item[4].repeats = false
* item[4].item.linkId = "shortrt"
* item[4].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortrt
* item[4].item.text = "Critical Staffing Shortage Today"
* item[4].item.type = "boolean"
* item[4].item.required = false
* item[4].item.repeats = false
* item[4].item[1].linkId = "posshortrt"
* item[4].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortrt
* item[4].item[1].text = "Critical Staffing Shortage Within a Week"
* item[4].item[1].type = "boolean"
* item[4].item[1].required = false
* item[4].item[1].repeats = false
* item[5].linkId = "section_5"
* item[5].text = "Pharmacists and pharmacy techs:"
* item[5].type = "group"
* item[5].repeats = false
* item[5].item.linkId = "shortphar"
* item[5].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortphar
* item[5].item.text = "Critical Staffing Shortage Today"
* item[5].item.type = "boolean"
* item[5].item.required = false
* item[5].item.repeats = false
* item[5].item[1].linkId = "posshortphar"
* item[5].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortphar
* item[5].item[1].text = "Critical Staffing Shortage Within a Week"
* item[5].item[1].type = "boolean"
* item[5].item[1].required = false
* item[5].item[1].repeats = false
* item[6].linkId = "section_6"
* item[6].text = "Physicians: Attending physicians, fellows"
* item[6].type = "group"
* item[6].repeats = false
* item[6].item.linkId = "shortphys"
* item[6].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortphys
* item[6].item.text = "Critical Staffing Shortage Today"
* item[6].item.type = "boolean"
* item[6].item.required = false
* item[6].item.repeats = false
* item[6].item[1].linkId = "posshortphys"
* item[6].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortphys
* item[6].item[1].text = "Critical Staffing Shortage Within a Week"
* item[6].item[1].type = "boolean"
* item[6].item[1].required = false
* item[6].item[1].repeats = false
* item[7].linkId = "section_7"
* item[7].text = "Temporary physicians, nurses, respiratory therapists, and pharmacists: 'per diems', 'travelers', retired, or other seasonal or intermittently contracted persons"
* item[7].type = "group"
* item[7].repeats = false
* item[7].item.linkId = "shorttemp"
* item[7].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shorttemp
* item[7].item.text = "Critical Staffing Shortage Today"
* item[7].item.type = "boolean"
* item[7].item.required = false
* item[7].item.repeats = false
* item[7].item[1].linkId = "posshorttemp"
* item[7].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshorttemp
* item[7].item[1].text = "Critical Staffing Shortage Within a Week"
* item[7].item[1].type = "boolean"
* item[7].item[1].required = false
* item[7].item[1].repeats = false
* item[8].linkId = "section_8"
* item[8].text = "Other licensed independent practitioners: Advanced practice nurses, physician assistants"
* item[8].type = "group"
* item[8].repeats = false
* item[8].item.linkId = "shortothlic"
* item[8].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortothlic
* item[8].item.text = "Critical Staffing Shortage Today"
* item[8].item.type = "boolean"
* item[8].item.required = false
* item[8].item.repeats = false
* item[8].item[1].linkId = "posshortothlic"
* item[8].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortothlic
* item[8].item[1].text = "Critical Staffing Shortage Within a Week"
* item[8].item[1].type = "boolean"
* item[8].item[1].required = false
* item[8].item[1].repeats = false
* item[9].linkId = "section_9"
* item[9].text = "Other HCP: Persons who work in the facility, regardless of clinical responsibility or patient contact not included in categories above"
* item[9].type = "group"
* item[9].repeats = false
* item[9].item.linkId = "shortoth"
* item[9].item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortoth
* item[9].item.text = "Critical Staffing Shortage Today"
* item[9].item.type = "boolean"
* item[9].item.required = false
* item[9].item.repeats = false
* item[9].item[1].linkId = "shortothsfy"
* item[9].item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#shortothsfy
* item[9].item[1].text = "Other HCP - Specify the groups"
* item[9].item[1].type = "string"
* item[9].item[1].required = false
* item[9].item[1].repeats = false
* item[9].item[2].linkId = "posshortoth"
* item[9].item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortoth
* item[9].item[2].text = "Critical Staffing Shortage Within a Week"
* item[9].item[2].type = "boolean"
* item[9].item[2].required = false
* item[9].item[2].repeats = false
* item[9].item[3].linkId = "posshortothsfy"
* item[9].item[3].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#posshortothsfy
* item[9].item[3].text = "Other HCP - Specify the groups"
* item[9].item[3].type = "string"
* item[9].item[3].required = false
* item[9].item[3].repeats = false

Instance: FEMADailyHospitalCOVID19Reporting
InstanceOf: Questionnaire
Title: "SANER FEMA Template for daily Hospital COVID-19 Reporting"
Description: "SANER implementation of the FEMA Template for daily Hospital COVID-19 Reporting"
* id = "FEMADailyHospitalCOVID19Reporting"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* url = "http://hl7.org/fhir/uv/fhir-saner/Questionnaire/FEMADailyHospitalCOVID19Reporting"
* version = "0.1.0"
* name = "FEMADailyHospitalCOVID19Reporting"
* title = "SANER FEMA Template for daily Hospital COVID-19 Reporting"
* status = "draft"
* date = "2020-04-27T07:08:50-04:00"
* publisher = "HL7 International"
* description = "SANER implementation of the FEMA Template for daily Hospital COVID-19 Reporting"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.value[x].coding = http://snomed.info/sct#840539006
* jurisdiction.coding = urn:iso:std:iso:3166#US
* item.linkId = "section_0"
* item.text = "Daily Hospital COVID-19 Reporting"
* item.type = "group"
* item.repeats = false
* item.item.linkId = "collectionDate"
* item.item.code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#collectionDate
* item.item.text = "Date:"
* item.item.type = "date"
* item.item.required = true
* item.item.repeats = false
* item.item[1].linkId = "state"
* item.item[1].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#state
* item.item[1].text = "State:"
* item.item[1].type = "string"
* item.item[1].required = false
* item.item[1].repeats = false
* item.item[2].linkId = "county"
* item.item[2].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#county
* item.item[2].text = "County:"
* item.item[2].type = "string"
* item.item[2].required = false
* item.item[2].repeats = false
* item.item[3].linkId = "totalOrdersIncrease"
* item.item[3].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#totalOrdersIncrease
* item.item[3].text = "New Diagnostic Tests Ordered/Received: Midnight to midnight cutoff, tests ordered on previous date queried."
* item.item[3].type = "integer"
* item.item[3].required = false
* item.item[3].repeats = false
* item.item[4].linkId = "totalOrders"
* item.item[4].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#totalOrders
* item.item[4].text = "Cumulative Diagnostic Tests Ordered/Received: All tests ordered to date."
* item.item[4].type = "integer"
* item.item[4].required = false
* item.item[4].repeats = false
* item.item[5].linkId = "totalTestResultsIncrease"
* item.item[5].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#totalTestResultsIncrease
* item.item[5].text = "New Tests Resulted: Midnight to midnight cutoff, test results released on previous date queried."
* item.item[5].type = "integer"
* item.item[5].required = false
* item.item[5].repeats = false
* item.item[6].linkId = "rejected"
* item.item[6].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#rejected
* item.item[6].text = "Cumulative Specimens Rejected: All specimens rejected for testing to date."
* item.item[6].type = "integer"
* item.item[6].required = false
* item.item[6].repeats = false
* item.item[7].linkId = "totalTestResults"
* item.item[7].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#totalTestResults
* item.item[7].text = "Cumulative Tests Performed: All tests with results released to date."
* item.item[7].type = "integer"
* item.item[7].required = false
* item.item[7].repeats = false
* item.item[8].linkId = "positiveIncrease"
* item.item[8].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#positiveIncrease
* item.item[8].text = "New Positive COVID-19 Tests: Midnight to midnight cutoff, positive test results released on the previous date queried."
* item.item[8].type = "integer"
* item.item[8].required = false
* item.item[8].repeats = false
* item.item[9].linkId = "positive"
* item.item[9].code = http://hl7.org/fhir/uv/fhir-saner/CodeSystem/MeasuredValues#positive
* item.item[9].text = "Cumulative Positive COVID-19 Tests: All positive test results released to date."
* item.item[9].type = "integer"
* item.item[9].required = false
* item.item[9].repeats = false

