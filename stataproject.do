use https://github.com/mskim127/voltage-ra-application/raw/main/star.dta, clear

* 1 correlation coefficient between math and listening scores in SAT
regress math listen

* 2 Correlation coefficient between small classrooms and free lunches. 
regress small  freelunch

*3
*interpretation 

*4

*5

*6
use https://github.com/mskim127/voltage-ra-application/raw/main/health.dta, clear
histogram gagne_sum_t

*7 code doesnn't run
gen race2=1 if race=="black"
replace race2=0 if missing(race2)

sum race2

*8

*insheet using https://github.com/mskim127/voltage-ra-application/raw/main/states-daily-p1.csv, clear
*tempfile p1
*save p1


*insheet using https://github.com/mskim127/voltage-ra-application/raw/main/states-daily-p2.csv, clear
*append using states-daily-p1.csv


* the microsoft remote access I am using to be on stata does not appear to allow me to save temporary files



*9
*i substitute all.csv for p1 due to unforseen complications. 
insheet using https://github.com/mskim127/voltage-ra-application/raw/main/states-daily-p1.csv, clear
twoway (line hospitalizedcurrently date if state=="IL", lcolor(blue))
