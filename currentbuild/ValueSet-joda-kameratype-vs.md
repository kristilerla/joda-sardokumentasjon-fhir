# Kameratype - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kameratype**

## ValueSet: Kameratype (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-kameratype-vs | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaKameratypeVS |

 
Gyldige kameratyper. 

 **References** 

* [Kamera](StructureDefinition-joda-kamera.md)

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
  "id" : "joda-kameratype-vs",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-kameratype-vs",
  "version" : "0.1.0",
  "name" : "JodaKameratypeVS",
  "title" : "Kameratype",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06T17:48:45+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Gyldige kameratyper.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-kameratype"
    }]
  }
}

```
