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
| [Huden rundt såret](ValueSet-joda-hud-rundt-vs.md) | Gyldige verdier for huden rundt såret. |
| [Kameratype](ValueSet-joda-kameratype-vs.md) | Gyldige kameratyper. |
| [Sårbunn](ValueSet-joda-sarbunn-vs.md) | Gyldige verdier for sårbunn. |
| [Væsking](ValueSet-joda-vaesking-vs.md) | Gyldige verdier for væsking. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Huden rundt såret](CodeSystem-joda-hud-rundt.md) | Tilstanden til huden rundt såret. |
| [Kameratype](CodeSystem-joda-kameratype.md) | Hva slags kamera bildet er tatt med. |
| [Sårbunn](CodeSystem-joda-sarbunn.md) | Hva sårbunnen hovedsakelig består av. |
| [Sårvurdering](CodeSystem-joda-sarvurdering-kode.md) | Kode for selve sårvurderingen og for feltene i den. |
| [Væsking](CodeSystem-joda-vaesking.md) | Hvor mye såret væsker. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Bilde tatt av sykepleier med hodekamera](Media-Sarbilde-Besok-1.md) | Sara tar et bilde med Jodapro hodekamera under besøket dagen etter. |
| [Bilde tatt hjemme av datteren](Media-Sarbilde-Hjemme-1.md) | Lise tar et bilde av morens sår med mobilen via JodaCare, to dager etter siste besøk. |
| [Bildet fra Lise, journalført](DocumentReference-Sardokument-Hjemme-1-Journalfort.md) | Sara har sett på bildet og valgt å legge det i journalen. |
| [Bildet fra Lise, sendt inn](DocumentReference-Sardokument-Hjemme-1-Innsendt.md) | Bildet Lise tok er sendt inn til journalen, men ikke vurdert ennå. |
| [Hvem tok bildet hjemme](Provenance-Proveniens-Sarbilde-Hjemme-1.md) | Sporbarhet: Lise tok bildet med mobilen via JodaCare. |
| [Jodapro hodekamera](Device-Kamera-Jodapro.md) | Hodekamera som hjemmetjenesten bruker. |
| [Karin Testdal](Patient-Pasient-Karin.md) | Oppdiktet pasient, 78 år, som får hjelp fra hjemmetjenesten i Fjordvik kommune til et leggsår. |
| [Lise Testdal](RelatedPerson-Datter-Lise.md) | Oppdiktet datter av Karin, som hjelper moren med å ta bilder av såret mellom besøkene. |
| [Mobilen til Lise](Device-Kamera-Mobil.md) | Mobiltelefon brukt via JodaCare. |
| [Sara Testesen](Practitioner-Sykepleier-Sara.md) | Oppdiktet sykepleier i hjemmetjenesten i Fjordvik kommune. |
| [Sårvurdering ved besøk](Observation-Sarvurdering-Besok-1.md) | Saras vurdering av såret, basert på bildet fra Lise og bildet fra besøket. |

