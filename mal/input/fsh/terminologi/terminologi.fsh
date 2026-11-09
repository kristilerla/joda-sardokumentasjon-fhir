// Egne kodeverk for sårdokumentasjon. Spørsmålene bruker LOINC og svarene SNOMED CT der guiden har koder.
// Det som står igjen her, mangler ennå en standardkode.

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
Description: "Egne koder for felt i sårvurderingen som ennå ikke har en LOINC-kode i guiden. De andre feltene bruker LOINC."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* #infeksjonstegn  "Tegn på infeksjon"      "Om det er tegn på infeksjon, for eksempel rødme, varme, hevelse eller lukt."

ValueSet:    JodaSarbunnVS
Id:          joda-sarbunn-vs
Title:       "Sårbunn"
Description: "Hva sårbunnen hovedsakelig består av. SNOMED CT-koder fra woundBedAppearanceVS i HL7 Lower Extremity Skin Wound Assessment IG."
* ^status = #draft
* ^experimental = true
* $sct#225541009 "Granulation of tissue"
* $sct#449745003 "Fibrinous wound bed"
* $sct#449746002 "Wound slough"
* $sct#421306004 "Necrotic eschar"
* $sct#609410002 "Necrosis of anatomical site"
* $sct#409590008 "Skin eschar"
* $sct#449743005 "Wound epithelialization"

ValueSet:    JodaVaeskingVS
Id:          joda-vaesking-vs
Title:       "Væsking"
Description: "Hvor mye såret væsker. SNOMED CT-koder fra woundExudateAmountDescriptionVS i HL7 Lower Extremity Skin Wound Assessment IG."
* ^status = #draft
* ^experimental = true
* $sct#260413007 "None"
* $sct#263865001 "Scanty"
* $sct#255507004 "Small"
* $sct#6736007   "Moderate"
* $sct#255509001 "Large"

ValueSet:    JodaHudRundtVS
Id:          joda-hud-rundt-vs
Title:       "Huden rundt såret"
Description: "Tilstanden til huden rundt såret. Et utvalg av SNOMED CT-kodene i periwoundConditionVS i HL7 Lower Extremity Skin Wound Assessment IG."
* ^status = #draft
* ^experimental = true
* $sct#444884003 "Intact skin"
* $sct#239163008 "Wound erythema"
* $sct#3644009   "Macerated skin"
* $sct#95322002  "Edematous skin"
* $sct#16386004  "Dry skin"
* $sct#17038008  "Increased skin temperature"
* $sct#449738003 "Inflammation of periwound skin"
* $sct#449744004 "Induration of wound"
* $sct#247444006 "Excoriation of skin"
* $sct#417237009 "Blister"
