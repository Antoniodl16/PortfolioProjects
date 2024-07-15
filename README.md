Project Description: Healthcare LOS  Analysis

Analysis Goals
The goal of this analysis is to improve efficiency while maintaining high-quality patient care. By analyzing attributes impacting patient length of stay (LOS), we aim to identify factors contributing to hospital differences. A shorter LOS is often desirable in hospital operations.

Terminology
LOS (Length of Stay): The total duration in days for a patient's stay in the hospital.
Discharge: The release of a patient from hospital care by a doctor.

Patient Population for Analysis
The focus is on patients who received hip replacement surgery. Hospital stays can range from 0 to 2 or more days. This healthcare dataset includes New York state-wide hospital discharge data for the year 2016. The dataset does not contain personal health information.

Steps Followed
Load Data: Imported the dataset (a CSV file) into Power BI Desktop.
Data Cleaning: Used Power Query Editor to check for and address any duplicate or missing values.
Filter Data: Removed rows where the procedure description was not "Hip Replacement, TOT/PRT".
Create Measures:
Created a measure called "Total hospitals" to count distinct hospitals.
Created a measure called "Total discharges" and segment groups to identify insights.
Created a measure to calculate average LOS.
Created a new table and DAX measures to compare the cost per discharge for future cost comparison analysis.
Key Influencer Visual: Used the key influencer visual to identify factors impacting LOS.

Results
Hospitals: There are 151 hospitals in New York state that performed the surgical procedure of interest.
Discharges: Over 26,000 discharges were recorded.
Average LOS: Patients stayed an average of 2.65 days for the procedure.
Key Influencers: Attributes that significantly impacted LOS included extreme illness severity and extreme or major mortality risk. Patient disposition to a skilled nursing home also influenced LOS.
By identifying these key factors, we can target areas for improvement to enhance efficiency while ensuring high-quality patient care.
