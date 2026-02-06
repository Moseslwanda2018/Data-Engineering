
# -------------------------------------------------------
# Script Name: simulate_collision_data.R
# Purpose:
#   Generate simulated road traffic collision data for
#   Power BI analytics and dashboard development.
#
# Notes:
# - Data is fully simulated (not real-world records)
# - Includes intentional missing values for realism
# - Designed for star-schema modeling in BI tools
#
# Author: Moses Lwanda Ouma
# -------------------------------------------------------

library(dplyr)
library(lubridate)

set.seed(2024)

# --------------------------------------------------------------------------------------------------------------
# DIMENSION VALUES
# --------------------------------------------------------------------------------------------------------------

counties <- list(
  "Nairobi" = c("Westlands", "Kasarani", "Embakasi", "Langata"),
  "Kiambu"  = c("Thika", "Ruiru", "Gatundu"),
  "Nakuru"  = c("Naivasha", "Molo", "Nakuru Town"),
  "Kisumu"  = c("Kisumu East", "Kisumu West"),
  "Mombasa" = c("Nyali", "Likoni", "Changamwe")
)

vehicle_types <- c("Car", "Motorcycle", "Bus", "Truck", "Matatu", "Bicycle")
vehicle_category <- c("Private", "Commercial", "Public Transport")

road_type <- c("Highway", "Urban Road", "Rural Road")
road_surface <- c("Tarmac", "Gravel", "Earth")

weather <- c("Clear", "Rainy", "Foggy", "Windy")
lighting <- c("Daylight", "Dark - Street Lights", "Dark - No Lights")

accident_type <- c("Rear-end", "Head-on", "Side-impact", "Pedestrian", "Rollover")

time_of_day <- c("Morning", "Afternoon", "Evening", "Night")

driver_age_group <- c("Under 18", "18-30", "31-45", "46-60", "60+")
driver_gender <- c("Male", "Female", "Unknown")

dates <- seq.Date(as.Date("2025-01-01"), as.Date("2025-12-31"), by = "day") # dates for 2025

# ---------------------------
# GENERATE FLAT FILE
# ---------------------------

n <- 25000

data <- tibble( county = sample(names(counties), n, replace = TRUE)) %>%
  rowwise() %>%  mutate(subcounty = sample(counties[[county]], 1)) %>%
  ungroup() %>%  mutate(collision_date = sample(dates, n, replace = TRUE),
                        day_of_week = wday(collision_date, label = TRUE),
                        month          = month(collision_date, label = TRUE),
                        vehicle_type     = sample(vehicle_types, n, replace = TRUE),
                        vehicle_category = sample(vehicle_category, n, replace = TRUE),
                        road_type    = sample(road_type, n, replace = TRUE),
                        road_surface = sample(road_surface, n, replace = TRUE),
                        weather_condition  = sample(weather, n, replace = TRUE),
                        lighting_condition = sample(lighting, n, replace = TRUE),
                        accident_type = sample(accident_type, n, replace = TRUE),
                        time_of_day   = sample(time_of_day, n, replace = TRUE),
                        response_time_minutes = sample(c(5:90, NA), n, replace = TRUE,
                                                       prob = c(rep(0.015, 86), 0.15)),
                        driver_age_group = sample(driver_age_group, n, replace = TRUE),
                        driver_gender    = sample(driver_gender, n, replace = TRUE,prob = c(0.6, 0.35, 0.05)),
    
    # ---------------------------
    # FACT-LIKE MEASURES
    # ---------------------------
    collisions = sample(c(1:5, NA), n, replace = TRUE,
                        prob = c(rep(0.17, 5), 0.15)),
    
    deaths = sample(c(0:4, NA), n, replace = TRUE,
                    prob = c(0.55, 0.18, 0.08, 0.04, 0.02, 0.13)),
    
    injuries = sample(c(0:6, NA), n, replace = TRUE,
                              prob = c(rep(0.12, 7), 0.16)))

# ---------------------------
# EXTRA MISSINGNESS IN FACTS
# ---------------------------

missing_rows <- sample(1:n, size = 0.15 * n)
data[missing_rows, c("deaths", "injuries")] <- NA
