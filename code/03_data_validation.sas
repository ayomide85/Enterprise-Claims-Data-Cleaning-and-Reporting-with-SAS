proc freq data=cr.tsaclaims ;
	tables Claim_Type / nocol nocum out=unique_type;
run;

proc freq data=cr.tsaclaims;
	tables Claim_Site / nocol nocum out=unique_site;
run;

proc freq data=cr.tsaclaims ;
	tables Disposition/ nocol nocum out=unique_disposition;
run;

proc print data=cr.tsaclaims(obs=50);
var Incident_Date Date_Received;
format Incident_Date Date_Received date9.;
run;
