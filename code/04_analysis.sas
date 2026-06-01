ods pdf file="/home/u64321769/ECRBM6/output/report.pdf" style=meadow pdftoc=1;
ods noproctitle;
/* How many date issues are in the overall data? */
title "Overall data issues in the data";

proc freq data=clean_tsaclaims;
	tables Date_Issues/missing nocum nopercent;
run;

title;

/* How many claims per year of Incident_Date are in the overall data? 
Be sure to include a plot */
ods proclabel="Incident date claims ";
ods graphics on;
title "Overall claims by year";

proc freq data=clean_tsaclaims;
	tables Incident_Date/ nocum nopercent plots=freqplot;
	format Incident_Date year4.;
	where Date_Issues is null;
run;

title;

/* a. What are the frequency values for Claim_Type for the selected state? */
/* b. What are the frequency values for Claim_Site for the selected state? */
/* c. What are the frequency values for Disposition for the selected state? */

%let SN= California;
ods proclabel="Claim Type, Claim Site , and Disposition";
title "&SN Claim Type, Claim Site , and Disposition";

proc freq data=clean_tsaclaims order=freq;
	tables Claim_Type Claim_Site Disposition/ nocum nopercent;
	Where StateName="&SN" and Date_Issues is null;
run;

title;

/* d. What is the mean, minimum, maximum, and sum of Close_Amount for the selected state? */
/*  The statistics should be rounded to the nearest integer. */

ods proclabel="Close Amount Summary";
title "Close Amount Statistics for &SN ";

proc means data=clean_tsaclaims sum mean min max maxdec=0;
	var Close_Amount;
	Where StateName="California" and Date_Issues is null;
run;

title;
ods pdf close;
