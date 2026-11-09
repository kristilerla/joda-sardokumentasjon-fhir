# Saras observasjoner ved timen - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Saras observasjoner ved timen**

## Example Observation: Saras observasjoner ved timen

Profile: [Sårvurdering](StructureDefinition-joda-sarvurdering.md)

**status**: Final

**code**: Wound assessment panel

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**encounter**: [Encounter: status = finished; class = virtual (ActCode#VR); period = 2026-11-11 10:00:00+0100 --> 2026-11-11 10:30:00+0100](Encounter-Time-Sarpoliklinikk-1.md)

**effective**: 2026-11-11 10:20:00+0100

**performer**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

**bodySite**: Venstre legg, innside

**derivedFrom**: [Media: identifier = https://jodapro.no/fhir/sid/evidence-id#7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14; status = completed; type = Image; created[x] = 2026-11-11 10:15:00+0100; bodySite = Venstre legg, innside](Media-Sarbilde-Besok-1.md)

> **component****code**: Length of Wound**value**: 4.5 cm (Details: UCUM codecm = 'cm')

> **component****code**: Width of Wound**value**: 3 cm (Details: UCUM codecm = 'cm')

> **component****code**: Drainage amount of Wound**value**: Moderat væsking

> **component****code**: Description of Periwound**value**: Rødme rundt såret

> **component****code**: Pain severity - 0-10 verbal numeric rating [Score] - Reported**value**: 6



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
  "effectiveDateTime" : "2026-11-11T10:20:00+01:00",
  "performer" : [{
    "reference" : "Practitioner/Sykepleier-Sara"
  }],
  "bodySite" : {
    "text" : "Venstre legg, innside"
  },
  "derivedFrom" : [{
    "reference" : "Media/Sarbilde-Besok-1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "39126-8",
        "display" : "Length of Wound"
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
        "system" : "http://loinc.org",
        "code" : "39125-0",
        "display" : "Width of Wound"
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
        "system" : "http://loinc.org",
        "code" : "39116-9",
        "display" : "Drainage amount of Wound"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "6736007",
        "display" : "Moderate"
      }],
      "text" : "Moderat væsking"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "72301-5",
        "display" : "Description of Periwound"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "239163008",
        "display" : "Wound erythema"
      }],
      "text" : "Rødme rundt såret"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "72514-3",
        "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
      }]
    },
    "valueInteger" : 6
  }]
}

```
