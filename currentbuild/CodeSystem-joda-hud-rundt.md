# Huden rundt såret - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Huden rundt såret**

## CodeSystem: Huden rundt såret (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-hud-rundt | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaHudRundt |

 
Tilstanden til huden rundt såret. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Huden rundt såret](ValueSet-joda-hud-rundt-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-hud-rundt",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-hud-rundt",
  "version" : "0.1.0",
  "name" : "JodaHudRundt",
  "title" : "Huden rundt såret",
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
  "description" : "Tilstanden til huden rundt såret.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "normal",
    "display" : "Normal"
  },
  {
    "code" : "rod",
    "display" : "Rød"
  },
  {
    "code" : "maserert",
    "display" : "Maserert (oppbløtt)"
  },
  {
    "code" : "hoven",
    "display" : "Hoven"
  },
  {
    "code" : "torr",
    "display" : "Tørr eller skjellende"
  }]
}

```
