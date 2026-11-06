# Sårbilde - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårbilde**

## Resource Profile: Sårbilde ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde | *Version*:0.1.0 |
| Draft as of 2026-11-06 | *Computable Name*:JodaSarbilde |

 
Et bilde av et sår. Kan være tatt av pasienten selv, av en pårørende eller av helsepersonell. 

**Usages:**

* Refer to this Profile: [Sårvurdering](StructureDefinition-joda-sarvurdering.md)
* Examples for this Profile: [Media/Sarbilde-Besok-1](Media-Sarbilde-Besok-1.md) and [Media/Sarbilde-Hjemme-1](Media-Sarbilde-Hjemme-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/joda.fhir.sardokumentasjon|current/StructureDefinition/StructureDefinition-joda-sarbilde.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-joda-sarbilde.csv), [Excel](StructureDefinition-joda-sarbilde.xlsx), [Schematron](StructureDefinition-joda-sarbilde.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "joda-sarbilde",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde",
  "version" : "0.1.0",
  "name" : "JodaSarbilde",
  "title" : "Sårbilde",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06T17:56:14+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Et bilde av et sår. Kan være tatt av pasienten selv, av en pårørende eller av helsepersonell.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Media",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Media",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Media",
      "path" : "Media"
    },
    {
      "id" : "Media.status",
      "path" : "Media.status",
      "mustSupport" : true
    },
    {
      "id" : "Media.type",
      "path" : "Media.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/media-type",
          "code" : "image"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Media.subject",
      "path" : "Media.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-pasient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.created[x]",
      "path" : "Media.created[x]",
      "short" : "Når bildet ble tatt",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.operator",
      "path" : "Media.operator",
      "short" : "Hvem som tok bildet",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.bodySite",
      "path" : "Media.bodySite",
      "short" : "Hvor på kroppen såret er",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Media.device",
      "path" : "Media.device",
      "short" : "Kameraet bildet er tatt med",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Media.content",
      "path" : "Media.content",
      "short" : "Selve bildet, som data eller som en lenke",
      "mustSupport" : true
    },
    {
      "id" : "Media.content.contentType",
      "path" : "Media.content.contentType",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-bildeformat-vs"
      }
    },
    {
      "id" : "Media.note",
      "path" : "Media.note",
      "short" : "Kommentar fra den som tok bildet",
      "mustSupport" : true
    }]
  }
}

```
