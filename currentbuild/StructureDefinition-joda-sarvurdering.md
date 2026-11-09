# Sårvurdering - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårvurdering**

## Resource Profile: Sårvurdering ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaSarvurdering |

 
En vurdering av et sår, gjerne basert på ett eller flere sårbilder. Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell. 

**Usages:**

* Examples for this Profile: [Observation/Sarvurdering-Besok-1](Observation-Sarvurdering-Besok-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/joda.fhir.sardokumentasjon|current/StructureDefinition/StructureDefinition-joda-sarvurdering.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-joda-sarvurdering.csv), [Excel](StructureDefinition-joda-sarvurdering.xlsx), [Schematron](StructureDefinition-joda-sarvurdering.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "joda-sarvurdering",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering",
  "version" : "0.1.0",
  "name" : "JodaSarvurdering",
  "title" : "Sårvurdering",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-09T10:33:12+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "En vurdering av et sår, gjerne basert på ett eller flere sårbilder. Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "sarvurdering"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-pasient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Hvem som gjorde vurderingen",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Sårbildene vurderingen bygger på",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "description" : "Feltene i vurderingen skilles fra hverandre på koden.",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lengde",
      "path" : "Observation.component",
      "sliceName" : "lengde",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lengde.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "lengde"
        }]
      }
    },
    {
      "id" : "Observation.component:lengde.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:lengde.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:lengde.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "cm"
    },
    {
      "id" : "Observation.component:bredde",
      "path" : "Observation.component",
      "sliceName" : "bredde",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:bredde.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "bredde"
        }]
      }
    },
    {
      "id" : "Observation.component:bredde.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:bredde.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:bredde.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "cm"
    },
    {
      "id" : "Observation.component:dybde",
      "path" : "Observation.component",
      "sliceName" : "dybde",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:dybde.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "dybde"
        }]
      }
    },
    {
      "id" : "Observation.component:dybde.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:dybde.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:dybde.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "cm"
    },
    {
      "id" : "Observation.component:sarbunn",
      "path" : "Observation.component",
      "sliceName" : "sarbunn",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:sarbunn.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "sarbunn"
        }]
      }
    },
    {
      "id" : "Observation.component:sarbunn.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-sarbunn-vs"
      }
    },
    {
      "id" : "Observation.component:vaesking",
      "path" : "Observation.component",
      "sliceName" : "vaesking",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:vaesking.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "vaesking"
        }]
      }
    },
    {
      "id" : "Observation.component:vaesking.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-vaesking-vs"
      }
    },
    {
      "id" : "Observation.component:hud_rundt",
      "path" : "Observation.component",
      "sliceName" : "hud_rundt",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:hud_rundt.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "hud-rundt"
        }]
      }
    },
    {
      "id" : "Observation.component:hud_rundt.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ValueSet/joda-hud-rundt-vs"
      }
    },
    {
      "id" : "Observation.component:infeksjonstegn",
      "path" : "Observation.component",
      "sliceName" : "infeksjonstegn",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:infeksjonstegn.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "infeksjonstegn"
        }]
      }
    },
    {
      "id" : "Observation.component:infeksjonstegn.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:smerte",
      "path" : "Observation.component",
      "sliceName" : "smerte",
      "short" : "Smerte fra 0 (ingen) til 10 (verst tenkelig)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:smerte.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
          "code" : "smerte"
        }]
      }
    },
    {
      "id" : "Observation.component:smerte.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
