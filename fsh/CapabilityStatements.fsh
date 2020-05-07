Instance: MeasureConsumerPull
InstanceOf: CapabilityStatement
Title: "Measure Consumer - Pull Option (Client)"
Usage: #definition
Mixins: SanerCapabilityStatementContent, CapabilityStatementPullOption
  * rest.mode = #client
  * rest.documentation = """
    The Measure Consumer provides access to aggregated or fine-grained data gathered from one or more Measure Sources.
    The Measure Consumer provides the ability to report on data from one or more Measure Sources.
    A Measure Consumer implementing the Pull Option periodically queries a Measure Source using the Query Measure transaction to enable collection of the current status.
  """

Instance: MeasureSourcePull
InstanceOf: CapabilityStatement
Title: "Measure Source - Pull Option (Server)"
Usage: #definition
Mixins: SanerCapabilityStatementContent, CapabilityStatementPullOption
  * rest.mode = #server
  * rest.documentation = """
    The Measure Source Actor reports results for a single facility, collection of facilities or aggregated data for a region.
    In a single facility, or organization, the Measure Source Actor will compile data directly from the facility or organization source systems.
    A Measure Source may also exist in an Aggregator, Intermediary or Bridging role. In this guide we will use the term Intermediary to describe these roles.
    A Measure Source provides the FHIR data that is used by a Measure Consumer.
    A Measure Source implementing the Pull Option is periodically queried by a Measure Consumer using the Query Measure transaction to enable collection of the current status.
  """

Instance: MeasureSourcePush
InstanceOf: CapabilityStatement
Title: "Measure Source - Push Option (Client)"
Usage: #definition
Mixins: SanerCapabilityStatementContent, CapabilityStatementPushOption
  * rest.mode = #client
  * rest.documentation = """
    The Measure Source Actor reports results for a single facility, collection of facilities or aggregated data for a region.
    In a single facility, or organization, the Measure Source Actor will compile data directly from the facility or organization source systems.
    A Measure Source may also exist in an Aggregator, Intermediary or Bridging role. In this guide we will use the term Intermediary to describe these roles.
    A Measure Source provides the FHIR data that is used by a Measure Consumer.
    A Measure Source implementing the Push Option periodically sends updates to a Measure Consumer using the Produce Measure transaction.
  """

Instance: MeasureConsumerPush
InstanceOf: CapabilityStatement
Title: "Measure Consumer - Push Option (Server)"
Usage: #definition
Mixins: SanerCapabilityStatementContent, CapabilityStatementPushOption
  * rest.mode = #server
  * rest.documentation = """
    The Measure Consumer provides access to aggregated or fine-grained data gathered from one or more Measure Sources.
    The Measure Consumer provides the ability to report on data from one or more Measure Sources.
    A Measure Consumer implementing the Push Option periodically recieves updates from the Measure Source using the Produce Measure transaction.
  """

RuleSet: CapabilityStatementPushOption
  // MeasureReport requirements
  * rest.resource[0].type = #MeasureReport
  * rest.resource[0].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureReport"
  // SHALL support MeasureReport with the PublicHealthMeasureReport Profile
  * rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].extension[0].valueCode = #SHALL
  // SHALL support create on MeasureReport
  * rest.resource[0].interaction[0].code = #create
  * rest.resource[0].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on MeasureReport
  * rest.resource[0].interaction[1].code = #update
  * rest.resource[0].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[1].extension[0].valueCode = #SHALL

  // Measure requirements
  * rest.resource[1].type = #Measure
  * rest.resource[1].supportedProfile[0] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasure"
  * rest.resource[1].supportedProfile[1] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureStratifier"
  // SHOULD support Measure with the PublicHealthMeasure and PublicHealthMeasureStratifier Profile
  * rest.resource[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].extension[0].valueCode = #SHOULD
  // SHOULD support create on Measure
  * rest.resource[1].interaction[0].code = #create
  * rest.resource[1].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Measure
  * rest.resource[1].interaction[1].code = #update
  * rest.resource[1].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[1].extension[0].valueCode = #SHOULD

  // Location requirements
  * rest.resource[2].type = #Location
  * rest.resource[2].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/saner-resource-location"
  // SHOULD support Location with the SANERResourceLocation Profile
  * rest.resource[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].extension[0].valueCode = #SHOULD
  // SHOULD support create on Location
  * rest.resource[2].interaction[0].code = #create
  * rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Location
  * rest.resource[2].interaction[1].code = #update
  * rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[1].extension[0].valueCode = #SHOULD

  // Organization requirements
  * rest.resource[2].type = #Organization
  // SHOULD support Organization
  * rest.resource[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].extension[0].valueCode = #SHOULD
  // SHOULD support create on Organization
  * rest.resource[2].interaction[0].code = #create
  * rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Organization
  * rest.resource[2].interaction[1].code = #update
  * rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[1].extension[0].valueCode = #SHOULD

  // QuestionnaireResponse requirements
  * rest.resource[3].type = #QuestionnaireResponse
  // SHALL support QuestionnaireResponse
  * rest.resource[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].extension[0].valueCode = #SHALL
  // SHALL support create on QuestionnaireResponse
  * rest.resource[3].interaction[0].code = #create
  * rest.resource[3].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on QuestionnaireResponse
  * rest.resource[3].interaction[1].code = #update
  * rest.resource[3].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[1].extension[0].valueCode = #SHALL

  // Questionnaire requirements
  * rest.resource[4].type = #Questionnaire
  // SHALL support Questionnaire
  * rest.resource[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].extension[0].valueCode = #SHALL
  // SHALL support create on Questionnaire
  * rest.resource[4].interaction[0].code = #create
  * rest.resource[4].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support update on Questionnaire
  * rest.resource[4].interaction[1].code = #update
  * rest.resource[4].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[1].extension[0].valueCode = #SHALL

RuleSet: CapabilityStatementPullOption
  // MeasureReport requirements
  * rest.resource[0].type = #MeasureReport
  * rest.resource[0].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureReport"
  // SHALL support MeasureReport with the PublicHealthMeasureReport Profile
  * rest.resource[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].extension[0].valueCode = #SHALL
  // SHALL support read on MeasureReport
  * rest.resource[0].interaction[0].code = #read
  * rest.resource[0].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support search on MeasureReport
  * rest.resource[0].interaction[1].code = #search-type
  * rest.resource[0].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].interaction[1].extension[0].valueCode = #SHALL
  // SHALL support search by _id
  * rest.resource[0].searchParam[0].name = "_id"
  * rest.resource[0].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
  * rest.resource[0].searchParam[0].type = #token
  * rest.resource[0].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[0].extension[0].valueCode = #SHALL
  // SHALL support search by _lastUpdated
  * rest.resource[0].searchParam[1].name = "_lastUpdated"
  * rest.resource[0].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
  * rest.resource[0].searchParam[1].type = #date
  * rest.resource[0].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[1].extension[0].valueCode = #SHALL
  // SHALL support search by date
  * rest.resource[0].searchParam[2].name = "date"
  * rest.resource[0].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-date"
  * rest.resource[0].searchParam[2].type = #date
  * rest.resource[0].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[2].extension[0].valueCode = #SHALL
  // SHALL support search by measure
  * rest.resource[0].searchParam[3].name = "measure"
  * rest.resource[0].searchParam[3].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-measure"
  * rest.resource[0].searchParam[3].type = #reference
  * rest.resource[0].searchParam[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[3].extension[0].valueCode = #SHALL
  // SHALL support search by subject
  // TODO: a SearchParameter should be defined that constrains this to only Location references
  // TODO: a SearchParameter should be defined that only allows the :Identifier modifier.  Should this also be constrained only to LocatioN?
  * rest.resource[0].searchParam[4].name = "subject"
  * rest.resource[0].searchParam[4].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-subject"
  * rest.resource[0].searchParam[4].type = #reference
  * rest.resource[0].searchParam[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[4].extension[0].valueCode = #SHALL
  // SHALL support search by period
  * rest.resource[0].searchParam[5].name = "period"
  * rest.resource[0].searchParam[5].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-period"
  * rest.resource[0].searchParam[5].type = #date
  * rest.resource[0].searchParam[5].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[5].extension[0].valueCode = #SHALL
  // SHALL support search by reporter
  // TODO: a SearchParameter should be defined that allows the identifier modifier
  * rest.resource[0].searchParam[6].name = "reporter"
  * rest.resource[0].searchParam[6].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-reporter"
  * rest.resource[0].searchParam[6].type = #reference
  * rest.resource[0].searchParam[6].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[6].extension[0].valueCode = #SHALL
  //SHALL support _include for any resource
  * rest.resource[0].searchInclude[0] = "*"
  * rest.resource[0].searchInclude[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchInclude[0].extension[0].valueCode = #SHALL
  // SHOULD support search by code
  * rest.resource[0].searchParam[1].name = "code"
  * rest.resource[0].searchParam[1].definition = "http://hl7.org/fhir/us/saner/SearchParameter/code"
  * rest.resource[0].searchParam[1].type = #token
  * rest.resource[0].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[0].searchParam[1].extension[0].valueCode = #SHOULD
  // TODO: a SearchParameter for measure.title chained search as a SHOULD

  // Location requirements
  * rest.resource[1].type = #Location
  * rest.resource[1].supportedProfile = "http://hl7.org/fhir/us/saner/StructureDefinition/saner-resource-location"
  // SHOULD support Location with the SANERResourceLocation Profile
  * rest.resource[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].extension[0].valueCode = #SHALL
  // SHOULD support read on Location
  * rest.resource[1].interaction[0].code = #read
  * rest.resource[1].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[0].extension[0].valueCode = #SHALL
  // SHOULD support search on Location
  * rest.resource[1].interaction[1].code = #search-type
  * rest.resource[1].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].interaction[1].extension[0].valueCode = #SHALL
  // SHALL support search by _id
  * rest.resource[1].searchParam[0].name = "_id"
  * rest.resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
  * rest.resource[1].searchParam[0].type = #token
  * rest.resource[1].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[0].extension[0].valueCode = #SHALL
  // SHALL support search by _lastUpdated
  * rest.resource[1].searchParam[1].name = "_lastUpdated"
  * rest.resource[1].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
  * rest.resource[1].searchParam[1].type = #date
  * rest.resource[1].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[1].extension[0].valueCode = #SHALL
  // SHALL support search by name
  * rest.resource[1].searchParam[2].name = "name"
  * rest.resource[1].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/Location-name"
  * rest.resource[1].searchParam[2].type = #string
  * rest.resource[1].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[2].extension[0].valueCode = #SHALL
  // SHALL support search by identifier
  * rest.resource[1].searchParam[3].name = "identifier"
  * rest.resource[1].searchParam[3].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
  * rest.resource[1].searchParam[3].type = #token
  * rest.resource[1].searchParam[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[3].extension[0].valueCode = #SHALL
  // SHALL support search by address
  * rest.resource[1].searchParam[4].name = "address"
  * rest.resource[1].searchParam[4].definition = "http://hl7.org/fhir/SearchParameter/Location-address"
  * rest.resource[1].searchParam[4].type = #string
  * rest.resource[1].searchParam[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[4].extension[0].valueCode = #SHALL
  // SHALL support search by address-city
  * rest.resource[1].searchParam[5].name = "address-city"
  * rest.resource[1].searchParam[5].definition = "http://hl7.org/fhir/SearchParameter/Location-address-city"
  * rest.resource[1].searchParam[5].type = #string
  * rest.resource[1].searchParam[5].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[5].extension[0].valueCode = #SHALL
  // SHALL support search by address-country
  * rest.resource[1].searchParam[6].name = "address-country"
  * rest.resource[1].searchParam[6].definition = "http://hl7.org/fhir/SearchParameter/Location-address-country"
  * rest.resource[1].searchParam[6].type = #string
  * rest.resource[1].searchParam[6].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[6].extension[0].valueCode = #SHALL
  // SHALL support search by address-postalcode
  * rest.resource[1].searchParam[7].name = "address-postalcode"
  * rest.resource[1].searchParam[7].definition = "http://hl7.org/fhir/SearchParameter/Location-address-postalcode"
  * rest.resource[1].searchParam[7].type = #string
  * rest.resource[1].searchParam[7].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[7].extension[0].valueCode = #SHALL
  // SHALL support search by address-state
  * rest.resource[1].searchParam[8].name = "address-state"
  * rest.resource[1].searchParam[8].definition = "http://hl7.org/fhir/SearchParameter/Location-address-state"
  * rest.resource[1].searchParam[8].type = #string
  * rest.resource[1].searchParam[8].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[8].extension[0].valueCode = #SHALL
  // SHALL support search by address-use
  * rest.resource[1].searchParam[9].name = "address-use"
  * rest.resource[1].searchParam[9].definition = "http://hl7.org/fhir/SearchParameter/Location-address-use"
  * rest.resource[1].searchParam[9].type = #string
  * rest.resource[1].searchParam[9].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[1].searchParam[9].extension[0].valueCode = #SHALL

  // Organization requirements
  * rest.resource[2].type = #Organization
  // SHOULD support Organization
  * rest.resource[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].extension[0].valueCode = #SHALL
  // SHOULD support create on Organization
  * rest.resource[2].interaction[0].code = #read
  * rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[0].extension[0].valueCode = #SHALL
  // SHOULD support update on Organization
  * rest.resource[2].interaction[1].code = #search-type
  * rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].interaction[1].extension[0].valueCode = #SHALL
  // SHALL support search by _id
  * rest.resource[2].searchParam[0].name = "_id"
  * rest.resource[2].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
  * rest.resource[2].searchParam[0].type = #token
  * rest.resource[2].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].searchParam[0].extension[0].valueCode = #SHALL
  // SHALL support search by _lastUpdated
  * rest.resource[2].searchParam[1].name = "_lastUpdated"
  * rest.resource[2].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
  * rest.resource[2].searchParam[1].type = #date
  * rest.resource[2].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].searchParam[1].extension[0].valueCode = #SHALL
  // SHALL support search by name
  * rest.resource[2].searchParam[2].name = "name"
  * rest.resource[2].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/Location-name"
  * rest.resource[2].searchParam[2].type = #string
  * rest.resource[2].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].searchParam[2].extension[0].valueCode = #SHALL
  // SHALL support search by identifier
  * rest.resource[2].searchParam[3].name = "identifier"
  * rest.resource[2].searchParam[3].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
  * rest.resource[2].searchParam[3].type = #token
  * rest.resource[2].searchParam[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[2].searchParam[3].extension[0].valueCode = #SHALL

  // Measure requirements
  * rest.resource[3].type = #Measure
  * rest.resource[3].supportedProfile[0] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasure"
  * rest.resource[3].supportedProfile[1] = "http://hl7.org/fhir/us/saner/StructureDefinition/PublicHealthMeasureStratifier"
  // SHOULD support Measure with the PublicHealthMeasure and PublicHealthMeasureStratifier Profile
  * rest.resource[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].extension[0].valueCode = #SHOULD
  // SHOULD support read on Measure
  * rest.resource[3].interaction[0].code = #read
  * rest.resource[3].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update on Measure
  * rest.resource[3].interaction[1].code = #search-type
  * rest.resource[3].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].interaction[1].extension[0].valueCode = #SHOULD
  // SHOULD support search by url
  * rest.resource[3].searchParam[0].name = "url"
  * rest.resource[3].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Measure-url"
  * rest.resource[3].searchParam[0].type = #uri
  * rest.resource[3].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].searchParam[0].extension[0].valueCode = #SHOULD
  // SHOULD support search by code
  * rest.resource[3].searchParam[1].name = "code"
  * rest.resource[3].searchParam[1].definition = "http://hl7.org/fhir/us/saner/SearchParameter/code"
  * rest.resource[3].searchParam[1].type = #token
  * rest.resource[3].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].searchParam[1].extension[0].valueCode = #SHOULD
  // SHOULD support search by definition-text
  * rest.resource[3].searchParam[2].name = "definition-text"
  * rest.resource[3].searchParam[2].definition = "http://hl7.org/fhir/us/saner/SearchParameter/definition-text"
  * rest.resource[3].searchParam[2].type = #string
  * rest.resource[3].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[3].searchParam[2].extension[0].valueCode = #SHOULD

  // QuestionnaireResponse requirements
  * rest.resource[4].type = #QuestionnaireResponse
  // SHALL support QuestionnaireResponse
  * rest.resource[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].extension[0].valueCode = #SHALL
  // SHALL support read
  * rest.resource[4].interaction[0].code = #read
  * rest.resource[4].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[0].extension[0].valueCode = #SHALL
  // SHALL support search
  * rest.resource[4].interaction[1].code = #search-type
  * rest.resource[4].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].interaction[1].extension[0].valueCode = #SHALL
  // SHALL support search by _id
  * rest.resource[4].searchParam[0].name = "_id"
  * rest.resource[4].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
  * rest.resource[4].searchParam[0].type = #token
  * rest.resource[4].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].searchParam[0].extension[0].valueCode = #SHALL
  // SHALL support search by _lastUpdated
  * rest.resource[4].searchParam[1].name = "_lastUpdated"
  * rest.resource[4].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
  * rest.resource[4].searchParam[1].type = #date
  * rest.resource[4].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].searchParam[1].extension[0].valueCode = #SHALL
  // SHALL support search by subject
  // TODO: a SearchParameter should be defined that constrains this to only Location references
  // TODO: a SearchParameter should be defined that only allows the :Identifier modifier.  Should this also be constrained only to LocatioN?
  * rest.resource[4].searchParam[2].name = "subject"
  * rest.resource[4].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-subject"
  * rest.resource[4].searchParam[2].type = #reference
  * rest.resource[4].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].searchParam[2].extension[0].valueCode = #SHALL
  // SHOULD support search by code
  * rest.resource[4].searchParam[3].name = "code"
  * rest.resource[4].searchParam[3].definition = "http://hl7.org/fhir/us/saner/SearchParameter/code"
  * rest.resource[4].searchParam[3].type = #token
  * rest.resource[4].searchParam[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].searchParam[3].extension[0].valueCode = #SHOULD
  //SHALL support _include for any resource
  * rest.resource[4].searchInclude[0] = "*"
  * rest.resource[4].searchInclude[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[4].searchInclude[0].extension[0].valueCode = #SHALL

  // Questionnaire requirements
  * rest.resource[5].type = #Questionnaire
  // SHOULD support Measure with the PublicHealthMeasure and PublicHealthMeasureStratifier Profile
  * rest.resource[5].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].extension[0].valueCode = #SHOULD
  // SHOULD support read
  * rest.resource[5].interaction[0].code = #read
  * rest.resource[5].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].interaction[0].extension[0].valueCode = #SHOULD
  // SHOULD support update
  * rest.resource[5].interaction[1].code = #search-type
  * rest.resource[5].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].interaction[1].extension[0].valueCode = #SHOULD
  // SHOULD support search by url
  * rest.resource[5].searchParam[0].name = "url"
  * rest.resource[5].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Measure-url"
  * rest.resource[5].searchParam[0].type = #uri
  * rest.resource[5].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].searchParam[0].extension[0].valueCode = #SHOULD
  // SHOULD support search by code
  * rest.resource[5].searchParam[1].name = "code"
  * rest.resource[5].searchParam[1].definition = "http://hl7.org/fhir/us/saner/SearchParameter/code"
  * rest.resource[5].searchParam[1].type = #token
  * rest.resource[5].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].searchParam[1].extension[0].valueCode = #SHOULD
  // SHOULD support search by definition-text
  * rest.resource[5].searchParam[2].name = "definition-text"
  * rest.resource[5].searchParam[2].definition = "http://hl7.org/fhir/us/saner/SearchParameter/definition-text"
  * rest.resource[5].searchParam[2].type = #string
  * rest.resource[5].searchParam[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * rest.resource[5].searchParam[2].extension[0].valueCode = #SHOULD
