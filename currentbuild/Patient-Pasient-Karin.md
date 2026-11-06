# Karin Testdal - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Karin Testdal**

## Example Patient: Karin Testdal

Profile: [Pasient](StructureDefinition-joda-pasient.md)

Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Pasient-Karin",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/mal/StructureDefinition/joda-pasient"]
  },
  "identifier" : [{
    "system" : "https://example.org/oppdiktet/pasient-id",
    "value" : "testpasient-karin"
  }],
  "name" : [{
    "family" : "Testdal",
    "given" : ["Karin"]
  }],
  "gender" : "female",
  "birthDate" : "1948-03-13"
}

```
