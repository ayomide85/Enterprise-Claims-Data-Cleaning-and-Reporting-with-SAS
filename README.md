# TSA Claims Data Quality and Analytics Pipeline (SAS)

## Project Overview

Developed an end-to-end SAS data quality and reporting solution for transportation claims data. The project transforms raw claims records into a standardized analytical dataset and generates automated reports to support operational and management decision-making.

## Business Problem

The source data contained multiple quality issues that limited its reliability for analysis and reporting, including:

* Duplicate records
* Missing values
* Inconsistent categorical values
* Invalid and missing dates
* Inconsistent capitalization and formatting

The objective was to implement data quality controls, create a clean analytical dataset, and produce reporting outputs that enable stakeholders to monitor claims activity and settlement trends.

## Solution Approach

### Data Preparation

* Imported and profiled raw claims data
* Removed duplicate records
* Standardized categorical values
* Applied consistent formats and labels
* Excluded non-business-critical fields

### Data Quality Validation

* Identified missing Incident and Received dates
* Flagged dates outside the approved reporting period
* Detected logical date inconsistencies
* Created automated review flags for records requiring investigation

### Analysis and Reporting

* Analyzed claims volume trends by year
* Evaluated claim type, claim site, and disposition distributions
* Calculated settlement amount statistics
* Generated automated PDF reports using dynamic SAS reporting

## SAS Technologies Used

* DATA Step
* PROC SORT
* PROC FREQ
* PROC MEANS
* PROC SGPLOT
* ODS PDF
* SAS Macro Variables
* BY-Group Processing

## Key Deliverables

* Cleaned and validated claims dataset
* Automated data quality review process
* Claims trend analysis and visualizations
* Dynamic state-level reporting
* Executive-ready PDF report

## Repository Structure

* `/code` – SAS programs for data preparation, validation, analysis, and reporting
* `/docs` – Supporting documentation and data dictionary
* `/reports` – Generated PDF reports
* `/screenshots` – Sample outputs and visualizations

## Business Value

This project demonstrates practical experience in data quality management, business reporting automation, and analytical workflow development using SAS. The solution applies data governance principles commonly used in insurance, healthcare, financial services, and public sector analytics environments.
