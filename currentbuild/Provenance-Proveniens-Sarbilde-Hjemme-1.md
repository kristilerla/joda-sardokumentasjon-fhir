# Hvem tok bildet hjemme - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hvem tok bildet hjemme**

## Example Provenance: Hvem tok bildet hjemme

Provenance for [Media: status = completed; type = Image; created[x] = 2026-11-10 18:30:00+0100; bodySite = Venstre legg, innside; note = Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.](Media-Sarbilde-Hjemme-1.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2026-11-10 18:31:00+0100 |
| Activity | create |

**Agents**

* **Type**: Author
  * **who**: [Lise Testdal - natural daughter](RelatedPerson-Datter-Lise.md)
  * **On Behalf Of**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)
* **Type**: Assembler
  * **who**: [Device: type = Mobiltelefon eller nettbrett](Device-Kamera-Mobil.md)
  * **On Behalf Of**: 



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "Proveniens-Sarbilde-Hjemme-1",
  "target" : [{
    "reference" : "Media/Sarbilde-Hjemme-1"
  }],
  "recorded" : "2026-11-10T18:31:00+01:00",
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "RelatedPerson/Datter-Lise"
    },
    "onBehalfOf" : {
      "reference" : "Patient/Pasient-Karin"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "assembler",
        "display" : "Assembler"
      }]
    },
    "who" : {
      "reference" : "Device/Kamera-Mobil"
    }
  }]
}

```
