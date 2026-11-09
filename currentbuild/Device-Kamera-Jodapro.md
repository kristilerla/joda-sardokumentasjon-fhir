# Jodapro hodekamera - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Jodapro hodekamera**

## Example Device: Jodapro hodekamera

Profile: [Kamera](StructureDefinition-joda-kamera.md)

**identifier**: `https://jodapro.no/fhir/sid/device-id`/0f3c9a2e7b41d5c8

**manufacturer**: RealWear

> **deviceName****name**: Jodapro hodekamera**type**: User Friendly name

> **deviceName****name**: Navigator 520**type**: Model name

**type**: Hodekamera



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Kamera-Jodapro",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera"]
  },
  "identifier" : [{
    "system" : "https://jodapro.no/fhir/sid/device-id",
    "value" : "0f3c9a2e7b41d5c8"
  }],
  "manufacturer" : "RealWear",
  "deviceName" : [{
    "name" : "Jodapro hodekamera",
    "type" : "user-friendly-name"
  },
  {
    "name" : "Navigator 520",
    "type" : "model-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-kameratype",
      "code" : "hodekamera",
      "display" : "Hodekamera"
    }]
  }
}

```
