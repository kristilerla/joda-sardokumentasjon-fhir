# Karins sår i JodaCare

FHIR-hackathon · Rebel, Oslo · 9. november 2026

# Karins sår: fra JodaCare til journal

Karin (78) har leggsår og får hjemmesykepleie. Datteren Lise tar et bilde med mobilen i JodaCare når såret blir verre. Dagen etter har Karin time hos sårpoliklinikken på sykehuset: sykepleier Sara er hjemme hos Karin med Jodapro hodekamera, og spesialisten Nora er med på video. Sara måler, Nora vurderer og foreslår en ny sårplan, og Sara journalfører. Først da sendes noe til NHN.

Ressursnavnene under er eksemplene i FHIR-guiden `joda-sardokumentasjon-fhir`.

## Flyten

**Sårplan
**Pårørende i JodaCare
**Hjemmetjenesten med Jodapro
**Journal (FHIR)
**Sårpoliklinikken
**NHN
Stiplet: uavklart, eller tenkt videre

## Bildene

**10.11 kl. 18:30 · Lise, JodaCare**
«Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten.»

**11.11 kl. 10:15 · Sara, hodekamera, videotime**
Sara: 4,5 × 3 cm, moderat væsking, rød hud rundt, smerte 6 av 10. Nora: fibrin og tegn på infeksjon.

**25.11 · Ny videotime**
Nytt bilde å sammenligne med de to første.

## Steg for steg

1. 

1

### Planen sier hva Lise skal gjøre

Sårplan

Sårplanen har tre soner. I gul sone (rødere kant, mer væske eller smerte over 5 av 10) skal Lise ta et bilde i JodaCare og sende det til hjemmetjenesten samme dag. I rød sone ringer hun legevakten på 116 117.

`sarplan.json` → NHN Pasientens planer


1. 

2

### Lise tar bildet i JodaCare

Pårørende

Bildet kommer asynkront, når Lise tar det. Det blir lagret med hvem som tok det, med hvilket kamera og på vegne av hvem. Det er sendt inn, men ikke vurdert, så det står som foreløpig.

`Sarbilde-Hjemme-1` · `Proveniens-Sarbilde-Hjemme-1` · `Sardokument-Hjemme-1-Innsendt`


1. 

3

### Videotime med sårpoliklinikken

Sykepleier og spesialist

Karin har time hos sårpoliklinikken på sykehuset. Sara er hjemme hos Karin med hodekameraet, og spesialisten Nora er med på video. Sara tar et bilde, og kameraet lager en bevispakke med originalen og en SHA-256-sjekksum.

`Time-Sarpoliklinikk-1` (Encounter) · `Sarbilde-Besok-1` · `pakker/sarbilde-besok-1`


1. 

4

### Sara måler og observerer

Sykepleier

Sara registrerer det hun ser hjemme hos Karin: mål, væsking, huden rundt og smerte.

`Sarvurdering-Besok-1`


1. 

5

### Nora vurderer og foreslår ny sårplan

Spesialist

Nora gjør den faglige vurderingen ut fra Lises bilde, bildet fra hodekameraet og Saras observasjoner: sårbunn og tegn på infeksjon. Hun foreslår en ny sårplan med grønn, gul og rød sone og ny videotime om to uker.

`Sarvurdering-Spesialist-1`, med `derivedFrom` til begge bildene og Saras observasjoner


1. 

6

### Lises bilde blir journalført

Journal

Lise står fortsatt som forfatter, og Sara står som den som har godkjent bildet. Dokumentet peker på begge vurderingene.

`Sardokument-Hjemme-1-Journalfort`


1. 

7

### Bildene deles gjennom NHN

NHN

Dokumentlager har ikke foreløpig og endelig status. Bilder sendes derfor først når de er journalført. Begge bildene har en ferdig bundle. I Lises bundle står Lise som forfatter (pårørende), og Sara står som den som har godkjent og sendt inn bildet. Dokumentlager kan også være måten sårpoliklinikken får se bildene på.

`jodapro_til_iti65.py` → `bundler/sarbilde-besok-1-bundle.json` og `bundler/sarbilde-hjemme-1-bundle.json` → `POST /R4/fhir/Bundle/{operation}`


## Hva som er klart i dag

| | | |
| :--- | :--- | :--- |
| Flyten med Lise i FHIR-guiden | Validert lokalt | SUSHI: 0 feil, 0 advarsler |
| Sårpoliklinikken, videotimen og delt vurdering i guiden | Validert lokalt | SUSHI og validator: 0 feil. Ikke pushet |
| Bundle av Saras bilde | Validert lokalt | MHD 4.2.2: 0 feil, 5 advarsler om Volven-kodeverk |
| Saras bilde i NHN Dokumentlager | Ikke prøvd | Trenger token, verdien i`{operation}`og`homeCommunityId`fra NHN |
| Sårplanen i Pasientens planer | Ikke prøvd | Valgfritt spor |
| Bundle av Lises bilde | Validert lokalt | MHD 4.2.2: 0 feil, 5 advarsler om Volven-kodeverk. Lise er forfatter (RelatedPerson), Sara har godkjent bildet |
| Lises bilde i NHN Dokumentlager | Ikke prøvd | Avhenger av om NHN godtar en pårørende som forfatter |
| Forslagene fra Jodapro i guiden | Pushet til branch | TIFF, kameradetaljer, Provenance med SHA-256 og ekte bildelenker. Branchen`jodapro-forslag`, ikke bygget ennå |
| FHIR-eksport fra JodaCare-appen | Mangler | Ikke en del av hackathon-pakken |

## Hva JodaCare tilfører

* **Familien blir en kilde.** Forverringen blir synlig kvelden den skjer, ikke ved neste besøk.
* **Spesialisten ser utviklingen.** Sårpoliklinikken får både bildet fra kvelden før og bildet fra timen.
* **Bildet holdes adskilt fra journalen** til helsepersonell har vurdert det.
* **Sporbarhet** for hvem som tok bildet, med hva og for hvem, også når det ikke er helsepersonell.

Spørsmål til NHN

Kan en pårørende stå som forfatter av et dokument i Dokumentlager, eller må helsepersonell stå som forfatter når bildet journalføres?

Svaret avgjør hvordan bilder fra JodaCare kan deles.

Kan sårpoliklinikken på sykehuset hente bildene fra Dokumentlager før timen?

Da ser spesialisten Lises bilde uten at hjemmetjenesten må sende det på annen måte.

Støtter Dokumentlager eller Pasientens planer SMART on FHIR, slik at JodaCare kan startes med pasienten valgt og få tilgang med avgrensede rettigheter?

I dag er det tenkt et HelseID-token og system-til-system-innsending. SMART ville passet når Sara eller Lise sitter i appen selv.

Alle personer, bilder og data på denne siden er oppdiktet testdata. Bildene er tegnet og merket «OPPDIKTET TESTBILDE».

