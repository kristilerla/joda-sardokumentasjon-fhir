# Kameratype - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kameratype**

## CodeSystem: Kameratype (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/mal/CodeSystem/joda-kameratype | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaKameratype |

 
Hva slags kamera bildet er tatt med. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Kameratype](ValueSet-joda-kameratype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-kameratype",
  "url" : "http://hl7.no/fhir/ig/mal/CodeSystem/joda-kameratype",
  "version" : "0.1.0",
  "name" : "JodaKameratype",
  "title" : "Kameratype",
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
  "description" : "Hva slags kamera bildet er tatt med.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "mobil",
    "display" : "Mobiltelefon eller nettbrett",
    "definition" : "Pasientens, pårørendes eller den ansattes egen mobil eller nettbrett, via JodaCare."
  },
  {
    "code" : "hodekamera",
    "display" : "Hodekamera",
    "definition" : "Jodapro hodekamera brukt av helsepersonell."
  }]
}

```
