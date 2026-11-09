# Artifacts Summary - Sårdokumentasjon med JodaCare og Jodapro v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kamera](StructureDefinition-joda-kamera.md) | Kameraet bildet er tatt med: en mobil eller et nettbrett via JodaCare, eller et Jodapro hodekamera. |
| [Pasient](StructureDefinition-joda-pasient.md) | Pasienten som har såret. Bygger på pasientprofilen i no-basis. |
| [Sårbilde](StructureDefinition-joda-sarbilde.md) | Et bilde av et sår. Kan være tatt av pasienten selv, av en pårørende eller av helsepersonell. |
| [Sårdokument til journal](StructureDefinition-joda-sardokument.md) | Et sårbilde som er sendt inn til journalen. Det starter som foreløpig (docStatus = preliminary). Når helsepersonell har sett på det og valgt å journalføre det, blir det endelig (docStatus = final) og får helsepersonellet som authenticator. |
| [Sårvurdering](StructureDefinition-joda-sarvurdering.md) | En vurdering av et sår, gjerne basert på ett eller flere sårbilder. Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bildeformat](ValueSet-joda-bildeformat-vs.md) | Bildeformater som kan brukes for sårbilder. |
| [Huden rundt såret](ValueSet-joda-hud-rundt-vs.md) | Tilstanden til huden rundt såret. Et utvalg av SNOMED CT-kodene i periwoundConditionVS i HL7 Lower Extremity Skin Wound Assessment IG. |
| [Kameratype](ValueSet-joda-kameratype-vs.md) | Gyldige kameratyper. |
| [Sårbunn](ValueSet-joda-sarbunn-vs.md) | Hva sårbunnen hovedsakelig består av. SNOMED CT-koder fra woundBedAppearanceVS i HL7 Lower Extremity Skin Wound Assessment IG. |
| [Væsking](ValueSet-joda-vaesking-vs.md) | Hvor mye såret væsker. SNOMED CT-koder fra woundExudateAmountDescriptionVS i HL7 Lower Extremity Skin Wound Assessment IG. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kameratype](CodeSystem-joda-kameratype.md) | Hva slags kamera bildet er tatt med. |
| [Sårvurdering](CodeSystem-joda-sarvurdering-kode.md) | Egne koder for felt i sårvurderingen som ennå ikke har en LOINC-kode i guiden. De andre feltene bruker LOINC. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Bilde tatt av sykepleier med hodekamera](Media-Sarbilde-Besok-1.md) | Sara tar et bilde med Jodapro hodekamera under videotimen med sårpoliklinikken dagen etter. |
| [Bilde tatt hjemme av datteren](Media-Sarbilde-Hjemme-1.md) | Lise tar et bilde av morens sår med mobilen via JodaCare, to dager etter siste besøk. |
| [Bildet fra Lise, journalført](DocumentReference-Sardokument-Hjemme-1-Journalfort.md) | Sara har sett på bildet og valgt å legge det i journalen. |
| [Bildet fra Lise, sendt inn](DocumentReference-Sardokument-Hjemme-1-Innsendt.md) | Bildet Lise tok er sendt inn til journalen, men ikke vurdert ennå. |
| [Hvem tok bildet hjemme](Provenance-Proveniens-Sarbilde-Hjemme-1.md) | Sporbarhet: Lise tok bildet med mobilen via JodaCare. |
| [Hvem tok bildet ved besøket](Provenance-Proveniens-Sarbilde-Besok-1.md) | Sporbarhet: Sara tok bildet med Jodapro hodekamera. Originalen er identifisert med SHA-256 som ni-URI (RFC 6920), slik at det kan bevises at bildet ikke er endret. |
| [Jodapro hodekamera](Device-Kamera-Jodapro.md) | Hodekamera som hjemmetjenesten bruker. |
| [Karin Testdal](Patient-Pasient-Karin.md) | Oppdiktet pasient, 78 år, som får hjelp fra hjemmetjenesten i Fjordvik kommune til et leggsår. |
| [Lise Testdal](RelatedPerson-Datter-Lise.md) | Oppdiktet datter av Karin, som hjelper moren med å ta bilder av såret mellom besøkene. |
| [Mobilen til Lise](Device-Kamera-Mobil.md) | Mobiltelefon brukt via JodaCare. |
| [Nora Testvik](Practitioner-Spesialist-Nora.md) | Oppdiktet spesialist i sårbehandling ved sårpoliklinikken på Fjordvik sykehus. |
| [Sara Testesen](Practitioner-Sykepleier-Sara.md) | Oppdiktet sykepleier i hjemmetjenesten i Fjordvik kommune. |
| [Saras observasjoner ved timen](Observation-Sarvurdering-Besok-1.md) | Det Sara måler og observerer hjemme hos Karin under videotimen: mål, væsking, huden rundt og smerte. |
| [Spesialistens sårvurdering](Observation-Sarvurdering-Spesialist-1.md) | Noras faglige vurdering under videotimen, basert på bildet fra Lise, bildet fra hodekameraet og Saras observasjoner. |
| [Sårpoliklinikken, Fjordvik sykehus](Organization-Sarpoliklinikk.md) | Oppdiktet sårpoliklinikk på sykehuset, som hjelper hjemmetjenesten med vurdering og behandling av sår. |
| [Videotime med sårpoliklinikken](Encounter-Time-Sarpoliklinikk-1.md) | Karin har time hos sårpoliklinikken. Sara er hjemme hos Karin med Jodapro hodekamera, og Nora er med på video fra sykehuset. |

