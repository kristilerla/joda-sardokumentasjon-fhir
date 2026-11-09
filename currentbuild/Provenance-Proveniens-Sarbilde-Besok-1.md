# Hvem tok bildet ved besøket - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hvem tok bildet ved besøket**

## Example Provenance: Hvem tok bildet ved besøket

Provenance for [Media: identifier = https://jodapro.no/fhir/sid/evidence-id#7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14; status = completed; type = Image; created[x] = 2026-11-11 10:15:00+0100; bodySite = Venstre legg, innside](Media-Sarbilde-Besok-1.md)

Summary

| | |
| :--- | :--- |
| Recorded | 2026-11-11 09:15:02+0000 |
| Activity | create |

**Agents**

* **Type**: Author
  * **who**: [Sara Testesen](Practitioner-Sykepleier-Sara.md)
* **Type**: Assembler
  * **who**: [Device: identifier = https://jodapro.no/fhir/sid/device-id#0f3c9a2e7b41d5c8; manufacturer = RealWear; type = Hodekamera](Device-Kamera-Jodapro.md)

**Entities**

* **Role**: Source
  * **What**: Tapsfri original (TIFF) fra Jodapro bevispakke, SHA-256 3040f92c340d2a5d5ba3bda37ccdb878e62878d56636b9f3063b5c8741b12f54 (Identifier:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.5.0/NamingSystem-uri.html)/ni:///sha-256;MED5LDQNKl1bo72jfM24eOYoeNVmNrnzBjtch0GxL1Q)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "Proveniens-Sarbilde-Besok-1",
  "target" : [{
    "reference" : "Media/Sarbilde-Besok-1"
  }],
  "recorded" : "2026-11-11T09:15:02Z",
  "activity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
      "code" : "CREATE",
      "display" : "create"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "author",
        "display" : "Author"
      }]
    },
    "who" : {
      "reference" : "Practitioner/Sykepleier-Sara"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "assembler",
        "display" : "Assembler"
      }]
    },
    "who" : {
      "reference" : "Device/Kamera-Jodapro"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "identifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "ni:///sha-256;MED5LDQNKl1bo72jfM24eOYoeNVmNrnzBjtch0GxL1Q"
      },
      "display" : "Tapsfri original (TIFF) fra Jodapro bevispakke, SHA-256 3040f92c340d2a5d5ba3bda37ccdb878e62878d56636b9f3063b5c8741b12f54"
    }
  }]
}

```
