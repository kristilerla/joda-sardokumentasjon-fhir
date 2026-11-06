# Sårbunn - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårbunn**

## CodeSystem: Sårbunn (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/mal/CodeSystem/joda-sarbunn | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaSarbunn |

 
Hva sårbunnen hovedsakelig består av. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Sårbunn](ValueSet-joda-sarbunn-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-sarbunn",
  "url" : "http://hl7.no/fhir/ig/mal/CodeSystem/joda-sarbunn",
  "version" : "0.1.0",
  "name" : "JodaSarbunn",
  "title" : "Sårbunn",
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
  "description" : "Hva sårbunnen hovedsakelig består av.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "granulasjon",
    "display" : "Granulasjonsvev"
  },
  {
    "code" : "fibrin",
    "display" : "Fibrin (belegg)"
  },
  {
    "code" : "nekrose",
    "display" : "Nekrose"
  },
  {
    "code" : "epitel",
    "display" : "Epitelisering"
  }]
}

```
