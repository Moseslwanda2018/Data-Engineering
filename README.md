## Road Accident Data Modeling, Visualization, and Analysis Dashboard (Power BI + R Shiny)

## Project Overview
This project analyzes road traffic collision data to uncover trends in collisions, fatalities, injuries,and high-risk conditions in Power BI among using simulated data among selected counties in Kenya. The project extends the normal visualization dashboard by predicting the average number of collisions on the road using a Poisson regression model followed by building a predictive dashboard in R Shiny.
It demonstrates data generation process (simulation) in R, data cleaning and modeling, visualization in Power BI and predictive modeling dashboard in R and R Shiny. This project was inspired by the general Power BI principles in End-to-End Analytics with Microsoft Power BI: Crash Course on Building Powerful Analytic Solutions (2022). (link: https://data-mozart.com/wp-content/uploads/2022/01/END-TO-END-ANALYTICS-WITH-MICROSOFT-POWER-BI.pdf)

## Objective
This project aims to:
* Generate road collision data among selected counties of Kenya.
* Compare accident outcomes across counties.
* Analyze differences between collision volume and fatality risk.
* Explore monthly trends in injuries and fatality rates.
* Identify vehicle types associated with higher death rates.
* Predict the average road collisions and display results in R Shiny.
* Demonstrate end-to-end BI development skills.

## Dataset
* Type: Simulated data
* Geography: Selected Kenyan counties
* Time Period: 2025
* Key Fields: Date, County, Vehicle Type, Collisions, Injuries, Time of Day

## Tools & Technologies
* Power BI
* Power Query
* DAX
* Star Schema Msodeling
* Data Visualization

## Data Simulation
The simulation script generates:
* Road traffic collision records
* Fatalities (deaths) and injuries
* Temporal features (date, month, year)
* Intentional missing values for realism
  Simulation Script:
  https://github.com/Moseslwanda2018/Data-Engineering/blob/main/simulated%20collisions%20data.R

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

## Dashboard Preview
<img width="1163" height="653" alt="image" src="https://github.com/user-attachments/assets/30eab3e9-a285-4059-b923-4386e3f9cb11" />

## Key Insights
* Time of day significantly affects fatalility risk with time night collisions being disproportionately severe.
* Counties with similar collision volumes can experience very different fatality outcomes.
* In the simulation, fatality rates remain consistently above 20% throughout the year.
* Certain vehicle types show higher death rates despite comparable collision counts.

## Future Improvements
* Add predictive analytics
* Include weather and road conditions.

## Disclaimer
This dashboard uses simulated data and is intended solely for learning and portfolio demonstration purposes.

## Acknowledgements
This project documentation benefited from explanations and structuring assistance provided by ChatGPT (OpenAI). All final implementation and analytical decisions were made independently.

## References
* Microsoft Power BI Documentation. [https://docs.microsoft.com/power-bi/](https://docs.microsoft.com/power-bi/)
* Kimball, R. & Ross, M. (2013). *The Data Warehouse Toolkit: The Definitive Guide to Dimensional Modeling*. Wiley.
* *End‑to‑End Analytics with Microsoft Power BI: Crash Course on Building Powerful Analytic Solutions* (2022). PDF guide. Available at: https://data-mozart.com/wp-content/uploads/2022/01/END-TO-END-ANALYTICS-WITH-MICROSOFT-POWER-BI.pdf
* *Power BI Tutorial for Beginners* (2021). YouTube video. Available at: https://www.youtube.com/watch?v=air7T8wCYkU
* OpenAI. *ChatGPT (GPT-4)* – Used for documentation refinement, explanation of concepts, and README structuring.  
  https://chat.openai.com/




  ## Predicting Road Traffic Collisions with R Shiny

## Project Overview
This project builds on earlier analysis of simulated road traffic collision data. The first phase, delivered through a Power BI dashboard, explored trends, high‑risk conditions, and overall incident patterns. In this new phase, we move beyond descriptive analytics to predictive modeling — using Poisson regression to forecast collision counts under different scenarios.

## Why Collisions, Not Injuries?  
Collisions are the root cause of injuries. By predicting where and when crashes are most likely to occur, we give policymakers the chance to intervene before harm happens. Injuries are the consequence, but collisions are the trigger — and preventing collisions automatically reduces injuries, fatalities, and economic costs.

## Objective
This project aims to:
* Estimates expected collisions based on county, vehicle type, and time of day.
* Translates statistical modeling into actionable insights for road safety.
* Supports policy interventions by targeting the root cause of injuries — collisions.

## Dataset
* Type: Simulated data
* Geography: Selected Kenyan counties
* Time Period: 2025

## Tools & Technologies
* R Shiny: Interactive web application framework for R.
* Poisson Regression: Statistical modeling approach for count data.
* Data Workflow: From raw data → modeling → visualization → storytelling.

## Data Simulation Process
The simulation script generated the data can be found here -------------------

## Data Model
* The model follows a star schema design and it can be found here----------------------

## Dashboard Features
* A combo chart showing monthly injuries alongside fatality rate trends
* A combo chart highlighting differences in fatality risk among vehicle types
* A combo chart highlighting the fatality risk differences at different times of the day
* Clustered bar chart comparing collisions, injuries, and deaths by county
* KPI cards summarizing the overall accident impact
* DAX-based metrics for dynamic calculations like total collisions, injuries, deaths, and death rate

## Y-Axis Choice
Collision, injury, and death counts are displayed on a primary Y-axis starting at zero to preserve magnitude with death rate (%) plotted on a secondary axis with various ranges for meaningful risk differences visible without distorting comparisons.

## Dashboard Preview
<img width="1163" height="653" alt="image" src="https://github.com/user-attachments/assets/30eab3e9-a285-4059-b923-4386e3f9cb11" />

## Key Insights
* Time of day significantly affects fatalility risk with time night collisions being disproportionately severe.
* Counties with similar collision volumes can experience very different fatality outcomes.
* In the simulation, fatality rates remain consistently above 20% throughout the year.
* Certain vehicle types show higher death rates despite comparable collision counts.

## Future Improvements
* Add predictive analytics
* Include weather and road conditions.

## Disclaimer
This dashboard uses simulated data and is intended solely for learning and portfolio demonstration purposes.

## Acknowledgements
This project documentation benefited from explanations and structuring assistance provided by ChatGPT (OpenAI). All final implementation and analytical decisions were made independently.

## References
* Microsoft Power BI Documentation. [https://docs.microsoft.com/power-bi/](https://docs.microsoft.com/power-bi/)
* Kimball, R. & Ross, M. (2013). *The Data Warehouse Toolkit: The Definitive Guide to Dimensional Modeling*. Wiley.
* *End‑to‑End Analytics with Microsoft Power BI: Crash Course on Building Powerful Analytic Solutions* (2022). PDF guide. Available at: https://data-mozart.com/wp-content/uploads/2022/01/END-TO-END-ANALYTICS-WITH-MICROSOFT-POWER-BI.pdf
* *Power BI Tutorial for Beginners* (2021). YouTube video. Available at: https://www.youtube.com/watch?v=air7T8wCYkU
* OpenAI. *ChatGPT (GPT-4)* – Used for documentation refinement, explanation of concepts, and README structuring.  
  https://chat.openai.com/





