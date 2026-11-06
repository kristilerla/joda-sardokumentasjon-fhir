Profile:     JodaPasient
Id:          joda-pasient
Parent:      NoBasisPatient
Title:       "Pasient"
Description: "Pasienten som har såret. Bygger på pasientprofilen i no-basis."
* ^status = #draft
* ^experimental = true
* identifier 1..* MS
* name 1..* MS
* birthDate MS

Profile:     JodaKamera
Id:          joda-kamera
Parent:      Device
Title:       "Kamera"
Description: "Kameraet bildet er tatt med: en mobil eller et nettbrett via JodaCare, eller et Jodapro hodekamera."
* ^status = #draft
* ^experimental = true
* type 1..1 MS
* type from JodaKameratypeVS (required)
* deviceName MS

Profile:     JodaSarbilde
Id:          joda-sarbilde
Parent:      Media
Title:       "Sårbilde"
Description: "Et bilde av et sår. Kan være tatt av pasienten selv, av en pårørende eller av helsepersonell."
* ^status = #draft
* ^experimental = true
* status MS
* type 1..1 MS
* type = $mediatype#image
* subject 1..1 MS
* subject only Reference(JodaPasient)
* created[x] 1..1 MS
* created[x] only dateTime
* created[x] ^short = "Når bildet ble tatt"
* operator 1..1 MS
* operator only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole)
* operator ^short = "Hvem som tok bildet"
* bodySite 1..1 MS
* bodySite ^short = "Hvor på kroppen såret er"
* device MS
* device only Reference(JodaKamera)
* device ^short = "Kameraet bildet er tatt med"
* content MS
* content.contentType 1..1 MS
* content.contentType from JodaBildeformatVS (required)
* content ^short = "Selve bildet, som data eller som en lenke"
* note MS
* note ^short = "Kommentar fra den som tok bildet"

ValueSet:    JodaBildeformatVS
Id:          joda-bildeformat-vs
Title:       "Bildeformat"
Description: "Bildeformater som kan brukes for sårbilder."
* ^status = #draft
* ^experimental = true
* urn:ietf:bcp:13#image/jpeg "JPEG"
* urn:ietf:bcp:13#image/png  "PNG"

Profile:     JodaSarvurdering
Id:          joda-sarvurdering
Parent:      Observation
Title:       "Sårvurdering"
Description: "En vurdering av et sår, gjerne basert på ett eller flere sårbilder. Pasienten kan selv registrere smerte og tegn på infeksjon. Mål og sårbunn registreres normalt av helsepersonell."
* ^status = #draft
* ^experimental = true
* status MS
* code = JodaSarvurderingKode#sarvurdering
* subject 1..1 MS
* subject only Reference(JodaPasient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* performer 1..* MS
* performer only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole)
* performer ^short = "Hvem som gjorde vurderingen"
* bodySite 1..1 MS
* derivedFrom MS
* derivedFrom only Reference(JodaSarbilde)
* derivedFrom ^short = "Sårbildene vurderingen bygger på"
* note MS
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Feltene i vurderingen skilles fra hverandre på koden."
* component contains
    lengde 0..1 MS and
    bredde 0..1 MS and
    dybde 0..1 MS and
    sarbunn 0..1 MS and
    vaesking 0..1 MS and
    hud_rundt 0..1 MS and
    infeksjonstegn 0..1 MS and
    smerte 0..1 MS
* component[lengde].code = JodaSarvurderingKode#lengde
* component[lengde].value[x] only Quantity
* component[lengde].valueQuantity.system = $ucum
* component[lengde].valueQuantity.code = #cm
* component[bredde].code = JodaSarvurderingKode#bredde
* component[bredde].value[x] only Quantity
* component[bredde].valueQuantity.system = $ucum
* component[bredde].valueQuantity.code = #cm
* component[dybde].code = JodaSarvurderingKode#dybde
* component[dybde].value[x] only Quantity
* component[dybde].valueQuantity.system = $ucum
* component[dybde].valueQuantity.code = #cm
* component[sarbunn].code = JodaSarvurderingKode#sarbunn
* component[sarbunn].value[x] only CodeableConcept
* component[sarbunn].valueCodeableConcept from JodaSarbunnVS (required)
* component[vaesking].code = JodaSarvurderingKode#vaesking
* component[vaesking].value[x] only CodeableConcept
* component[vaesking].valueCodeableConcept from JodaVaeskingVS (required)
* component[hud_rundt].code = JodaSarvurderingKode#hud-rundt
* component[hud_rundt].value[x] only CodeableConcept
* component[hud_rundt].valueCodeableConcept from JodaHudRundtVS (required)
* component[infeksjonstegn].code = JodaSarvurderingKode#infeksjonstegn
* component[infeksjonstegn].value[x] only boolean
* component[smerte].code = JodaSarvurderingKode#smerte
* component[smerte].value[x] only integer
* component[smerte] ^short = "Smerte fra 0 (ingen) til 10 (verst tenkelig)"

Profile:     JodaSardokument
Id:          joda-sardokument
Parent:      DocumentReference
Title:       "Sårdokument til journal"
Description: "Et sårbilde som er sendt inn til journalen. Det starter som foreløpig (docStatus = preliminary). Når helsepersonell har sett på det og valgt å journalføre det, blir det endelig (docStatus = final) og får helsepersonellet som authenticator."
* ^status = #draft
* ^experimental = true
* status MS
* docStatus 1..1 MS
* docStatus ^short = "preliminary: sendt inn, ikke vurdert. final: journalført av helsepersonell."
* subject 1..1 MS
* subject only Reference(JodaPasient)
* date 1..1 MS
* author 1..* MS
* author ^short = "Hvem som sendte inn bildet"
* authenticator MS
* authenticator ^short = "Helsepersonellet som journalførte bildet"
* content 1..1 MS
* content.attachment.contentType 1..1 MS
* context.related MS
* context.related ^short = "Sårbildet og eventuelt sårvurderingen"
