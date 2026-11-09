// Alle personer, steder og bilder her er oppdiktet testdata.

Instance:    Pasient-Karin
InstanceOf:  JodaPasient
Title:       "Karin Testdal"
Description: "Oppdiktet pasient, 78 år, som får hjelp fra hjemmetjenesten i Fjordvik kommune til et leggsår."
Usage:       #example
* identifier.system = "https://example.org/oppdiktet/pasient-id"
* identifier.value = "testpasient-karin"
* name.family = "Testdal"
* name.given = "Karin"
* gender = #female
* birthDate = "1948-03-13"

Instance:    Datter-Lise
InstanceOf:  RelatedPerson
Title:       "Lise Testdal"
Description: "Oppdiktet datter av Karin, som hjelper moren med å ta bilder av såret mellom besøkene."
Usage:       #example
* patient = Reference(Pasient-Karin)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DAU "natural daughter"
* name.family = "Testdal"
* name.given = "Lise"

Instance:    Sykepleier-Sara
InstanceOf:  Practitioner
Title:       "Sara Testesen"
Description: "Oppdiktet sykepleier i hjemmetjenesten i Fjordvik kommune."
Usage:       #example
* name.family = "Testesen"
* name.given = "Sara"

Instance:    Kamera-Mobil
InstanceOf:  JodaKamera
Title:       "Mobilen til Lise"
Description: "Mobiltelefon brukt via JodaCare."
Usage:       #example
* type = JodaKameratype#mobil "Mobiltelefon eller nettbrett"
* deviceName.name = "Mobil via JodaCare"
* deviceName.type = #user-friendly-name

Instance:    Kamera-Jodapro
InstanceOf:  JodaKamera
Title:       "Jodapro hodekamera"
Description: "Hodekamera som hjemmetjenesten bruker."
Usage:       #example
* type = JodaKameratype#hodekamera "Hodekamera"
* deviceName[0].name = "Jodapro hodekamera"
* deviceName[0].type = #user-friendly-name
* deviceName[1].name = "Navigator 520"
* deviceName[1].type = #model-name
* manufacturer = "RealWear"
* identifier.system = "https://jodapro.no/fhir/sid/device-id"
* identifier.value = "0f3c9a2e7b41d5c8"

Instance:    Sarbilde-Hjemme-1
InstanceOf:  JodaSarbilde
Title:       "Bilde tatt hjemme av datteren"
Description: "Lise tar et bilde av morens sår med mobilen via JodaCare, to dager etter siste besøk."
Usage:       #example
* status = #completed
* type = $mediatype#image "Image"
* subject = Reference(Pasient-Karin)
* createdDateTime = "2026-11-10T18:30:00+01:00"
* operator = Reference(Datter-Lise)
* bodySite.text = "Venstre legg, innside"
* device = Reference(Kamera-Mobil)
* content.contentType = #image/jpeg
* content.url = "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg"
* content.title = "Sår venstre legg 10.11.2026"
* note.text = "Mamma sier det verker mer i kveld, og det ser rødere ut rundt kanten."

Instance:    Sarbilde-Besok-1
InstanceOf:  JodaSarbilde
Title:       "Bilde tatt av sykepleier med hodekamera"
Description: "Sara tar et bilde med Jodapro hodekamera under besøket dagen etter."
Usage:       #example
* status = #completed
* type = $mediatype#image "Image"
* subject = Reference(Pasient-Karin)
* createdDateTime = "2026-11-11T10:15:00+01:00"
* operator = Reference(Sykepleier-Sara)
* bodySite.text = "Venstre legg, innside"
* device = Reference(Kamera-Jodapro)
* identifier.system = "https://jodapro.no/fhir/sid/evidence-id"
* identifier.value = "7d2f4b8e-1c3a-4e59-9b6d-2a8f0c5e9d14"
* content.contentType = #image/tiff
* content.url = "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-besok-1.tif"
* content.size = 7683900
* content.hash = "rJqcpzbJIEJ9boVfRPxDRrecRjo="
* content.title = "Sår venstre legg 11.11.2026, besøk"

Instance:    Sarvurdering-Besok-1
InstanceOf:  JodaSarvurdering
Title:       "Sårvurdering ved besøk"
Description: "Saras vurdering av såret, basert på bildet fra Lise og bildet fra besøket."
Usage:       #example
* status = #final
* code = JodaSarvurderingKode#sarvurdering "Sårvurdering"
* subject = Reference(Pasient-Karin)
* effectiveDateTime = "2026-11-11T10:25:00+01:00"
* performer = Reference(Sykepleier-Sara)
* bodySite.text = "Venstre legg, innside"
* derivedFrom[0] = Reference(Sarbilde-Hjemme-1)
* derivedFrom[1] = Reference(Sarbilde-Besok-1)
* component[lengde].code = JodaSarvurderingKode#lengde
* component[lengde].valueQuantity = 4.5 'cm' "cm"
* component[bredde].code = JodaSarvurderingKode#bredde
* component[bredde].valueQuantity = 3 'cm' "cm"
* component[sarbunn].code = JodaSarvurderingKode#sarbunn
* component[sarbunn].valueCodeableConcept = JodaSarbunn#fibrin "Fibrin (belegg)"
* component[vaesking].code = JodaSarvurderingKode#vaesking
* component[vaesking].valueCodeableConcept = JodaVaesking#moderat "Moderat"
* component[hud_rundt].code = JodaSarvurderingKode#hud-rundt
* component[hud_rundt].valueCodeableConcept = JodaHudRundt#rod "Rød"
* component[infeksjonstegn].code = JodaSarvurderingKode#infeksjonstegn
* component[infeksjonstegn].valueBoolean = true
* component[smerte].code = JodaSarvurderingKode#smerte
* component[smerte].valueInteger = 6

Instance:    Sardokument-Hjemme-1-Innsendt
InstanceOf:  JodaSardokument
Title:       "Bildet fra Lise, sendt inn"
Description: "Bildet Lise tok er sendt inn til journalen, men ikke vurdert ennå."
Usage:       #example
* status = #current
* docStatus = #preliminary
* subject = Reference(Pasient-Karin)
* date = "2026-11-10T18:31:00+01:00"
* author = Reference(Datter-Lise)
* content.attachment.contentType = #image/jpeg
* content.attachment.url = "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg"
* context.related = Reference(Sarbilde-Hjemme-1)

Instance:    Sardokument-Hjemme-1-Journalfort
InstanceOf:  JodaSardokument
Title:       "Bildet fra Lise, journalført"
Description: "Sara har sett på bildet og valgt å legge det i journalen."
Usage:       #example
* status = #current
* docStatus = #final
* subject = Reference(Pasient-Karin)
* date = "2026-11-11T10:30:00+01:00"
* author = Reference(Datter-Lise)
* authenticator = Reference(Sykepleier-Sara)
* content.attachment.contentType = #image/jpeg
* content.attachment.url = "https://kristilerla.github.io/joda-sardokumentasjon-fhir/currentbuild/sarbilde-hjemme-1.jpg"
* context.related[0] = Reference(Sarbilde-Hjemme-1)
* context.related[1] = Reference(Sarvurdering-Besok-1)

Instance:    Proveniens-Sarbilde-Hjemme-1
InstanceOf:  Provenance
Title:       "Hvem tok bildet hjemme"
Description: "Sporbarhet: Lise tok bildet med mobilen via JodaCare."
Usage:       #example
* target = Reference(Sarbilde-Hjemme-1)
* recorded = "2026-11-10T18:31:00+01:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(Datter-Lise)
* agent[0].onBehalfOf = Reference(Pasient-Karin)
* agent[1].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler "Assembler"
* agent[1].who = Reference(Kamera-Mobil)

Instance:    Proveniens-Sarbilde-Besok-1
InstanceOf:  Provenance
Title:       "Hvem tok bildet ved besøket"
Description: "Sporbarhet: Sara tok bildet med Jodapro hodekamera. Originalen er identifisert med SHA-256 som ni-URI (RFC 6920), slik at det kan bevises at bildet ikke er endret."
Usage:       #example
* target = Reference(Sarbilde-Besok-1)
* recorded = "2026-11-11T09:15:02Z"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(Sykepleier-Sara)
* agent[1].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#assembler "Assembler"
* agent[1].who = Reference(Kamera-Jodapro)
* entity[0].role = #source
* entity[0].what.identifier.system = "urn:ietf:rfc:3986"
* entity[0].what.identifier.value = "ni:///sha-256;MED5LDQNKl1bo72jfM24eOYoeNVmNrnzBjtch0GxL1Q"
* entity[0].what.display = "Tapsfri original (TIFF) fra Jodapro bevispakke, SHA-256 3040f92c340d2a5d5ba3bda37ccdb878e62878d56636b9f3063b5c8741b12f54"
