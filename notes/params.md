# Parameters, and sources

Belief in referral after asking for help -> can get some gist of this from the OPN surveys with a later life module (e.g. Jan 2011).

Idea is to use proportions of people (over 50) who believe that they will get all the help they need.

From Jan 2011 this looks like:

MCE_1Yes        0.565592 0.0240
MCE_1No         0.163532 0.0180 <- what's the right way to look at this? Take the average of a whole bunch?
MCE_1Don t know 0.257993 0.0204
MCE_1Refusal    0.012883 0.0127

            mean     SE
MCE_11 0.5555313 0.0050
MCE_12 0.1672570 0.0038 <- averaging over the year's OPN surveys
MCE_13 0.2733484 0.0045
MCE_18 0.0038633 0.0009

How do you generate a population to match that? If we say 10 draws, you want 55% of the population with Yes > No, 27% with Yes = No, and 17% with No > Yes

Could just draw for category -> yes with p 55, then draw Yes from a uniform dist 5-10, no is 10-yes?

(Note that this doesn't give you any idea about people who believe they'll get help without asking. This might indicate that we'll need to revise the model.)

Can also look at this based on people's personal experiences - might be useful to look at this against belief change in the agents after playing:

    MCEb_2  MCE_1Yes   MCE_1No MCE_1Don t know MCE_1Refusal se.MCE_1Yes
Yes    Yes 0.6817201 0.1825307       0.1140092   0.02174003  0.03198866
No      No 0.3966657 0.1358957       0.4674386   0.00000000  0.03460050
    se.MCE_1No se.MCE_1Don t know se.MCE_1Refusal
Yes 0.02479683         0.01975136      0.02131815
No  0.02563496         0.03547331      0.00000000

Can do something similar for the belief that they'll get a negative reaction, based on experience of direct prejudice -

                        mean     SE
MCX_261.Never      0.7625673 0.0217
MCX_262.           0.0971355 0.0139
MCX_263.           0.0307608 0.0076
MCX_264.           0.0265676 0.0073
MCX_265.           0.0374810 0.0094
MCX_266.           0.0153878 0.0058
MCX_267.Very often 0.0056508 0.0037
MCX_26Refusal      0.0162792 0.0130
MCX_26Don't Know   0.0081701 0.0036

Eurobarometer - QA18 And how do you feel about the idea of becoming dependent upon the help of others one day? Are you…? 

v183Very worried            0.30493 0.0233
v183Fairly worried          0.33254 0.0238
v183Not really worried      0.24498 0.0220
v183Not at all worried      0.11755 0.0164


QA2 HEALTH HANDICAP: GET IN/OUT BED/CHAIR	Not mentioned	Mentioned	Total
QA27 CARE PREFERENCE DISCUSSED: NEVER
Not mentioned 	28.4	45.1	29.5
Mentioned 	71.6	54.9	70.5
Total	100.0	100.0	100.0
N=	541.7	38.5	580.2


svymean(~perceived_stigma,ess.svy.50plus, na.rm=T)
                   mean     SE
perceived_stigma 2.5079 0.0149

april 2009 = 6824


Synthetic populations

Elderly

Draw for need category (ELSA, GHS, BHPS) -> depends how wide you cast the net. Mobility, ADL, iADL all in ELSA, w/measure for help.
Draw multinomial for belief in help category (OPN, maybe Eurobarometer)
	OPN
	                     mean     SE
	as.factor(MCE_1)1 0.55769 0.0050 <- yes
	as.factor(MCE_1)2 0.16791 0.0038 <- no
	as.factor(MCE_1)3 0.27441 0.0045 <- dunno

	Eb
	v184Yes, certainly    0.212912 0.0190
	v184Yes, probably     0.479621 0.0234
	v184No, probably not  0.221087 0.0199
	v184No, certainly not 0.086381 0.0134
	v184DK                0.000000 0.0000
	
	Draw uniform for belief magnitude
Draw normal for belief in stigma (ESS, maybe ELSA self completion 30?)


Assessor

Draw normal for trustiness (ESS)

Referral Cost (HSCIS PSSE)

QALYS -> Quality adjusted life years

ELSA help with ->

mobility 1 hemobwa 2 hemobsi 3 hemobch
4 hemobcs 5 hemobcl 6 hemobst 7 hemobre 8 hemobpu 9 hemobli 10 hemobpi 11 hemob96

adl 1 headldr 2 headlwa 3 headlba
4 headlea 5 headlbe 6 headlwc 
iadl 7 headlma 8 headlpr 9 headlsh 10 headlph 11 headlme 12 headlho 13 headlmo
14 headlb14 15 headlb15 headl96

washing/dressing 1 or 2
phone/money 11, 15
moving around 2, 5, 6 mob 4, 5
cooking/eating headlb 4 & 9
shopping/housework 10, 14
medication 13

hehp -> help with others