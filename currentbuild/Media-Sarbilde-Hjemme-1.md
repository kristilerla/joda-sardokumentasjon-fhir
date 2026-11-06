# Bilde tatt hjemme av datteren - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bilde tatt hjemme av datteren**

## Example Media: Bilde tatt hjemme av datteren

Profile: [Sårbilde](StructureDefinition-joda-sarbilde.md)

**status**: Completed

**type**: Image

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**created**: 2026-11-10 18:30:00+0100

**operator**: [Lise Testdal - natural daughter](RelatedPerson-Datter-Lise.md)

**bodySite**: Venstre legg, innside

**device**: [Device: type = Mobiltelefon eller nettbrett](Device-Kamera-Mobil.md)

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/jpeg | [https://example.org/oppdiktet/sarbilde-hjemme-1.jpg](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=https://example.org/oppdiktet/sarbilde-hjemme-1.jpg) | Sår venstre legg 10.11.2026 |

**note**: 

> 

Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.




## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "Sarbilde-Hjemme-1",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/mal/StructureDefinition/joda-sarbilde"]
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
  "createdDateTime" : "2026-11-10T18:30:00+01:00",
  "operator" : {
    "reference" : "RelatedPerson/Datter-Lise"
  },
  "bodySite" : {
    "text" : "Venstre legg, innside"
  },
  "device" : {
    "reference" : "Device/Kamera-Mobil"
  },
  "content" : {
    "contentType" : "image/jpeg",
    "url" : "https://example.org/oppdiktet/sarbilde-hjemme-1.jpg",
    "title" : "Sår venstre legg 10.11.2026"
  },
  "note" : [{
    "text" : "Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten."
  }]
}

```
