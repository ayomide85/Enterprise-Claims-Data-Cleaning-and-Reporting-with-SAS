proc import
    datafile="&path/TSAClaims2002_2017.csv"
    dbms=csv 
    out=cr.tsaclaims 
		replace;
	  guessingrows=max;
run;

