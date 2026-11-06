# Pasient - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pasient**

## Resource Profile: Pasient ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/mal/StructureDefinition/joda-pasient | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaPasient |

 
Pasienten som har såret. Bygger på pasientprofilen i no-basis. 

**Usages:**

* Refer to this Profile: [Sårbilde](StructureDefinition-joda-sarbilde.md), [Sårdokument til journal](StructureDefinition-joda-sardokument.md) and [Sårvurdering](StructureDefinition-joda-sarvurdering.md)
* Examples for this Profile: [Patient/Pasient-Karin](Patient-Pasient-Karin.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.no.mal|current/StructureDefinition/StructureDefinition-joda-pasient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-joda-pasient.csv), [Excel](StructureDefinition-joda-pasient.xlsx), [Schematron](StructureDefinition-joda-pasient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "joda-pasient",
  "url" : "http://hl7.no/fhir/ig/mal/StructureDefinition/joda-pasient",
  "version" : "0.1.0",
  "name" : "JodaPasient",
  "title" : "Pasient",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06T17:24:45+00:00",
  "publisher" : "HL7 Norge",
  "contact" : [{
    "name" : "HL7 Norge",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7.no"
    }]
  }],
  "description" : "Pasienten som har såret. Bygger på pasientprofilen i no-basis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    }]
  }
}

```
