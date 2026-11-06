# Væsking - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Væsking**

## CodeSystem: Væsking (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/mal/CodeSystem/joda-vaesking | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaVaesking |

 
Hvor mye såret væsker. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Væsking](ValueSet-joda-vaesking-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-vaesking",
  "url" : "http://hl7.no/fhir/ig/mal/CodeSystem/joda-vaesking",
  "version" : "0.1.0",
  "name" : "JodaVaesking",
  "title" : "Væsking",
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
  "description" : "Hvor mye såret væsker.",
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
    "code" : "ingen",
    "display" : "Ingen"
  },
  {
    "code" : "lite",
    "display" : "Lite"
  },
  {
    "code" : "moderat",
    "display" : "Moderat"
  },
  {
    "code" : "mye",
    "display" : "Mye"
  }]
}

```
