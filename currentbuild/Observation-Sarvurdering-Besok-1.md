# Sårvurdering ved besøk - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårvurdering ved besøk**

## Example Observation: Sårvurdering ved besøk

Profile: [Sårvurdering](StructureDefinition-joda-sarvurdering.md)

**status**: Final

**code**: Sårvurdering

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**effective**: 2026-11-11 10:25:00+0100

**performer**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

**bodySite**: Venstre legg, innside

**derivedFrom**: 

* [Media: status = completed; type = Image; created[x] = 2026-11-10 18:30:00+0100; bodySite = Venstre legg, innside; note = Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.](Media-Sarbilde-Hjemme-1.md)
* [Media: status = completed; type = Image; created[x] = 2026-11-11 10:15:00+0100; bodySite = Venstre legg, innside](Media-Sarbilde-Besok-1.md)

> **component****code**: Lengde**value**: 4.5 cm (Details: UCUM codecm = 'cm')

> **component****code**: Bredde**value**: 3 cm (Details: UCUM codecm = 'cm')

> **component****code**: Sårbunn**value**: Fibrin (belegg)

> **component****code**: Væsking**value**: Moderat

> **component****code**: Huden rundt såret**value**: Rød

> **component****code**: Tegn på infeksjon**value**: true

> **component****code**: Smerte**value**: 6



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Sarvurdering-Besok-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
      "code" : "sarvurdering",
      "display" : "Sårvurdering"
    }]
  },
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "effectiveDateTime" : "2026-11-11T10:25:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/Sykepleier-Sara"
  }],
  "bodySite" : {
    "text" : "Venstre legg, innside"
  },
  "derivedFrom" : [{
    "reference" : "Media/Sarbilde-Hjemme-1"
  },
  {
    "reference" : "Media/Sarbilde-Besok-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "lengde"
      }]
    },
    "valueQuantity" : {
      "value" : 4.5,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "bredde"
      }]
    },
    "valueQuantity" : {
      "value" : 3,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "sarbunn"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarbunn",
        "code" : "fibrin",
        "display" : "Fibrin (belegg)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "vaesking"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-vaesking",
        "code" : "moderat",
        "display" : "Moderat"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "hud-rundt"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-hud-rundt",
        "code" : "rod",
        "display" : "Rød"
      }]
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
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
        "code" : "smerte"
      }]
    },
    "valueInteger" : 6
  }]
}

```
