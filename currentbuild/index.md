# Home - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://kristilerla.github.io/joda-sardokumentasjon-fhir/ImplementationGuide/joda.fhir.sardokumentasjon | *Version*:0.1.0 |
| Draft as of 2026-11-09 | *Computable Name*:JodaSardokumentasjon |

### Om denne guiden

Dette er en øvingsguide som beskriver hvordan bilder og vurderinger av sår kan uttrykkes i HL7 FHIR og sendes til pasientens journal. Bildene kan være tatt av pasienten selv eller en pårørende med mobilen via JodaCare, eller av helsepersonell med et Jodapro hodekamera.

Guiden er et utkast. Den beskriver ingen ferdig integrasjon. Alle personer, steder og bilder i eksemplene er oppdiktet.

### Bakgrunn

Mange som får hjelp av hjemmetjenesten har sår som skal følges opp over tid, for eksempel leggsår, trykksår eller operasjonssår. Hjemmetjenesten ser såret når de er på besøk. Mellom besøkene er det ofte pasienten selv eller familien som ser at noe endrer seg.

Et bilde tatt hjemme kan gi hjemmetjenesten beskjed tidligere, og et bilde tatt med hodekamera under besøket gir god dokumentasjon uten at sykepleieren må legge fra seg utstyret. Når begge typer bilder beskrives på samme måte, kan de havne i samme sårjournal.

### Aktører

| | |
| :--- | :--- |
| Pasient | Har såret. Kan ta bilder og registrere smerte og om det ser betent ut. |
| Pårørende | Hjelper pasienten med å ta bilder mellom besøkene. |
| Sykepleier i hjemmetjenesten | Ser bildene fra pasient og pårørende, måler og observerer såret, og bestemmer hva som journalføres. Tar bilder med Jodapro hodekamera under timen med sårpoliklinikken. |
| Spesialist på sårpoliklinikken | Er med på video fra sykehuset under timen. Gjør den faglige sårvurderingen og foreslår sårplanen. |
| Journalsystemet | Kommunens pasientjournal, der det journalførte bildet og vurderingen havner. |

### Hovedbrukstilfelle: leggsår som blir verre

1. Karin (78 år) får hjelp av hjemmetjenesten i Fjordvik kommune til et leggsår på venstre legg.
1. En kveld mellom besøkene synes datteren Lise at såret ser rødere ut. Hun tar et bilde med mobilen i JodaCare og skriver at det verker mer.
1. Bildet sendes inn som foreløpig. Det er ikke en del av journalen ennå.
1. Neste morgen ser sykepleieren Sara bildet. Karin har time hos sårpoliklinikken på Fjordvik sykehus. Sara er hjemme hos Karin med Jodapro hodekamera, og spesialisten Nora er med på video fra sykehuset.
1. Under timen tar Sara et bilde med hodekameraet og registrerer det hun måler og observerer: mål, væsking, huden rundt og smerte.
1. Nora gjør den faglige vurderingen ut fra bildet fra Lise, bildet fra hodekameraet og Saras observasjoner: sårbunn og tegn på infeksjon. Hun foreslår en ny sårplan med grønn, gul og rød sone.
1. Sara journalfører bildet fra Lise sammen med vurderingene. Bildet får status endelig og Sara som den som har godkjent det.
1. Hvem som tok hvert bilde, og med hvilket kamera, er sporbart.

Flyten er også vist som et diagram, med bildene og status fra FHIR-hackathonet 9. november 2026: [Karins sår: fra JodaCare til journal](karins-sar.md).

### Krav

* Et sårbilde gjelder alltid én pasient og ett sted på kroppen.
* Det skal alltid gå fram hvem som tok bildet, når, og med hvilket kamera.
* Et bilde fra pasienten eller en pårørende er ikke en del av journalen før helsepersonell har vurdert det. Det er helsepersonell som har journalføringsplikt og bestemmer hva som journalføres (helsepersonelloven §§ 39 og 40).
* En sårvurdering skal kunne vise hvilke bilder den bygger på.
* Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell.
* Bilder av sår er helseopplysninger og skal behandles etter Normen.

### Modell

| | | |
| :--- | :--- | :--- |
| Pasienten | Patient | [Pasient](StructureDefinition-joda-pasient.md), bygger på no-basis |
| Kameraet | Device | [Kamera](StructureDefinition-joda-kamera.md), mobil via JodaCare eller Jodapro hodekamera |
| Bildet | Media | [Sårbilde](StructureDefinition-joda-sarbilde.md) |
| Timen med sårpoliklinikken | Encounter | Videotime der sykepleieren er hos pasienten og spesialisten er på sykehuset |
| Vurderingen | Observation | [Sårvurdering](StructureDefinition-joda-sarvurdering.md), én for sykepleierens observasjoner og én for spesialistens vurdering. Peker på bildene og andre vurderinger med derivedFrom |
| Innsending til journal | DocumentReference | [Sårdokument til journal](StructureDefinition-joda-sardokument.md), docStatus preliminary eller final |
| Sporbarhet | Provenance | Hvem tok bildet, på vegne av hvem, med hvilket kamera |

### Kodeverk

Guiden bruker LOINC for spørsmålene og SNOMED CT for svarene. Den følger samme oppskrift som [HL7 Lower Extremity Skin Wound Assessment IG](https://build.fhir.org/ig/HL7/fhir-skin-wound-ig/). LOINC-koden sier hva som er målt eller observert. SNOMED CT-koden sier hva svaret er. Norsk tekst står i `text` ved siden av koden.

| | | |
| :--- | :--- | :--- |
| Hele sårvurderingen | 39135-9 Wound assessment panel | Feltene under |
| Lengde | 39126-8 Length of Wound | Centimeter |
| Bredde | 39125-0 Width of Wound | Centimeter |
| Dybde | 39127-6 Depth of Wound | Centimeter |
| Sårbunn | 72371-8 Appearance of Wound base | SNOMED CT,[Sårbunn](ValueSet-joda-sarbunn-vs.md) |
| Væsking | 39116-9 Drainage amount of Wound | SNOMED CT,[Væsking](ValueSet-joda-vaesking-vs.md) |
| Huden rundt såret | 72301-5 Description of Periwound | SNOMED CT,[Huden rundt såret](ValueSet-joda-hud-rundt-vs.md) |
| Smerte | 72514-3 Pain severity - 0-10 verbal numeric rating [Score] - Reported | Tall fra 0 til 10 |
| Tegn på infeksjon | Egen kode i[Sårvurdering](CodeSystem-joda-sarvurdering-kode.md) | Ja eller nei |

Verdisettene for sårbunn og væsking er de samme som i HL7-guiden. Verdisettet for huden rundt såret er et utvalg. Koden 16386004 «Dry skin» er inaktiv i gjeldende utgave av SNOMED CT og bør byttes ut.

### Åpne spørsmål

1. Hvilke SNOMED CT-koder bør brukes for sårtype, kroppssted og tegn på infeksjon? Disse har ennå egne koder eller fritekst.
1. Bør sårvurderingen bygge på en eksisterende standard for sårdokumentasjon, for eksempel et anerkjent vurderingsskjema?
1. Kan NHN-tjenesten Pasientens måledata ta imot bilder fra pasienten, eller er det IHE MHD og dokumentdeling som passer best?
1. Hvordan tar journalsystemene i kommunene imot bilder i dag, og hvor mange av dem støtter FHIR?
1. Hvordan skal pasientens samtykke til at pårørende tar og sender bilder uttrykkes?
1. Bør bildet i journalen være selve bildefilen, en lenke, eller en PDF med bilde og vurdering samlet?
1. I FHIR R5 er Media erstattet av DocumentReference. Bør guiden bruke DocumentReference for bildene allerede nå?
1. Hvordan får sårpoliklinikken se bildet fra Lise før timen? Kan det deles gjennom NHN Dokumentlager når Sara har journalført det?
1. Hvordan skal sårplanen fra spesialisthelsetjenesten deles med hjemmetjenesten, pasienten og pårørende? Er NHN Pasientens planer riktig sted?

### Spørsmål til Aidn

Aidn er et journalsystem for kommunal helse og omsorg, og Open Aidn bruker FHIR R4. I dokumentasjonen kan en tredjepart lese Observation og Composition, men det er ikke beskrevet hvordan man sender inn bilder eller dokumenter.

1. Kan en tredjepart sende inn et sårbilde til Aidn, for eksempel som Media eller DocumentReference, slik at sykepleieren kan vurdere og journalføre det?
1. Kan en sårvurdering sendes inn som en Observation?
1. Hvordan skiller Aidn mellom bilder tatt av pasienten eller en pårørende og bilder tatt av helsepersonell?
1. Hvordan får man tilgang til demomiljøet (open.demo.aidn.no)?
1. Har Aidn planer om å bygge den kommende Aidn-profilen på no-basis?

### Eksempler

* [Karin Testdal](Patient-Pasient-Karin.md), oppdiktet pasient
* [Lise Testdal](RelatedPerson-Datter-Lise.md), datter
* [Sara Testesen](Practitioner-Sykepleier-Sara.md), sykepleier
* [Nora Testvik](Practitioner-Spesialist-Nora.md), spesialist på sårpoliklinikken
* [Sårpoliklinikken, Fjordvik sykehus](Organization-Sarpoliklinikk.md)
* [Videotime med sårpoliklinikken](Encounter-Time-Sarpoliklinikk-1.md)
* [Bilde tatt hjemme av datteren](Media-Sarbilde-Hjemme-1.md)
* [Bilde tatt av sykepleier med hodekamera](Media-Sarbilde-Besok-1.md)
* [Saras observasjoner ved timen](Observation-Sarvurdering-Besok-1.md)
* [Spesialistens sårvurdering](Observation-Sarvurdering-Spesialist-1.md)
* [Bildet fra Lise, sendt inn](DocumentReference-Sardokument-Hjemme-1-Innsendt.md)
* [Bildet fra Lise, journalført](DocumentReference-Sardokument-Hjemme-1-Journalfort.md)
* [Hvem tok bildet hjemme](Provenance-Proveniens-Sarbilde-Hjemme-1.md)
* [Hvem tok bildet ved besøket](Provenance-Proveniens-Sarbilde-Besok-1.md)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "joda.fhir.sardokumentasjon",
  "url" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/ImplementationGuide/joda.fhir.sardokumentasjon",
  "version" : "0.1.0",
  "name" : "JodaSardokumentasjon",
  "title" : "Sårdokumentasjon med JodaCare og Jodapro",
  "status" : "draft",
  "date" : "2026-11-09T12:33:10+00:00",
  "publisher" : "Kristil Erla Håland",
  "contact" : [{
    "name" : "Kristil Erla Håland",
    "telecom" : [{
      "system" : "url",
      "value" : "https://jodacare.no"
    }]
  }],
  "description" : "Øvingsguide som beskriver hvordan bilder og vurderinger av sår, tatt av pasienten, pårørende eller helsepersonell, kan uttrykkes i HL7 FHIR og sendes til pasientens journal.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "joda.fhir.sardokumentasjon",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
  },
  {
    "id" : "hl7_fhir_no_basis",
    "uri" : "http://fhir.org/packages/hl7.fhir.no.basis/ImplementationGuide/hl7.fhir.no.basis",
    "packageId" : "hl7.fhir.no.basis",
    "version" : "2.2.2"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Media"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Media-Sarbilde-Besok-1.html"
      }],
      "reference" : {
        "reference" : "Media/Sarbilde-Besok-1"
      },
      "name" : "Bilde tatt av sykepleier med hodekamera",
      "description" : "Sara tar et bilde med Jodapro hodekamera under videotimen med sårpoliklinikken dagen etter.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Media"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Media-Sarbilde-Hjemme-1.html"
      }],
      "reference" : {
        "reference" : "Media/Sarbilde-Hjemme-1"
      },
      "name" : "Bilde tatt hjemme av datteren",
      "description" : "Lise tar et bilde av morens sår med mobilen via JodaCare, to dager etter siste besøk.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarbilde"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-joda-bildeformat-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/joda-bildeformat-vs"
      },
      "name" : "Bildeformat",
      "description" : "Bildeformater som kan brukes for sårbilder.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-Sardokument-Hjemme-1-Journalfort.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/Sardokument-Hjemme-1-Journalfort"
      },
      "name" : "Bildet fra Lise, journalført",
      "description" : "Sara har sett på bildet og valgt å legge det i journalen.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sardokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-Sardokument-Hjemme-1-Innsendt.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/Sardokument-Hjemme-1-Innsendt"
      },
      "name" : "Bildet fra Lise, sendt inn",
      "description" : "Bildet Lise tok er sendt inn til journalen, men ikke vurdert ennå.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sardokument"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-joda-hud-rundt-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/joda-hud-rundt-vs"
      },
      "name" : "Huden rundt såret",
      "description" : "Tilstanden til huden rundt såret. Et utvalg av SNOMED CT-kodene i periwoundConditionVS i HL7 Lower Extremity Skin Wound Assessment IG.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-Proveniens-Sarbilde-Hjemme-1.html"
      }],
      "reference" : {
        "reference" : "Provenance/Proveniens-Sarbilde-Hjemme-1"
      },
      "name" : "Hvem tok bildet hjemme",
      "description" : "Sporbarhet: Lise tok bildet med mobilen via JodaCare.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-Proveniens-Sarbilde-Besok-1.html"
      }],
      "reference" : {
        "reference" : "Provenance/Proveniens-Sarbilde-Besok-1"
      },
      "name" : "Hvem tok bildet ved besøket",
      "description" : "Sporbarhet: Sara tok bildet med Jodapro hodekamera. Originalen er identifisert med SHA-256 som ni-URI (RFC 6920), slik at det kan bevises at bildet ikke er endret.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-Kamera-Jodapro.html"
      }],
      "reference" : {
        "reference" : "Device/Kamera-Jodapro"
      },
      "name" : "Jodapro hodekamera",
      "description" : "Hodekamera som hjemmetjenesten bruker.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-joda-kamera.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/joda-kamera"
      },
      "name" : "Kamera",
      "description" : "Kameraet bildet er tatt med: en mobil eller et nettbrett via JodaCare, eller et Jodapro hodekamera.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-joda-kameratype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/joda-kameratype-vs"
      },
      "name" : "Kameratype",
      "description" : "Gyldige kameratyper.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-joda-kameratype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/joda-kameratype"
      },
      "name" : "Kameratype",
      "description" : "Hva slags kamera bildet er tatt med.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-Pasient-Karin.html"
      }],
      "reference" : {
        "reference" : "Patient/Pasient-Karin"
      },
      "name" : "Karin Testdal",
      "description" : "Oppdiktet pasient, 78 år, som får hjelp fra hjemmetjenesten i Fjordvik kommune til et leggsår.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-pasient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-Datter-Lise.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/Datter-Lise"
      },
      "name" : "Lise Testdal",
      "description" : "Oppdiktet datter av Karin, som hjelper moren med å ta bilder av såret mellom besøkene.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-Kamera-Mobil.html"
      }],
      "reference" : {
        "reference" : "Device/Kamera-Mobil"
      },
      "name" : "Mobilen til Lise",
      "description" : "Mobiltelefon brukt via JodaCare.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-kamera"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Spesialist-Nora.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Spesialist-Nora"
      },
      "name" : "Nora Testvik",
      "description" : "Oppdiktet spesialist i sårbehandling ved sårpoliklinikken på Fjordvik sykehus.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-joda-pasient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/joda-pasient"
      },
      "name" : "Pasient",
      "description" : "Pasienten som har såret. Bygger på pasientprofilen i no-basis.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-Sykepleier-Sara.html"
      }],
      "reference" : {
        "reference" : "Practitioner/Sykepleier-Sara"
      },
      "name" : "Sara Testesen",
      "description" : "Oppdiktet sykepleier i hjemmetjenesten i Fjordvik kommune.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Sarvurdering-Besok-1.html"
      }],
      "reference" : {
        "reference" : "Observation/Sarvurdering-Besok-1"
      },
      "name" : "Saras observasjoner ved timen",
      "description" : "Det Sara måler og observerer hjemme hos Karin under videotimen: mål, væsking, huden rundt og smerte.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-Sarvurdering-Spesialist-1.html"
      }],
      "reference" : {
        "reference" : "Observation/Sarvurdering-Spesialist-1"
      },
      "name" : "Spesialistens sårvurdering",
      "description" : "Noras faglige vurdering under videotimen, basert på bildet fra Lise, bildet fra hodekameraet og Saras observasjoner.",
      "exampleCanonical" : "https://kristilerla.github.io/joda-sardokumentasjon-fhir/StructureDefinition/joda-sarvurdering"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-joda-sarbilde.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/joda-sarbilde"
      },
      "name" : "Sårbilde",
      "description" : "Et bilde av et sår. Kan være tatt av pasienten selv, av en pårørende eller av helsepersonell.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-joda-sarbunn-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/joda-sarbunn-vs"
      },
      "name" : "Sårbunn",
      "description" : "Hva sårbunnen hovedsakelig består av. SNOMED CT-koder fra woundBedAppearanceVS i HL7 Lower Extremity Skin Wound Assessment IG.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-joda-sardokument.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/joda-sardokument"
      },
      "name" : "Sårdokument til journal",
      "description" : "Et sårbilde som er sendt inn til journalen. Det starter som foreløpig (docStatus = preliminary). Når helsepersonell har sett på det og valgt å journalføre det, blir det endelig (docStatus = final) og får helsepersonellet som authenticator.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-Sarpoliklinikk.html"
      }],
      "reference" : {
        "reference" : "Organization/Sarpoliklinikk"
      },
      "name" : "Sårpoliklinikken, Fjordvik sykehus",
      "description" : "Oppdiktet sårpoliklinikk på sykehuset, som hjelper hjemmetjenesten med vurdering og behandling av sår.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-joda-sarvurdering.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/joda-sarvurdering"
      },
      "name" : "Sårvurdering",
      "description" : "En vurdering av et sår, gjerne basert på ett eller flere sårbilder. Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-joda-sarvurdering-kode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/joda-sarvurdering-kode"
      },
      "name" : "Sårvurdering",
      "description" : "Egne koder for felt i sårvurderingen som ennå ikke har en LOINC-kode i guiden. De andre feltene bruker LOINC.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-Time-Sarpoliklinikk-1.html"
      }],
      "reference" : {
        "reference" : "Encounter/Time-Sarpoliklinikk-1"
      },
      "name" : "Videotime med sårpoliklinikken",
      "description" : "Karin har time hos sårpoliklinikken. Sara er hjemme hos Karin med Jodapro hodekamera, og Nora er med på video fra sykehuset.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-joda-vaesking-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/joda-vaesking-vs"
      },
      "name" : "Væsking",
      "description" : "Hvor mye såret væsker. SNOMED CT-koder fra woundExudateAmountDescriptionVS i HL7 Lower Extremity Skin Wound Assessment IG.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
