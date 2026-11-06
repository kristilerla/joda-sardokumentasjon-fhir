# Bilde tatt av sykepleier med hodekamera - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bilde tatt av sykepleier med hodekamera**

## Example Media: Bilde tatt av sykepleier med hodekamera

Profile: [Sårbilde](StructureDefinition-joda-sarbilde.md)

**status**: Completed

**type**: Image

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**created**: 2026-11-11 10:15:00+0100

**operator**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

**bodySite**: Venstre legg, innside

**device**: [Device: type = Hodekamera](Device-Kamera-Jodapro.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/jpeg | [https://example.org/oppdiktet/sarbilde-besok-1.jpg](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=https://example.org/oppdiktet/sarbilde-besok-1.jpg) | Sår venstre legg 11.11.2026, besøk |



## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "Sarbilde-Besok-1",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde"]
  },
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
    "contentType" : "image/jpeg",
    "url" : "https://example.org/oppdiktet/sarbilde-besok-1.jpg",
    "title" : "Sår venstre legg 11.11.2026, besøk"
  }
}

```
