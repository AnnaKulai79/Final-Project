# E-commerce Data Analysis and Predictive Modeling

This project provides a comprehensive analysis of e-commerce customer behavior, spanning data extraction with SQL (BigQuery), interactive visualization in Tableau, and predictive modeling using Python.

---

## 📂 Project Structure

* `.github/workflows/` — Automation scripts for **GitHub Actions**, including `jekyll-gh-pages.yml` for automated project deployment.
* `index.html` — **Interactive Web Report**. A comprehensive, bilingual (UA/EN) showcase featuring embedded Tableau dashboards, SQL results, and advanced ML insights with dynamic language switching.
* `TASK.md` — Original project requirements and technical tasks covering SQL, Tableau, and Python analysis.
* `thelook_ecommerce.sql` — SQL queries developed for BigQuery analyzing users, products, and finances.
* `Ecommerce Dataset for Data Analysis(Kaggle).twbx` — Tableau workbook featuring interactive business dashboards.
* `linear_regression.ipynb` — Jupyter Notebook with EDA, Linear Regression, and Random Forest models.
* `report.md` — Static project documentation of the analytical workflow.
* `static/` — Directory for web assets:
    * `style.css` — Custom styles for the interactive report.
    * `background.png` — Background image for the web report interface.
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
     ├── .github/
     │   └── workflows/
     │       └── jekyll-gh-pages.yml
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
     │   │   ├── Task_1_BigQuery.png
     │   │   ├── Task_2_BigQuery.png
     │   │   ├── Task_3v1_BigQuery.png
     │   │   ├── Task_3v2_BigQuery.png
     │   │   ├── Task_4_BigQuery.png
     │   │   └── Task_5_BigQuery.png
     │   └── Tableau/
     │       ├── tableau_dashboard_1.png
     │       └── tableau_dashboard_2.png
     ├── static/
     │   ├── background.png
     │   └── style.css
     ├── .gitignore
     ├── Ecommerce Dataset for Data Analysis(Kaggle).twbx
     ├── index.html
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
git clone <https://github.com/AnnaKulai79/Final-Project/tree/main>
cd <repository-folder>
```
> **Note:** Replace `<repository-folder>` with the actual name of the directory created on your machine (e.g., `Final-Project`).

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

* **SQL:** BigQuery (Standard SQL)
* **BI:** Tableau Desktop / Tableau Public
* **Python:** Pandas, NumPy, Scikit-learn, Statsmodels, Seaborn, Matplotlib
* **Web & Frontend:** HTML5, CSS3, JavaScript (Multi-language logic)
* **DevOps & CI/CD:** GitHub Actions, GitHub Pages
* **Environment:** Jupyter Notebook, VS Code, Git, Virtualenv