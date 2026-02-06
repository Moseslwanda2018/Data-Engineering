## Road Accident Data Modeling and Analysis Dashboard (Power BI)

## Project Overview
This project analyzes road traffic collision data to uncover trends in collisions, fatalities, injuries,
and high-risk conditions. The dashboard demonstrates data modeling process, DAX, and storytelling capabilities using Power BI.

## Objective
This project aims to:
* Compare accident outcomes across counties.
* Analyze differences between collision volume and fatality risk.
* Explore monthly trends in injuries and fatality rates.
* Identify vehicle types associated with higher death rates.
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
[`simulate_collision_data.R`](scripts/simulate_collision_data.R)

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


