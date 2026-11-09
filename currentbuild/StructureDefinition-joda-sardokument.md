# Sårdokument til journal - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårdokument til journal**

## Resource Profile: Sårdokument til journal ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sardokument | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaSardokument |

 
Et sårbilde som er sendt inn til journalen. Det starter som foreløpig (docStatus = preliminary). Når helsepersonell har sett på det og valgt å journalføre det, blir det endelig (docStatus = final) og får helsepersonellet som authenticator. 

**Usages:**

* Examples for this Profile: [DocumentReference/Sardokument-Hjemme-1-Innsendt](DocumentReference-Sardokument-Hjemme-1-Innsendt.md) and [DocumentReference/Sardokument-Hjemme-1-Journalfort](DocumentReference-Sardokument-Hjemme-1-Journalfort.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/joda.fhir.sardokumentasjon|current/StructureDefinition/StructureDefinition-joda-sardokument.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-joda-sardokument.csv), [Excel](StructureDefinition-joda-sardokument.xlsx), [Schematron](StructureDefinition-joda-sardokument.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "joda-sardokument",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sardokument",
  "version" : "0.1.0",
  "name" : "JodaSardokument",
  "title" : "Sårdokument til journal",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-09T09:13:35+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Et sårbilde som er sendt inn til journalen. Det starter som foreløpig (docStatus = preliminary). Når helsepersonell har sett på det og valgt å journalføre det, blir det endelig (docStatus = final) og får helsepersonellet som authenticator.",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.docStatus",
      "path" : "DocumentReference.docStatus",
      "short" : "preliminary: sendt inn, ikke vurdert. final: journalført av helsepersonell.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-pasient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Hvem som sendte inn bildet",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "short" : "Helsepersonellet som journalførte bildet",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "short" : "Sårbildet og eventuelt sårvurderingen",
      "mustSupport" : true
    }]
  }
}

```
