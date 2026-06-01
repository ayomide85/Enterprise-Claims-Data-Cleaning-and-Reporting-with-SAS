 /* Remove duplicates */
proc sort data=cr.tsaclaims out=sort_tsaclaims noduprecs;
	by _all_;
run;

/* Sort the data by ascending Incident_Date. */
proc sort data=sort_tsaclaims;
	by Incident_Date;
run;

/* Clean data */
data clean_tsaclaims;
	length Date_Issues $20;
	length Claim_Type Claim_Site Disposition $50;
	set sort_tsaclaims;

/* Clean the Claim_Type column. */
	if missing(Claim_Type) or Claim_Type="-" then
		Claim_Type="Unknown";
	else if Claim_Type='Passenger Property Loss/Personal Injur' then
		Claim_Type='Passenger Property Loss';
	else if Claim_Type='Passenger Property Loss/Personal Injury' then
		Claim_Type='Passenger Property Loss';
	else if Claim_Type='Property Damage/Personal Injury' then
		Claim_Type='Property Damage';

/* Clean the Claim_Site column. */
	if missing(Claim_Site) or Claim_Site="-" then
		Claim_Site="Unknown";

/* Clean the Disposition column. */
	if missing(Disposition) or Disposition="-" then
		Disposition="Unknown";
	else if Disposition='losed: Contractor Claim' then
		Disposition='Closed:Contractor Claim';
	else if Disposition='Closed: Canceled' then
		Disposition='Closed:Canceled';

/* Convert all State values to uppercase and all StateName values to proper case. */
	State=upcase(State);
	StateName=propcase(StateName);

/* Create a new column to indicate date issues. */
	if (Incident_Date > Date_Received or Incident_Date=. or Date_Received=. or 
		year(Incident_Date) < 2002 or year(Incident_Date) > 2017 or 
		year(Date_Received) < 2002 or year(Date_Received) > 2017) then
			Date_Issues="Needs Review";

/* Add permanent labels and formats. */
	format Incident_Date Date_Received date9. Close_Amount dollar20.2;
	label Claim_Number="Claim Number" Date_Received="Date Received" 
		Incident_Date="Incident Date" Airport_Code="Airport Code" 
		Airport_Name="Airport Name" Claim_Type="Claim Type" Claim_Site="Claim Site" 
		Item_Category="Item Category" Close_Amount="Close Amount";
    
/* Exclude County and City from the output table. */
	drop County City;
run;

