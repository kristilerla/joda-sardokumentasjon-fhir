# Videotime med sårpoliklinikken - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Videotime med sårpoliklinikken**

## Example Encounter: Videotime med sårpoliklinikken

**status**: Finished

**class**: [ActCode: VR](http://terminology.hl7.org/7.5.0/CodeSystem-v3-ActCode.html#v3-ActCode-VR) (virtual)

**subject**: [Karin Testdal Female, DoB: 1948-03-13 ( https://example.org/oppdiktet/pasient-id#testpasient-karin)](Patient-Pasient-Karin.md)

> **participant****individual**: [Nora Testvik](Practitioner-Spesialist-Nora.md)

> **participant****individual**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)

**period**: 2026-11-11 10:00:00+0100 --> 2026-11-11 10:30:00+0100

**serviceProvider**: [Sårpoliklinikken, Fjordvik sykehus](Organization-Sarpoliklinikk.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Time-Sarpoliklinikk-1",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "VR",
    "display" : "virtual"
  },
  "subject" : {
    "reference" : "Patient/Pasient-Karin"
  },
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/Spesialist-Nora"
    }
  },
  {
    "individual" : {
      "reference" : "Practitioner/Sykepleier-Sara"
    }
  }],
  "period" : {
    "start" : "2026-11-11T10:00:00+01:00",
    "end" : "2026-11-11T10:30:00+01:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/Sarpoliklinikk"
  }
}

```
