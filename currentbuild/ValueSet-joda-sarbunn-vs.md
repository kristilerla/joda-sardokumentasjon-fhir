# Sårbunn - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårbunn**

## ValueSet: Sårbunn (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-sarbunn-vs | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaSarbunnVS |

 
Hva sårbunnen hovedsakelig består av. SNOMED CT-koder fra woundBedAppearanceVS i HL7 Lower Extremity Skin Wound Assessment IG. 

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
  "id" : "joda-sarbunn-vs",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-sarbunn-vs",
  "version" : "0.1.0",
  "name" : "JodaSarbunnVS",
  "title" : "Sårbunn",
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
  "description" : "Hva sårbunnen hovedsakelig består av. SNOMED CT-koder fra woundBedAppearanceVS i HL7 Lower Extremity Skin Wound Assessment IG.",
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
        "code" : "225541009",
        "display" : "Granulation of tissue"
      },
      {
        "code" : "449745003",
        "display" : "Fibrinous wound bed"
      },
      {
        "code" : "449746002",
        "display" : "Wound slough"
      },
      {
        "code" : "421306004",
        "display" : "Necrotic eschar"
      },
      {
        "code" : "609410002",
        "display" : "Necrosis of anatomical site"
      },
      {
        "code" : "409590008",
        "display" : "Skin eschar"
      },
      {
        "code" : "449743005",
        "display" : "Wound epithelialization"
      }]
    }]
  }
}

```
