# Lise Testdal - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lise Testdal**

## Example RelatedPerson: Lise Testdal

Lise Testdal - natural daughter

-------

| | |
| :--- | :--- |
| Patient: | [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md) |
| Relationship: | natural daughter |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "Datter-Lise",
  "patient" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "DAU",
      "display" : "natural daughter"
    }]
  }],
  "name" : [{
    "family" : "Testdal",
    "given" : ["Lise"]
  }]
}

```
