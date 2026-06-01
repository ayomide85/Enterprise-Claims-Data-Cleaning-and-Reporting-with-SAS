
# TSA Claims Data Quality and Analytics Pipeline (SAS)

## Project Overview

This project demonstrates an end-to-end SAS data analytics workflow using Transportation Security Administration (TSA) claims data.

The objective was to transform raw claims records into a clean, validated analytical dataset and generate automated business reports for stakeholders.

## Business Problem

The source dataset contained:

* Duplicate records
* Missing values
* Invalid categorical values
* Date inconsistencies
* Inconsistent capitalization and formatting

The goal was to create a standardized claims dataset and answer business questions regarding claim trends, claim types, claim sites, claim dispositions, and claim settlement amounts.

## Technical Skills Demonstrated

### Data Management

* PROC IMPORT
* DATA Step Processing
* PROC SORT
* Duplicate Record Removal

### Data Cleaning

* Missing Value Standardization
* Character Data Transformation
* Date Conversion
* Validation Rule Implementation

### Data Quality Controls

* Detection of Missing Dates
* Detection of Invalid Date Ranges
* Validation of Incident and Received Dates

### Analysis

* PROC FREQ
* PROC MEANS
* PROC SGPLOT
* BY-Group Processing

### Reporting

* ODS PDF
* Dynamic Titles
* Automated Report Generation

## Key Business Metrics

* Number of records with date issues
* Claims by incident year
* Claim type distribution
* Claim site distribution
* Claim disposition distribution
* Close amount statistics

## Results

The final solution produces a fully cleaned claims dataset and a professional PDF report suitable for business stakeholders.
