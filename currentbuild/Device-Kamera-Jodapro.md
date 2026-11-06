# Jodapro hodekamera - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Jodapro hodekamera**

## Example Device: Jodapro hodekamera

Profile: [Kamera](StructureDefinition-joda-kamera.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Jodapro hodekamera | User Friendly name |

**type**: Hodekamera



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Kamera-Jodapro",
  "meta" : {
    "profile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera"]
  },
  "deviceName" : [{
    "name" : "Jodapro hodekamera",
    "type" : "user-friendly-name"
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
