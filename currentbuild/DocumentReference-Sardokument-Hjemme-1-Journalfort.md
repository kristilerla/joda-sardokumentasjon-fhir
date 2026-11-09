# Bildet fra Lise, journalført - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bildet fra Lise, journalført**

## Example DocumentReference: Bildet fra Lise, journalført

Profile: [Sårdokument til journal](StructureDefinition-joda-sardokument.md)

**status**: Current

**docStatus**: Final

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

**date**: 2026-11-11 10:30:00+0100

**author**: [Lise Testdal - natural daughter](RelatedPerson-Datter-Lise.md)

**authenticator**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | image/jpeg | [https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg](https://simplifier.net/resolve?scope=hl7.fhir.no.basis@2.2.2&canonical=https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg) |


> **context****related**: 
* [Media: status = completed; type = Image; created[x] = 2026-11-10 18:30:00+0100; bodySite = Venstre legg, innside; note = Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.](Media-Sarbilde-Hjemme-1.md)
* [Observation Wound assessment panel](Observation-Sarvurdering-Besok-1.md)
* [Observation Wound assessment panel](Observation-Sarvurdering-Spesialist-1.md)



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "Sardokument-Hjemme-1-Journalfort",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sardokument"]
  },
  "status" : "current",
  "docStatus" : "final",
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "date" : "2026-11-11T10:30:00+01:00",
  "author" : [{
    "reference" : "RelatedPerson/Datter-Lise"
  }],
  "authenticator" : {
    "reference" : "Practitioner/Sykepleier-Sara"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "image/jpeg",
      "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg"
    }
  }],
  "context" : {
    "related" : [{
      "reference" : "Media/Sarbilde-Hjemme-1"
    },
    {
      "reference" : "Observation/Sarvurdering-Besok-1"
    },
    {
      "reference" : "Observation/Sarvurdering-Spesialist-1"
    }]
  }
}

```
