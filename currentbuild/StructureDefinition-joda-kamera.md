# Kamera - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kamera**

## Resource Profile: Kamera ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaKamera |

 
Kameraet bildet er tatt med: en mobil eller et nettbrett via JodaCare, eller et Jodapro hodekamera. 

**Usages:**

* Refer to this Profile: [Sårbilde](StructureDefinition-joda-sarbilde.md)
* Examples for this Profile: [Device/Kamera-Jodapro](Device-Kamera-Jodapro.md) and [Device/Kamera-Mobil](Device-Kamera-Mobil.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/joda.fhir.sardokumentasjon|current/StructureDefinition/StructureDefinition-joda-kamera.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-joda-kamera.csv), [Excel](StructureDefinition-joda-kamera.xlsx), [Schematron](StructureDefinition-joda-kamera.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "joda-kamera",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera",
  "version" : "0.1.0",
  "name" : "JodaKamera",
  "title" : "Kamera",
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
  "description" : "Kameraet bildet er tatt med: en mobil eller et nettbrett via JodaCare, eller et Jodapro hodekamera.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-kameratype-vs"
      }
    }]
  }
}

```
