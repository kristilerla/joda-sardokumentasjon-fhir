# Jodapro hodekamera - Mal v0.1.0

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
    "profile" : ["http://hl7.no/fhir/ig/mal/StructureDefinition/joda-kamera"]
  },
  "deviceName" : [{
    "name" : "Jodapro hodekamera",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://hl7.no/fhir/ig/mal/CodeSystem/joda-kameratype",
      "code" : "hodekamera",
      "display" : "Hodekamera"
    }]
  }
}

```
