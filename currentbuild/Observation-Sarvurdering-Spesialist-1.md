# Spesialistens sårvurdering - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spesialistens sårvurdering**

## Example Observation: Spesialistens sårvurdering

Profile: [Sårvurdering](StructureDefinition-joda-sarvurdering.md)

**status**: Final

**code**: Wound assessment panel

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**encounter**: [Encounter: status = finished; class = virtual (ActCode#VR); period = 2026-11-11 10:00:00+0100 --> 2026-11-11 10:30:00+0100](Encounter-Time-Sarpoliklinikk-1.md)

**effective**: 2026-11-11 10:25:00+0100

**performer**: [Nora Testvik](Practitioner-Spesialist-Nora.md)

**note**: 

> 

Tegn på infeksjon. Sårpoliklinikken foreslår en ny sårplan med grønn, gul og rød sone, og ny videotime om to uker.


**bodySite**: Venstre legg, innside

**derivedFrom**: 

* [Media: status = completed; type = Image; created[x] = 2026-11-10 18:30:00+0100; bodySite = Venstre legg, innside; note = Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.](Media-Sarbilde-Hjemme-1.md)
* [Media: identifier = https://jodapro.no/fhir/sid/evidence-id#7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14; status = completed; type = Image; created[x] = 2026-11-11 10:15:00+0100; bodySite = Venstre legg, innside](Media-Sarbilde-Besok-1.md)
* [Observation Wound assessment panel](Observation-Sarvurdering-Besok-1.md)

> **component****code**: Appearance of Wound base**value**: Fibrinbelegg

> **component****code**: Tegn på infeksjon**value**: true



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Sarvurdering-Spesialist-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "39135-9",
      "display" : "Wound assessment panel"
    }]
  },
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "encounter" : {
    "reference" : "Encounter/Time-Sarpoliklinikk-1"
  },
  "effectiveDateTime" : "2026-11-11T10:25:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/Spesialist-Nora"
  }],
  "note" : [{
    "text" : "Tegn på infeksjon. Sårpoliklinikken foreslår en ny sårplan med grønn, gul og rød sone, og ny videotime om to uker."
  }],
  "bodySite" : {
    "text" : "Venstre legg, innside"
  },
  "derivedFrom" : [{
    "reference" : "Media/Sarbilde-Hjemme-1"
  },
  {
    "reference" : "Media/Sarbilde-Besok-1"
  },
  {
    "reference" : "Observation/Sarvurdering-Besok-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "72371-8",
        "display" : "Appearance of Wound base"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "449745003",
        "display" : "Fibrinous wound bed"
      }],
      "text" : "Fibrinbelegg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "infeksjonstegn"
      }]
    },
    "valueBoolean" : true
  }]
}

```
