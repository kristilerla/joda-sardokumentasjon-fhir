# Mobilen til Lise - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mobilen til Lise**

## Example Device: Mobilen til Lise

Profile: [Kamera](StructureDefinition-joda-kamera.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Mobil via JodaCare | User Friendly name |

**type**: Mobiltelefon eller nettbrett



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "Kamera-Mobil",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/mal/StructureDefinition/joda-kamera"]
  },
  "deviceName" : [{
    "name" : "Mobil via JodaCare",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://hl7.no/fhir/ig/mal/CodeSystem/joda-kameratype",
      "code" : "mobil",
      "display" : "Mobiltelefon eller nettbrett"
    }]
  }
}

```
