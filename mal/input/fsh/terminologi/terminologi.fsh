// Egne kodeverk for sårdokumentasjon. Bør erstattes med SNOMED CT der det finnes gode koder.

CodeSystem:  JodaKameratype
Id:          joda-kameratype
Title:       "Kameratype"
Description: "Hva slags kamera bildet er tatt med."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #mobil      "Mobiltelefon eller nettbrett"  "Pasientens, pårørendes eller den ansattes egen mobil eller nettbrett, via JodaCare."
* #hodekamera "Hodekamera"                    "Jodapro hodekamera brukt av helsepersonell."

ValueSet:    JodaKameratypeVS
Id:          joda-kameratype-vs
Title:       "Kameratype"
Description: "Gyldige kameratyper."
* ^status = #draft
* ^experimental = true
* include codes from system JodaKameratype

CodeSystem:  JodaSarvurderingKode
Id:          joda-sarvurdering-kode
Title:       "Sårvurdering"
Description: "Kode for selve sårvurderingen og for feltene i den."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #sarvurdering    "Sårvurdering"           "En vurdering av et sår på et gitt tidspunkt."
* #lengde          "Lengde"                 "Sårets lengde i centimeter."
* #bredde          "Bredde"                 "Sårets bredde i centimeter."
* #dybde           "Dybde"                  "Sårets dybde i centimeter."
* #sarbunn         "Sårbunn"                "Hva sårbunnen består av."
* #vaesking        "Væsking"                "Hvor mye såret væsker."
* #hud-rundt       "Huden rundt såret"      "Tilstanden til huden rundt såret."
* #infeksjonstegn  "Tegn på infeksjon"      "Om det er tegn på infeksjon, for eksempel rødme, varme, hevelse eller lukt."
* #smerte          "Smerte"                 "Smerte i såret på en skala fra 0 til 10."

CodeSystem:  JodaSarbunn
Id:          joda-sarbunn
Title:       "Sårbunn"
Description: "Hva sårbunnen hovedsakelig består av."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #granulasjon "Granulasjonsvev"
* #fibrin      "Fibrin (belegg)"
* #nekrose     "Nekrose"
* #epitel      "Epitelisering"

ValueSet:    JodaSarbunnVS
Id:          joda-sarbunn-vs
Title:       "Sårbunn"
Description: "Gyldige verdier for sårbunn."
* ^status = #draft
* ^experimental = true
* include codes from system JodaSarbunn

CodeSystem:  JodaVaesking
Id:          joda-vaesking
Title:       "Væsking"
Description: "Hvor mye såret væsker."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #ingen    "Ingen"
* #lite     "Lite"
* #moderat  "Moderat"
* #mye      "Mye"

ValueSet:    JodaVaeskingVS
Id:          joda-vaesking-vs
Title:       "Væsking"
Description: "Gyldige verdier for væsking."
* ^status = #draft
* ^experimental = true
* include codes from system JodaVaesking

CodeSystem:  JodaHudRundt
Id:          joda-hud-rundt
Title:       "Huden rundt såret"
Description: "Tilstanden til huden rundt såret."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #normal    "Normal"
* #rod       "Rød"
* #maserert  "Maserert (oppbløtt)"
* #hoven     "Hoven"
* #torr      "Tørr eller skjellende"

ValueSet:    JodaHudRundtVS
Id:          joda-hud-rundt-vs
Title:       "Huden rundt såret"
Description: "Gyldige verdier for huden rundt såret."
* ^status = #draft
* ^experimental = true
* include codes from system JodaHudRundt
