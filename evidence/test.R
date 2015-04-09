print("WAVE 3")

elsa_4 <- read.dta("elsa/UKDA-5050-stata11_se/stata11_se/wave_3_elsa_data_v4.dta")
elsa_4$mobility_need <- as.logical(mapvalues(tolower(elsa_4$hemob96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$adl_need <- as.logical(mapvalues(tolower(elsa_4$headl96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$need <- elsa_4$mobility_need | elsa_4$adl_need #This isn't ideal, but there happen to be no NA values here.
elsa_4$help <- as.logical(mapvalues(tolower(elsa_4$hehpa), c("yes", "no", "refusal", "don't know", "schedule not applicable"), c(T, F, NA, NA, NA)))

elsa_4$adlneed <- (tolower(elsa_4$headlba) == "mentioned") | (tolower(elsa_4$headldr) == "mentioned")
elsa_4.svy <- svydesign(~idauniq, data=elsa_4, weights=~w3xwgt)
elsa_4.svy.65plus <- subset(elsa_4.svy, indager > 64)
print(svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean))
print(svytable(~adlneed, design=elsa_4.svy.65plus, Ntotal=100))

wave3 = svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean)$"hehpw96Not mentioned"[2]


print("WAVE 4")
elsa_4 <- read.dta("elsa/UKDA-5050-stata11_se/stata11_se/wave_4_elsa_data_v3.dta")
elsa_4$mobility_need <- as.logical(mapvalues(tolower(elsa_4$hemob96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$adl_need <- as.logical(mapvalues(tolower(elsa_4$headl96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$need <- elsa_4$mobility_need | elsa_4$adl_need #This isn't ideal, but there happen to be no NA values here.
elsa_4$help <- as.logical(mapvalues(tolower(elsa_4$hehpa), c("yes", "no", "refusal", "don't know", "schedule not applicable"), c(T, F, NA, NA, NA)))

elsa_4$adlneed <- (tolower(elsa_4$headlba) == "mentioned") | (tolower(elsa_4$headldr) == "mentioned")
elsa_4.svy <- svydesign(~idauniq, data=elsa_4, weights=~w4xwgt)
elsa_4.svy.65plus <- subset(elsa_4.svy, indager > 64)
print(svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean))
print(svytable(~adlneed, design=elsa_4.svy.65plus, Ntotal=100))

wave4 = svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean)$"hehpw96Not mentioned"[2]

print("WAVE 5")

elsa_4 <- read.dta("elsa/UKDA-5050-stata11_se/stata11_se/wave_5_elsa_data_v3.dta")
elsa_4$mobility_need <- as.logical(mapvalues(tolower(elsa_4$hemob96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$adl_need <- as.logical(mapvalues(tolower(elsa_4$headl96), c("mentioned", "not mentioned", "refusal", "don't know", "schedule not applicable", "item not applicable"), c(F, T, NA, NA, NA, NA)))
elsa_4$need <- elsa_4$mobility_need | elsa_4$adl_need #This isn't ideal, but there happen to be no NA values here.
elsa_4$help <- as.logical(mapvalues(tolower(elsa_4$hehpa), c("yes", "no", "refusal", "don't know", "schedule not applicable"), c(T, F, NA, NA, NA)))

elsa_4$adlneed <- (tolower(elsa_4$headlba) == "mentioned") | (tolower(elsa_4$headldr) == "mentioned")
elsa_4.svy <- svydesign(~idauniq, data=elsa_4, weights=~w5xwgt)
elsa_4.svy.65plus <- subset(elsa_4.svy, indager > 64)
print(svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean))
print(svytable(~adlneed, design=elsa_4.svy.65plus, Ntotal=100))

wave5 = svyby(~hehpw96, ~adlneed, design=elsa_4.svy.65plus, FUN=svymean)$"hehpw96not mentioned"[2]