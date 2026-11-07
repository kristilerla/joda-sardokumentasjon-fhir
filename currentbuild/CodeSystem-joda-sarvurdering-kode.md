# Sårvurdering - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sårvurdering**

## CodeSystem: Sårvurdering (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode | *Version*:0.1.0 |
| Draft as of 2026-11-07 | *Computable Name*:JodaSarvurderingKode |

 
Kode for selve sårvurderingen og for feltene i den. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "joda-sarvurdering-kode",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/CodeSystem/joda-sarvurdering-kode",
  "version" : "0.1.0",
  "name" : "JodaSarvurderingKode",
  "title" : "Sårvurdering",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-07T05:45:35+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Kode for selve sårvurderingen og for feltene i den.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "sarvurdering",
    "display" : "Sårvurdering",
    "definition" : "En vurdering av et sår på et gitt tidspunkt."
  },
  {
    "code" : "lengde",
    "display" : "Lengde",
    "definition" : "Sårets lengde i centimeter."
  },
  {
    "code" : "bredde",
    "display" : "Bredde",
    "definition" : "Sårets bredde i centimeter."
  },
  {
    "code" : "dybde",
    "display" : "Dybde",
    "definition" : "Sårets dybde i centimeter."
  },
  {
    "code" : "sarbunn",
    "display" : "Sårbunn",
    "definition" : "Hva sårbunnen består av."
  },
  {
    "code" : "vaesking",
    "display" : "Væsking",
    "definition" : "Hvor mye såret væsker."
  },
  {
    "code" : "hud-rundt",
    "display" : "Huden rundt såret",
    "definition" : "Tilstanden til huden rundt såret."
  },
  {
    "code" : "infeksjonstegn",
    "display" : "Tegn på infeksjon",
    "definition" : "Om det er tegn på infeksjon, for eksempel rødme, varme, hevelse eller lukt."
  },
  {
    "code" : "smerte",
    "display" : "Smerte",
    "definition" : "Smerte i såret på en skala fra 0 til 10."
  }]
}

```
