# Bildet fra Lise, sendt inn - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bildet fra Lise, sendt inn**

## Example DocumentReference: Bildet fra Lise, sendt inn

Profile: [Sårdokument til journal](StructureDefinition-joda-sardokument.md)

**status**: Current

**docStatus**: Preliminary

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**date**: 2026-11-10 18:31:00+0100

**author**: [Lise Testdal - natural daughter](RelatedPerson-Datter-Lise.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | image/jpeg | [https://example.org/oppdiktet/sarbilde-hjemme-1.jpg](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=https://example.org/oppdiktet/sarbilde-hjemme-1.jpg) |


### Contexts

| | |
| :--- | :--- |
| - | **Related** |
| * | [Media: status = completed; type = Image; created[x] = 2026-11-10 18:30:00+0100; bodySite = Venstre legg, innside; note = Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.](Media-Sarbilde-Hjemme-1.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "Sardokument-Hjemme-1-Innsendt",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/mal/StructureDefinition/joda-sardokument"]
  },
  "status" : "current",
  "docStatus" : "preliminary",
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "date" : "2026-11-10T18:31:00+01:00",
  "author" : [{
    "reference" : "RelatedPerson/Datter-Lise"
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "image/jpeg",
      "url" : "https://example.org/oppdiktet/sarbilde-hjemme-1.jpg"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "Media/Sarbilde-Hjemme-1"
    }]
  }
}

```
