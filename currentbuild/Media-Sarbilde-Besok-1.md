# Bilde tatt av sykepleier med hodekamera - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bilde tatt av sykepleier med hodekamera**

## Example Media: Bilde tatt av sykepleier med hodekamera

Profile: [Sårbilde](StructureDefinition-joda-sarbilde.md)

**identifier**: `https://jodapro.no/fhir/sid/evidence-id`/7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14

**status**: Completed

**type**: Image

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**encounter**: [Encounter: status = finished; class = virtual (ActCode#VR); period = 2026-11-11 10:00:00+0100 --> 2026-11-11 10:30:00+0100](Encounter-Time-Sarpoliklinikk-1.md)

**created**: 2026-11-11 10:15:00+0100

**operator**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

**bodySite**: Venstre legg, innside

**device**: [Device: identifier = https://jodapro.no/fhir/sid/device-id#0f3c9a2e7b41d5c8; manufacturer = RealWear; type = Hodekamera](Device-Kamera-Jodapro.md)

### Contents

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Size** | **Hash** | **Title** |
| * | image/tiff | [https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-besok-1.tif](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-besok-1.tif) | 7683900 | `rJqcpzbJIEJ9boVfRPxDRrecRjo=` | Sår venstre legg 11.11.2026, besøk |



## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "Sarbilde-Besok-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde"]
  },
  "identifier" : [{
    "system" : "https://jodapro.no/fhir/sid/evidence-id",
    "value" : "7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14"
  }],
  "status" : "completed",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/media-type",
      "code" : "image",
      "display" : "Image"
    }]
  },
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "encounter" : {
    "reference" : "Encounter/Time-Sarpoliklinikk-1"
  },
  "createdDateTime" : "2026-11-11T10:15:00+01:00",
  "operator" : {
    "reference" : "Practitioner/Sykepleier-Sara"
  },
  "bodySite" : {
    "text" : "Venstre legg, innside"
  },
  "device" : {
    "reference" : "Device/Kamera-Jodapro"
  },
  "content" : {
    "contentType" : "image/tiff",
    "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-besok-1.tif",
    "size" : 7683900,
    "hash" : "rJqcpzbJIEJ9boVfRPxDRrecRjo=",
    "title" : "Sår venstre legg 11.11.2026, besøk"
  }
}

```
