# Vehicle-Related Crime Risk Analysis in Mexico (2015–2021) (WIP)

Dataset link: https://www.gob.mx/sesnsp/acciones-y-programas/incidencia-delictiva

## Research Purpose

The objective of this research is to analyze historical trends and regional patterns in vehicle-related crime across Mexico from 2015 to 2021.
This study supports an auto insurance company in assessing risk at the state and municipal levels through:

- Exploratory analysis of crime trends

- Time series forecasting to project 2022 crime levels

- Clustering-based classification of states by risk

- Development of interactive dashboards to support decision-making

- The project provides a data-driven foundation for designing competitive and profitable insurance pricing strategies.

## Methodology

- Data Download, Import, and SQL Database Creation:
Crime data (over two million records) was downloaded from Mexico’s official open data platform (SESNSP).
A SQL Server database was created to store and process the information.
Datatype corrections, removal of irregular characters, and duplicate validation were performed to ensure data integrity.

- SQL–Python Integration and Data Cleaning:
A connection to SQL Server was established using SQLAlchemy.
Data cleaning included handling null values, standardizing categories, and transforming monthly columns into a tabular format.
The dataset was filtered to include only vehicle-related crime categories.

- Exploratory Data Visualization:
An initial dashboard in Looker Studio was created to explore crime trends by year, state, and municipality.
Visualizations highlighted monthly patterns and regional disparities in criminal activity.

- Time Series Analysis:
A representative municipality was selected for deeper temporal modeling.
An ARIMA model was applied to project crime levels for 2022.
Forecasts were compared with historical patterns to identify seasonality and long-term trends.

- Risk Classification via Clustering:
A reduced dataset (2021 only) was created using 12 monthly metrics per state.
Due to extremely high correlation between months, MinMaxScaler normalization was applied.
The Elbow Method was used to select the optimal number of clusters.
K-Means classified the states into five risk categories: Very High, High, Medium, Low, and Very Low.
Cluster results were visualized using scatterplots and a geographic risk map.

- Final Interactive Dashboard (Looker Studio):
The dashboard includes visualizations of yearly trends, municipal forecasts, and state-level risk classification.
Filters for modality, year, and region support user-driven analysis.
A dedicated case-study view (e.g., Guadalajara) provides more granular insights.

## Conclusions

- Crime Concentration:
The highest levels of vehicle-related crime are concentrated in Estado de México, Mexico City, Jalisco, and Baja California, all showing sustained increases over time.

- Regional Differences:
States such as Yucatán, Nayarit, and Campeche consistently maintain low and stable crime levels, indicating structurally safer regions.

- Predictable Temporal Patterns:
Seasonality is evident in several municipalities, supporting the use of forecasting models for insurance pricing strategies.

- Effective Segmentation Through Clustering:
The classification into five risk levels provides a structured foundation for differentiated insurance premiums and regional risk assessment.

## Additional Insights

- Integration of External Indicators:
Socioeconomic and mobility data (vehicle density, population, income levels) could strengthen predictive and clustering models.

- Advanced Forecasting Models:
Techniques such as Prophet or LSTM neural networks may improve long-term predictive accuracy.

- Automated ETL Pipelines:
A SQL → Python → BigQuery → Looker Studio workflow could refresh all dashboards automatically on a monthly basis.

- Insurance Pricing Opportunities:
Risk classification can be directly integrated into dynamic premium models, increasing profitability and market competitiveness.

- Municipality-Level Expansion:
Future work can include clustering and forecasting at the municipality level to provide finer-grained risk segmentation.
