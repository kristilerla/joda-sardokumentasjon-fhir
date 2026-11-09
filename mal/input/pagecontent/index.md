### Om denne guiden

Dette er en øvingsguide som beskriver hvordan bilder og vurderinger av sår kan uttrykkes i HL7 FHIR og sendes til pasientens journal. Bildene kan være tatt av pasienten selv eller en pårørende med mobilen via JodaCare, eller av helsepersonell med et Jodapro hodekamera.

Guiden er et utkast. Den beskriver ingen ferdig integrasjon. Alle personer, steder og bilder i eksemplene er oppdiktet.

### Bakgrunn

Mange som får hjelp av hjemmetjenesten har sår som skal følges opp over tid, for eksempel leggsår, trykksår eller operasjonssår. Hjemmetjenesten ser såret når de er på besøk. Mellom besøkene er det ofte pasienten selv eller familien som ser at noe endrer seg.

Et bilde tatt hjemme kan gi hjemmetjenesten beskjed tidligere, og et bilde tatt med hodekamera under besøket gir god dokumentasjon uten at sykepleieren må legge fra seg utstyret. Når begge typer bilder beskrives på samme måte, kan de havne i samme sårjournal.

### Aktører

| Aktør | Rolle |
|---|---|
| Pasient | Har såret. Kan ta bilder og registrere smerte og om det ser betent ut. |
| Pårørende | Hjelper pasienten med å ta bilder mellom besøkene. |
| Sykepleier i hjemmetjenesten | Ser bildene fra pasient og pårørende, måler og observerer såret, og bestemmer hva som journalføres. Tar bilder med Jodapro hodekamera under timen med sårpoliklinikken. |
| Spesialist på sårpoliklinikken | Er med på video fra sykehuset under timen. Gjør den faglige sårvurderingen og foreslår sårplanen. |
| Journalsystemet | Kommunens pasientjournal, der det journalførte bildet og vurderingen havner. |

### Hovedbrukstilfelle: leggsår som blir verre

1. Karin (78 år) får hjelp av hjemmetjenesten i Fjordvik kommune til et leggsår på venstre legg.
2. En kveld mellom besøkene synes datteren Lise at såret ser rødere ut. Hun tar et bilde med mobilen i JodaCare og skriver at det verker mer.
3. Bildet sendes inn som foreløpig. Det er ikke en del av journalen ennå.
4. Neste morgen ser sykepleieren Sara bildet. Karin har time hos sårpoliklinikken på Fjordvik sykehus. Sara er hjemme hos Karin med Jodapro hodekamera, og spesialisten Nora er med på video fra sykehuset.
5. Under timen tar Sara et bilde med hodekameraet og registrerer det hun måler og observerer: mål, væsking, huden rundt og smerte.
6. Nora gjør den faglige vurderingen ut fra bildet fra Lise, bildet fra hodekameraet og Saras observasjoner: sårbunn og tegn på infeksjon. Hun foreslår en ny sårplan med grønn, gul og rød sone.
7. Sara journalfører bildet fra Lise sammen med vurderingene. Bildet får status endelig og Sara som den som har godkjent det.
8. Hvem som tok hvert bilde, og med hvilket kamera, er sporbart.

Flyten er også vist som et diagram, med bildene og status fra FHIR-hackathonet 9. november 2026: [Karins sår: fra JodaCare til journal](karins-sar.html).

### Krav

- Et sårbilde gjelder alltid én pasient og ett sted på kroppen.
- Det skal alltid gå fram hvem som tok bildet, når, og med hvilket kamera.
- Et bilde fra pasienten eller en pårørende er ikke en del av journalen før helsepersonell har vurdert det. Det er helsepersonell som har journalføringsplikt og bestemmer hva som journalføres (helsepersonelloven §§ 39 og 40).
- En sårvurdering skal kunne vise hvilke bilder den bygger på.
- Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell.
- Bilder av sår er helseopplysninger og skal behandles etter Normen.

### Modell

| Begrep | FHIR-ressurs | Profil |
|---|---|---|
| Pasienten | Patient | [Pasient](StructureDefinition-joda-pasient.html), bygger på no-basis |
| Kameraet | Device | [Kamera](StructureDefinition-joda-kamera.html), mobil via JodaCare eller Jodapro hodekamera |
| Bildet | Media | [Sårbilde](StructureDefinition-joda-sarbilde.html) |
| Timen med sårpoliklinikken | Encounter | Videotime der sykepleieren er hos pasienten og spesialisten er på sykehuset |
| Vurderingen | Observation | [Sårvurdering](StructureDefinition-joda-sarvurdering.html), én for sykepleierens observasjoner og én for spesialistens vurdering. Peker på bildene og andre vurderinger med derivedFrom |
| Innsending til journal | DocumentReference | [Sårdokument til journal](StructureDefinition-joda-sardokument.html), docStatus preliminary eller final |
| Sporbarhet | Provenance | Hvem tok bildet, på vegne av hvem, med hvilket kamera |

### Åpne spørsmål

1. Hvilke SNOMED CT-koder bør brukes for sårtype, sårbunn og kroppssted, i stedet for våre egne koder og fritekst?
2. Bør sårvurderingen bygge på en eksisterende standard for sårdokumentasjon, for eksempel et anerkjent vurderingsskjema?
3. Kan NHN-tjenesten Pasientens måledata ta imot bilder fra pasienten, eller er det IHE MHD og dokumentdeling som passer best?
4. Hvordan tar journalsystemene i kommunene imot bilder i dag, og hvor mange av dem støtter FHIR?
5. Hvordan skal pasientens samtykke til at pårørende tar og sender bilder uttrykkes?
6. Bør bildet i journalen være selve bildefilen, en lenke, eller en PDF med bilde og vurdering samlet?
7. I FHIR R5 er Media erstattet av DocumentReference. Bør guiden bruke DocumentReference for bildene allerede nå?
8. Hvordan får sårpoliklinikken se bildet fra Lise før timen? Kan det deles gjennom NHN Dokumentlager når Sara har journalført det?
9. Hvordan skal sårplanen fra spesialisthelsetjenesten deles med hjemmetjenesten, pasienten og pårørende? Er NHN Pasientens planer riktig sted?

### Spørsmål til Aidn

Aidn er et journalsystem for kommunal helse og omsorg, og Open Aidn bruker FHIR R4. I dokumentasjonen kan en tredjepart lese Observation og Composition, men det er ikke beskrevet hvordan man sender inn bilder eller dokumenter.

1. Kan en tredjepart sende inn et sårbilde til Aidn, for eksempel som Media eller DocumentReference, slik at sykepleieren kan vurdere og journalføre det?
2. Kan en sårvurdering sendes inn som en Observation?
3. Hvordan skiller Aidn mellom bilder tatt av pasienten eller en pårørende og bilder tatt av helsepersonell?
4. Hvordan får man tilgang til demomiljøet (open.demo.aidn.no)?
5. Har Aidn planer om å bygge den kommende Aidn-profilen på no-basis?

### Eksempler

- [Karin Testdal](Patient-Pasient-Karin.html), oppdiktet pasient
- [Lise Testdal](RelatedPerson-Datter-Lise.html), datter
- [Sara Testesen](Practitioner-Sykepleier-Sara.html), sykepleier
- [Nora Testvik](Practitioner-Spesialist-Nora.html), spesialist på sårpoliklinikken
- [Sårpoliklinikken, Fjordvik sykehus](Organization-Sarpoliklinikk.html)
- [Videotime med sårpoliklinikken](Encounter-Time-Sarpoliklinikk-1.html)
- [Bilde tatt hjemme av datteren](Media-Sarbilde-Hjemme-1.html)
- [Bilde tatt av sykepleier med hodekamera](Media-Sarbilde-Besok-1.html)
- [Saras observasjoner ved timen](Observation-Sarvurdering-Besok-1.html)
- [Spesialistens sårvurdering](Observation-Sarvurdering-Spesialist-1.html)
- [Bildet fra Lise, sendt inn](DocumentReference-Sardokument-Hjemme-1-Innsendt.html)
- [Bildet fra Lise, journalført](DocumentReference-Sardokument-Hjemme-1-Journalfort.html)
- [Hvem tok bildet hjemme](Provenance-Proveniens-Sarbilde-Hjemme-1.html)
- [Hvem tok bildet ved besøket](Provenance-Proveniens-Sarbilde-Besok-1.html)
