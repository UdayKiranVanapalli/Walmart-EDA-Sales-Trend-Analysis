# Walmart-EDA-Sales-Trend-Analysis

![Walmart Project](https://github.com/user-attachments/assets/b814736e-d4d4-400b-8180-b0b913f059bd)

This project involves a comprehensive analysis of Walmart sales data to extract insights and visualize trends across branches, categories, and time periods. By using PostgreSQL for data storage and Jupyter Notebook for data analysis, the project explores Walmart sales data to identify patterns in transaction volumes, payment methods, peak times, and branch-wise performance. These insights can guide future strategies for improving sales and customer engagement.

## Table of Contents
- [Project Overview](#project-overview)
- [Data and Tools](#data-and-tools)
- [Project Structure](#project-structure)
- [Data Columns](#data-columns)
- [Database Integration with PostgreSQL](#database-integration-with-postgresql)
- [SQL Queries Used](#sql-queries-used)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Key Insights](#key-insights)
- [Visualizations](#visualizations)
- [Jupyter Notebook Highlights](#jupyter-notebook-highlights)
- [Future Work](#future-work)
- [Usage](#usage)
- [Contributing](#contributing)

---

## Project Overview
The Walmart Sales Data Analysis project aims to provide an in-depth look at sales patterns within Walmart branches, examining various aspects such as branch performance, customer preferences, and transaction trends. Key objectives include:
1. Analyzing branch-wise and category-wise performance.
2. Identifying popular payment methods and peak transaction times.
3. Setting the foundation for future predictive modeling, such as forecasting sales and identifying customer trends.

This analysis offers valuable insights into customer behavior and operational trends, supporting data-driven decision-making.

## Data and Tools
- **Data Source**: Walmart transactional data, saved in a CSV format.
- **Database**: PostgreSQL for efficient querying and data management.
- **Analysis & Visualization**: Conducted in Python using Jupyter Notebook.
- **Libraries Used**: 
  - Data processing: `pandas`, `numpy`
  - Visualization: `matplotlib`, `seaborn`
  - Database connection: `sqlalchemy`

# Walmart Sales Data Analysis

This project involves a comprehensive analysis of Walmart sales data to extract insights and visualize trends across branches, categories, and time periods. By using PostgreSQL for data storage and Jupyter Notebook for data analysis, the project explores Walmart sales data to identify patterns in transaction volumes, payment methods, peak times, and branch-wise performance. These insights can guide future strategies for improving sales and customer engagement.

## Table of Contents
- [Project Overview](#project-overview)
- [Data and Tools](#data-and-tools)
- [Project Structure](#project-structure)
- [Data Columns](#data-columns)
- [Database Integration with PostgreSQL](#database-integration-with-postgresql)
- [SQL Queries Used](#sql-queries-used)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Key Insights](#key-insights)
- [Visualizations](#visualizations)
- [Jupyter Notebook Highlights](#jupyter-notebook-highlights)
- [Future Work](#future-work)
- [Usage](#usage)
- [Contributing](#contributing)

---

## Project Overview
The Walmart Sales Data Analysis project aims to provide an in-depth look at sales patterns within Walmart branches, examining various aspects such as branch performance, customer preferences, and transaction trends. Key objectives include:
1. Analyzing branch-wise and category-wise performance.
2. Identifying popular payment methods and peak transaction times.
3. Setting the foundation for future predictive modeling, such as forecasting sales and identifying customer trends.

This analysis offers valuable insights into customer behavior and operational trends, supporting data-driven decision-making.

## Data and Tools
- **Data Source**: Walmart transactional data, saved in a CSV format.
- **Database**: PostgreSQL for efficient querying and data management.
- **Analysis & Visualization**: Conducted in Python using Jupyter Notebook.
- **Libraries Used**: 
  - Data processing: `pandas`, `numpy`
  - Visualization: `matplotlib`, `seaborn`
  - Database connection: `sqlalchemy`

## Project Structure
The project repository is organized as follows:

## Data Columns
The dataset includes the following columns:
- **Invoice ID**: Unique identifier for each transaction.
- **Branch**: Identifier for the store branch.
- **City**: City where the branch is located.
- **Category**: Product category.
- **Unit Price**: Price per unit of the product.
- **Quantity**: Number of units sold in each transaction.
- **Date**: Date of the transaction.
- **Time**: Time of the transaction.
- **Payment Method**: Method of payment (e.g., cash, card).
- **Rating**: Customer rating for the transaction.
- **Profit Margin**: Profit margin for each product sold.
- **Total**: Total amount of the transaction.

## Database Integration with PostgreSQL
The dataset is stored in a PostgreSQL database, enabling efficient data retrieval and manipulation. SQL queries are used to extract data, which is then analyzed in Pandas DataFrames in Jupyter Notebook.

### Database Setup
Ensure PostgreSQL is installed and configured. Import the dataset into PostgreSQL for easier query-based analysis.

## SQL Queries Used
Key SQL queries performed for analysis include:
1. **Branch-Wise Revenue Comparison**: Calculates the revenue difference between 2022 and 2023 for each branch.
2. **Transaction Volume by Payment Method**: Breaks down transaction volumes by payment method.
3. **Peak Hours and Sales by Day**: Identifies peak sales hours and busiest days by branch.

## Exploratory Data Analysis (EDA)
The EDA process in Jupyter Notebook involved analyzing data to uncover patterns and trends. Key steps included:

1. **Data Cleaning**: 
   - Addressed missing values.
   - Adjusted data types for consistency (e.g., converting dates and times).

2. **Descriptive Statistics**:
   - Calculated summary statistics for key columns such as revenue, quantity, and ratings.

3. **Visual EDA**:
   - Used charts and graphs to visualize branch performance, customer ratings, and other transaction data.

## Key Insights
### Branch and Category Performance
- **Customer Satisfaction**: Calculated average ratings by category and branch to assess customer satisfaction.
  - **Highest Rated Category**: Electronics in Branch A had an average rating of 4.8, suggesting strong customer satisfaction.
  
### Revenue Analysis (2022 vs 2023)
- **Branch Revenue Changes**: Analyzed revenue changes across branches.
  - **Branch D** saw a revenue decrease of 15.7% from 2022 to 2023, highlighting areas for improvement.

### Payment Method Insights
- **Most Common Payment Method**: Credit Card transactions made up 45% of all sales.
- **Least Common Payment Method**: Cash was the least used method, accounting for only 15% of transactions, indicating customer preference for digital payments.

### Peak Times and Busy Days
- **Busiest Day**: Friday recorded the highest transaction volume across branches.
- **Peak Transaction Time**: Most transactions occurred between 12 PM and 5 PM, which may be a key period for promotional efforts.

![image](https://github.com/user-attachments/assets/5f7a2f91-975e-405e-9e22-6e87b2a6389c)

## Visualizations
The following visualizations support the key insights from the analysis:

1. **Heatmap of Average Ratings by Category and Branch**:
   - Shows customer satisfaction levels across different branches and product categories.

2. **Transaction Volume by Payment Method**:
   - A bar chart displaying the breakdown of transaction volumes by payment method.

3. **Revenue Decrease Ratio (2022 vs 2023)**:
   - A bar chart showing revenue changes per branch, making it easy to spot significant decreases.

4. **Time of Day Analysis**:
   - A bar chart categorizing transaction volumes by Morning, Afternoon, and Evening shifts, illustrating shopping patterns.

## Jupyter Notebook Highlights
The Jupyter Notebook (`Walmart_Sales_Analysis.ipynb`) includes:
1. **SQL Queries**: For retrieving and aggregating data from PostgreSQL.
2. **Data Cleaning**: Addressing missing values and adjusting data types.
3. **Visualizations**: Generated using `matplotlib` and `seaborn` to support findings.
4. **Summary Statistics**: Calculated for key metrics, such as revenue and customer satisfaction, by branch and category.

## Future Work
This project lays the groundwork for predictive modeling in future phases. Planned models include:
- **Time Series Forecasting**: To predict future sales trends by branch.
- **Customer Segmentation**: To categorize customers based on purchase behavior and preferences.
- **Predictive Analysis**: To estimate future customer ratings and satisfaction trends based on transaction attributes like category, branch, and time.

## Usage
To run this project locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/UdayKiranVanapalli/Walmart-EDA-Sales-Trend-Analysis.git
2. Install required dependencies:
   ```bash
    pip install -r requirements.txt
3. Set up the PostgreSQL database and import the Walmart sales data.
4. Update the database credentials in the Jupyter Notebook to match your PostgreSQL setup.
5. Run the Jupyter Notebook to execute SQL queries and generate visualizations:
   ```bash
     jupyter notebook notebooks/Walmart-EDA-Sales-Trend-Analysis.ipynb
 # Contributing
Contributions are welcome! If you have ideas for additional features or enhancements, feel free to open an issue or submit a pull request.  
