# Power BI Project: Ecommerce Analysis for Online Pet Supply Store

## Overview

This project is an analysis of an eCommerce dataset from an online pet supply store. The goal of this analysis is to create an executive summary that provides a concise overview of the business operations, displaying key metrics such as sales, profit, and expenses. The report also allows for drill-down and filtering based on dimensions like product and customer location.

## Analysis Goals

The objective of this analysis is to deliver a dashboard that provides:
- A concise summary of business operations.
- Key metrics such as sales, profit, and expenses.
- The ability to drill down or filter based on dimensions like product categories and customer locations.

## Terminology

- **LTV (Lifetime Value)**: Total value of all sales by a customer.
- **COGS (Cost of Goods Sold)**: Direct costs attributed to the production of the goods sold.
- **Shipping Cost 1000 Mile**: Average cost to ship a single quantity of a product over 1000 miles.

## Case Study

This project involves analyzing an eCommerce dataset from an online pet supply store. The dataset includes sales, product details, and customer information, which are used to generate insights into the business's performance.

## Steps Followed

1. **Loaded Data**: Imported four CSV files into Power BI Desktop.
2. **Renamed Tables**: Ensured that table names are descriptive and consistent.
3. **Checked and Fixed Relationships**: Verified and adjusted relationships between tables for accurate data modeling.
4. **Filtered Data**: Used Power Query Editor to filter out null values from the Sales table.
5. **Data Categorization**: Set the ‘State’ column data category as "State or Province" for proper geographic visualization.
6. **Calculated Columns**:
    - Created a new column in the Sales table called ‘COGS’ by multiplying ‘Landed Cost’ and ‘Quantity’.
    - Created another column named ‘Profit (Baseline)’ by subtracting ‘COGS’ and ‘Shipping (Baseline)’ from sales.
7. **Created Measures**:
    - Used `SUMX` to calculate the total Shipping Costs.
    - Added a measure in the ‘New_Measures’ table called ‘Profit %’, defined as the sum of ‘Profit (Baseline)’ divided by the sum of ‘Sales’, formatted as a percentage.

## Results

The Power BI dashboard enables the eCommerce business to identify:
- The most and least profitable product categories.
- Total sales by state.
- Annual sales amounting to $1.55 million.
- Total profit and shipping costs.

## Conclusion

This project demonstrates how Power BI can be used to create interactive dashboards that provide valuable insights into business performance, particularly in the eCommerce sector. The analysis identifies key metrics and trends, which can be used to inform strategic decisions.



