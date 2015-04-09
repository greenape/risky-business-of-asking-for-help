#!/bin/bash

for dir in bayes lexic cpt payoff
do
	cd $dir
	python -m disclosuregame.Util.sqlite_merge -d . -f "*women.db" -t women.db
	python -m disclosuregame.Util.sqlite_merge -d . -f "*mw.db" -t mw.db
	rm *sa*
	cd ..
done
