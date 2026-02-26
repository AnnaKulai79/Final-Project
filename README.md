# E-commerce Data Analysis and Predictive Modeling

This project provides a comprehensive analysis of e-commerce customer behavior, spanning data extraction with SQL (BigQuery), interactive visualization in Tableau, and predictive modeling using Python.

---

## 📂 Project Structure

* `TASK.md` — Original project requirements and technical tasks covering SQL, Tableau, and Python analysis.
* `thelook_ecommerce.sql` — SQL queries developed for BigQuery analyzing users, products, and finances.
* `Ecommerce Dataset for Data Analysis(Kaggle).twbx` — Tableau workbook featuring interactive business dashboards.
* `linear_regression.ipynb` — Jupyter Notebook with EDA, Linear Regression, and Random Forest models.
* `report.md` — A comprehensive project showcase documenting the end-to-end analytical workflow, including SQL data extraction, BI dashboard insights, and advanced statistical modeling with business recommendations.
* `Data/` — Storage for the original raw CSV files sourced from Kaggle before any processing.
* `Images/` — Directory containing project visualizations:
    * **SQL Screenshots:** Execution results of queries in Google BigQuery.
    * **Tableau Screenshots:** Interactive dashboard views.
    * **Model Plots:** Regression analysis visualizations (Regplot, Barplot).
* `requirements.txt` — List of Python libraries required for the project.

<details>
<summary><b> Click to expand full directory tree</b></summary>

```text
FINAL PROJECT
     ├── .venv/
     ├── Data/
     │   └── project1_df.csv
     ├── Images/
     │   ├── ML_Plots/
     │   │   ├── age_categorical_regression.png
     │   │   ├── age_numeric_regression.png
     │   │   ├── cleaned_data_distribution.png
     │   │   └── raw_data_distribution.png
     │   ├── SQL/
     │   │   ├── Task 1 BigQuery.png
     │   │   ├── Task 2 BigQuery.png
     │   │   ├── Task 3v1 BigQuery.png
     │   │   ├── Task 3v2 BigQuery.png
     │   │   ├── Task 4 BigQuery.png
     │   │   └── Task 5 BigQuery.png
     │   └── Tableau/
     │       ├── tableau_dashboard_1.png
     │       └── tableau_dashboard_2.png
     ├── .gitignore
     ├── Ecommerce Dataset for Data Analysis(Kaggle).twbx
     ├── linear_regression.ipynb
     ├── README.md
     ├── report.md
     ├── requirements.txt
     ├── TASK.md
     └── thelook_ecommerce.sql
```
</details>

---

## 🔗 Quick Links

* **Tableau Public Dashboard:** [Sales & Customer Insights](https://public.tableau.com/views/EcommerceDatasetforDataAnalysisKaggle/SalesCustomerInsightsDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
* **Database (Google BigQuery):** [thelook_ecommerce public dataset](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=thelook_ecommerce&page=dataset)
* **Dataset (Kaggle):** [E-commerce Dataset for Data Analysis](https://www.kaggle.com/datasets/shrishtimanja/ecommerce-dataset-for-data-analysis)

---

## 🚀 Getting Started

To run the Python analysis locally, set up a virtual environment:

### 1. Clone the repository
```bash
git clone <your-repository-url>
cd <repository-folder>
```

### 2. Create and activate a virtual environment
**Windows:**
```bash
python -m venv venv
venv\Scripts\activate
```

**macOS/Linux:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install dependencies
```bash
pip install -r requirements.txt
```

---

## 💻 Tech Stack
* **SQL**: BigQuery (Standard SQL)
* **BI**: Tableau Desktop / Tableau Public
* **Python**: Pandas, NumPy, Scikit-learn, Statsmodels, Seaborn, Matplotlib
* **Environment**: Jupyter Notebook, Virtualenv