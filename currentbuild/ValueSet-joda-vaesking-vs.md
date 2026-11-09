# Væsking - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Væsking**

## ValueSet: Væsking (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-vaesking-vs | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaVaeskingVS |

 
Hvor mye såret væsker. SNOMED CT-koder fra woundExudateAmountDescriptionVS i HL7 Lower Extremity Skin Wound Assessment IG. 

 **References** 

* [Sårvurdering](StructureDefinition-joda-sarvurdering.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "joda-vaesking-vs",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-vaesking-vs",
  "version" : "0.1.0",
  "name" : "JodaVaeskingVS",
  "title" : "Væsking",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-09T12:33:10+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Hvor mye såret væsker. SNOMED CT-koder fra woundExudateAmountDescriptionVS i HL7 Lower Extremity Skin Wound Assessment IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "260413007",
        "display" : "None"
      },
      {
        "code" : "263865001",
        "display" : "Scanty"
      },
      {
        "code" : "255507004",
        "display" : "Small"
      },
      {
        "code" : "6736007",
        "display" : "Moderate"
      },
      {
        "code" : "255509001",
        "display" : "Large"
      }]
    }]
  }
}

```
