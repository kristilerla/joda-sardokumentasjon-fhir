# Sårvurdering - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårvurdering**

## CodeSystem: Sårvurdering (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaSarvurderingKode |

 
Egne koder for felt i sårvurderingen som ennå ikke har en LOINC-kode i guiden. De andre feltene bruker LOINC. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-sarvurdering-kode",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
  "version" : "0.1.0",
  "name" : "JodaSarvurderingKode",
  "title" : "Sårvurdering",
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
  "description" : "Egne koder for felt i sårvurderingen som ennå ikke har en LOINC-kode i guiden. De andre feltene bruker LOINC.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "infeksjonstegn",
    "display" : "Tegn på infeksjon",
    "definition" : "Om det er tegn på infeksjon, for eksempel rødme, varme, hevelse eller lukt."
  }]
}

```
