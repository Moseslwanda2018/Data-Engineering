## Road Accident Data Modeling, Visualization, and Analysis Dashboard (Power BI + R Shiny)

## Project Overview
This project analyzes road traffic collision data to uncover trends in collisions, fatalities, injuries,and high-risk conditions in Power BI among using simulated data among selected counties in Kenya. Since collisions are the root cause of injuries,  the project was extended by a prediction Poisson model to estimate the average number of collisions in R followed by designing a predictive dashboard in R Shiny.
This pipeline begins by simulating road collisions in R followed by followed by extracting, loading and transforming (ELT), data cleaning and modeling, visualization in Power BI and prediction in R and Shiny. This project was inspired by the general Power BI principles in End-to-End Analytics with Microsoft Power BI: Crash Course on Building Powerful Analytic Solutions (2022). (link: https://data-mozart.com/wp-content/uploads/2022/01/END-TO-END-ANALYTICS-WITH-MICROSOFT-POWER-BI.pdf)

## Objective
This project aims to:
* Generate road collision data among selected counties of Kenya.
* Compare accident outcomes across counties.
* Analyze differences between collision volume and fatality risk.
* Explore monthly trends in injuries and fatality rates.
* Identify vehicle types associated with higher death rates.
* Estimates expected collisions based on county, vehicle type, and time of day and display results in R Shiny dashboard.
* Translates statistical modeling into actionable insights for road safety.
* Demonstrate end-to-end BI development skills.

## Dataset
* Type: Simulated data
* Geography: Selected Kenyan counties
* Time Period: 2025
* Key Fields: Date, county, vehicle type, collisions, injuries, time of day, road type, vehicle category, lighting condition, weather, age, gender

## Tools & Technologies
* Power BI
* Power Query
* DAX
* Dimensional Modeling (Star Schema Modeling)
* Data Visualization
* R and R Shiny (Interactive web application framework)
* Predictive modeling (Poisson Regression: Statistical modeling approach for count data).
* Data Workflow: From raw data → modeling → visualization → storytelling.

## Data Simulation
The simulation script generates:
* Road traffic collision records
* Fatalities (deaths) and injuries
* Temporal features (date, month, year)
* Intentional missing values for realism
  Simulation Script: https://github.com/Moseslwanda2018/Data-Engineering/blob/main/simulated%20collisions%20data.R

## Data Model
* The model follows a star schema design:

## Fact table:
* fact_collisions
## Dimension tables:
* dim_date
* dim_location
* dim_vehicle_type
* dim_time_of_day
* dim_lighting_condition
## This structure enables efficient filtering, aggregation, and scalable analysis.

## Dashboard Features
* A combo chart showing monthly injuries alongside fatality rate trends
* A combo chart highlighting differences in fatality risk among vehicle types
* A combo chart highlighting the fatality risk differences at different times of the day
* Clustered bar chart comparing collisions, injuries, and deaths by county
* KPI cards summarizing the overall accident impact
* DAX-based metrics for dynamic calculations like total collisions, injuries, deaths, and death rate

## Y-Axis Choice
Collision, injury, and death counts are displayed on a primary Y-axis starting at zero to preserve magnitude with death rate (%) plotted on a secondary axis with various ranges for meaningful risk differences visible without distorting comparisons.

## Descriptive Power BI Dashboard Preview
<img width="1163" height="653" alt="image" src="https://github.com/user-attachments/assets/30eab3e9-a285-4059-b923-4386e3f9cb11" />

## Inferential R Shiny Dashboard Preview
<img width="1163" height="653" alt="image" src="https://github.com/user-attachments/assets/30eab3e9-a285-4059-b923-4386e3f9cb11" />

## Key Insights
* Time of day significantly affects fatalility risk with time night collisions being disproportionately severe.
* Counties with similar collision volumes can experience very different fatality outcomes.
* In the simulation, fatality rates remain consistently above 20% throughout the year.
* Certain vehicle types show higher death rates despite comparable collision counts.

## Acknowledgements
This project documentation benefited from explanations and structuring assistance provided by ChatGPT (OpenAI). All final implementation and analytical decisions were made independently.

## References
* Microsoft Power BI Documentation. [https://docs.microsoft.com/power-bi/](https://docs.microsoft.com/power-bi/)
* Kimball, R. & Ross, M. (2013). *The Data Warehouse Toolkit: The Definitive Guide to Dimensional Modeling*. Wiley.
* *End‑to‑End Analytics with Microsoft Power BI: Crash Course on Building Powerful Analytic Solutions* (2022). PDF guide. Available at: https://data-mozart.com/wp-content/uploads/2022/01/END-TO-END-ANALYTICS-WITH-MICROSOFT-POWER-BI.pdf
* *Power BI Tutorial for Beginners* (2021). YouTube video. Available at: https://www.youtube.com/watch?v=air7T8wCYkU
* OpenAI. *ChatGPT (GPT-4)* – Used for documentation refinement, explanation of concepts, and README structuring.  
  https://chat.openai.com/






