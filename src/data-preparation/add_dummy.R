# Create dummy for each festival separately and for any festival

calendar_data_maart$Mardi_Gras_2023 <- if_else(calendar_data_maart$date_try >= as.Date('2023-02-23') & calendar_data_maart$date_try <= as.Date('2023-03-01'),TRUE,FALSE)
calendar_data_maart$French_Quarter_2022 <- if_else(calendar_data_maart$date_try >= as.Date('2022-04-21') & calendar_data_maart$date_try <= as.Date('2022-04-24'),TRUE,FALSE)
calendar_data_maart$Jazz_Heritage_2022 <- if_else(calendar_data_maart$date_try >= as.Date('2022-04-29') & calendar_data_maart$date_try <= as.Date('2022-05-08'),TRUE,FALSE)
calendar_data_maart$festival_date <- if_else(calendar_data_maart$Mardi_Gras_2023 |calendar_data_maart$French_Quarter_2022 | calendar_data_maart$Jazz_Heritage_2022 == 1, TRUE, FALSE)
