# Notes

## Initial thoughts

Things to think about:

1. Changing the structure of the game
	-	Self stigma
		-	Changes the information sets (each signaller in own set)
		-	Changes learning, signallers learning only about referral
		-	More complex for the receivers - more effective types
	-	Number of rounds
		- Not clear that there's regularity, or a fixed number of appointments
	-	Players
		-	Obvious choice is social workers
		-	Family might make more sense though - payoffs more difficult
2. What do the payoffs correspond to in real life
	-	Utility and disutility
	-	Utility of living well
	-	Utility of company
	-	Disutility of admitting need
		-	Being a burden
		-	Who you are admitting it *to*
	-	Cost of care
	-	Once again, there's a strong temporal dynamic here. Pay now, win later.
3. What do the beliefs correspond to?
	-	Belief that help will actually be delivered
	-	Belief that help is actually needed/not needed
		-	Is self-stigma overriding need
	-	Belief about what the payoffs will actually be... Impossible outcomes (being stigmatised)
		-	Raises the question: does stigma need to actually happen for belief in it to persist?
4. How do you work out the payoffs?
	-	Revealed preference? (Costs of care per hour are knowable)


## Themes

-	Resignation
	-	Age attribution
	-	Lack of belief in outcomes
-	Low expectations
-	Declining offered help
-	Lack of information


## Initial experiments

Going on the CLC unmet need briefing paper.. Two 'types' need, severe need (2+ ADLs). ELSA data says ~ twice as likely to get help if severe. GHS says it depends on what they need help *with*. BHPS is a bit hazy.

What is clear - would be looking for crisp differentiation between mid and high types.

If we assume social worker/gp assessment.. We'd be talking about (state) formal care. 

What if we set it up so that the current state of play is the *start* point. See if it can be sustained, see if it can be made worse/better.

### ELSA Data

We have proportions - say, 16.2 (9.7+6.5) single need, 9 severe need.

Would be looking for a scenario where around 2/3 of single need get no help, vs. 1/3 of severe. Calibration?


## New measures

This would make it important to monitor beliefs better. Should also add a population wide median measure.
Also, shannon entropy measure. Looking at information/signal theory measures - perhaps this is a mutual information issue?
Yes! Can use sum of pointwise mutual informations to measure this.

## Information sets

![Game tree](../figures/graphviz/tree_v1.png "Game tree with dual types per signaller")

## Simple Scenario

Assume an amalgam of assessors - family, GPs, social workers etc. This would imply heterogeneous beliefs. Assume that we take a brief period of time - we're interested in these people for a year (monthly assessments).

Assessors are to be divisible by payoffs matrix - the matrix on their side represents an amalgam across the groups. Approach as a calibration process - looking for a scenario that leads to 2/3 single need unreferred, 1/3 severe need referred. Don't change the game at all - let stigma continue to be 'endogenous' to the receivers, but consider simply letting that not exist. Model based reasoning mismatch. Faulty ontologies.

Use the ELSA parameters for proportions.

## Thoughts on beliefs

Interesting things to look at (at some point), are biasing the currently uniform distribution of beliefs for women. Maybe something like a normal distribution on good and helpful. Also, making the beliefs of new players an aggregate of the overall population.

## Things to consider changing

-	Most obvious, is different referral costs. Leave that for the next iteration though.

## Parameters to vary

-	Payoffs
	-	All? Set a max of 100 (pos for payoffs, - for costs) and use a 0-1 multiplier (10 in all)
	-	Start with the existing distinction parameterisation?
-	Sharing (4 in all)
- Three candidate groups - beliefs, payoffs, sharing.


## Parameters to fix

-	Type proportions
	-	All good people for assessors
	-	Percentages of need from CLC. 16.2% moderate, 9% severe, 74.8% no need.
- 	Low social penalty at 0 for all signals
-	Referral cost? Discounted sum of p/h costs?

## Measures to add

-	Percentage referred and signalled honestly
-	Percentage not referred and signalled honestly

## Beliefs

What we want here, is a sliding scale of optimism-pessimism, and one of equivocation to certainty. And we want the actual beliefs to be normally distributed.

equivocation to certainty is easy enough - just the number of points allocatable.

Optimism pessimism -> slope of line parameterising a multinomial distribution. 1.0 

More difficult than it looks, because this all just glosses over scenarios with weird pathological behaviour (signalling medium is the *only* way to get referred).

It would all be so much easier if we just dropped the three types. Drops payoffs down to 7

Or just cast it in pos-neg. Use the honesty bias from the original, but - strength of belief. Strength of bias.

Define a scale for positive to negative world view.


Or just go all in, on 18 parameters...

## Dropping a type

-	Reduces #payoffs to 7 (5, if the no need signal is held at 0)
	-	Could then do normally distributed payoffs
	-	Easier to explore whether "no need" might actually be *positive*
-	Reduces beliefs to 5, and binary ones.
	-	Makes it pretty easy to set of a sliding scale of positive-negative world view, and strength of that view
-	Easier analysis
-	Easier calibration (single output)


Dropped types are go

Todo:

Make a list of all the parameters, and possible sources for their values.

homecare scoping http://www.nice.org.uk/guidance/gid-scwave0713/documents/home-care-final-scope2
costs Personal Social Services: Expenditure and Unit Costs - England, 2011-12, Final Release [NS]

attitudes http://www.cpa.org.uk/information/reviews/CPA-%20ageism_and_age_discrimination_in_social_care-report.pdf
ESS -> both 'are people honest' (A8,9,10), and perceived levels of age discrimination (C24, 25)
Maybe BSS Q646
Q10 ba13 B

Prospect theory -> ELSA has a risks module..

