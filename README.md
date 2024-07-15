
```markdown
# Healthcare LOS Analysis

## Analysis Goals

The goal of this analysis is to improve efficiency while maintaining high-quality patient care. I analyzed attributes impacting the patient length of stay (LOS) to identify factors contributing to hospital differences. A shorter LOS is often desirable in hospital operations.

## Terminology

- **LOS (Length of Stay)**: Total duration in days for a patient's stay in the hospital.
- **Discharge**: Release of a patient from hospital care by a doctor.

## Patient Population for Analysis

The focus is on patients who received hip replacement surgery. Hospital stays can range from 0 to 2 or more days. This healthcare dataset includes New York state-wide hospital discharge data for the year 2016. The dataset does not contain personal health information.

## Steps Followed

1. Loaded data into Power BI Desktop; the dataset is a CSV file.
2. Opened Power Query Editor and checked for any duplicate or missing values.
3. Removed rows where the procedure description is not "Hip Replacement, TOT/PRT".
4. Created a measure called "Total hospitals" which counts total distinct hospitals.
5. Created a measure called "Total discharges" and created segment groups to identify insights.
6. Created a measure to calculate average LOS.
7. Created a new table and DAX measures to compare the cost per discharge for future cost comparison analysis.
8. Used the key influencer visual to identify factors impacting LOS.

## Results

- **Hospitals**: 151 hospitals in New York state performed the surgical procedure of interest.
- **Discharges**: Over 26,000 discharges were recorded.
- **Average LOS**: Patients stayed an average of 2.65 days for the procedure.
- **Key Influencers**: Attributes that significantly impacted LOS included extreme illness severity and extreme or major mortality risk. Patient disposition to a skilled nursing home also influenced LOS.

By identifying these key factors, we can target areas for improvement to enhance efficiency while ensuring high-quality patient care.
