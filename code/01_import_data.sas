proc import
    datafile="&path/TSAClaims2002_2017.csv"
    dbms=csv 
    out=cr.tsaclaims 
		replace;
	  guessingrows=max;
run;

/* Exploring Columns */
proc contents data=cr.tsaclaims varnum;
run;

proc print data=cr.tsaclaims(0bs=50);
run;
