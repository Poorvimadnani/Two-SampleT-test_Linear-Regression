install.packages("Ecdat")
library(Ecdat)
library(dplyr)
data(Mathlevel)
summary(Mathlevel$sat)
mean(Mathlevel$sat)
summary(Mathlevel$major)
sum(Mathlevel$major == "eco")
sum(Mathlevel$language == "yes")
mean(Mathlevel$mathcourse)
se_mean <- sd(Mathlevel$sat) / sqrt(length(Mathlevel$sat))
SE <- sample_sd / sqrt(n)
t.test(Mathlevel$sat, mu = 500)
install.packages("dplyr")
library(dplyr)
mathlevel_1LP <- Mathlevel %>%
  filter(language != "no") %>%
  filter(language != "2LP") %>%
  summarize(avg_sat_1LP = mean(sat, na.rm = TRUE),
            sd_1LP = sd(sat, na.rm = TRUE),
            n_1LP = n())
avg_sat_1LP <-mathlevel_1LP$avg_sat_1LP
sd_1LP <- mathlevel_1LP$sd_1LP
n_1LP <- mathlevel_1LP$n_1LP
mathlevel_2LP <- Mathlevel %>%
  filter(language != "2LP") %>%
  summarize(avg_sat_2LP = mean(sat, na.rm = TRUE),
            sd_2LP = sd(sat, na.rm = TRUE),
            n_2LP = n())
avg_sat_2LP <-mathlevel_2LP$avg_sat_2LP
sd_2LP <- mathlevel_2LP$sd_2LP
n_2LP <- mathlevel_2LP$n_2LP
mean_diff <- (mathlevel_1LP - mathlevel_2LP)
se <- sqrt((sd_1LP^2/n_1LP) + (sd_2LP^2/n_2LP))
test_result <- t.test(sat ~ language, data = Mathlevel, var.equal = TRUE)
 test_result$p.value
 t_test <- t.test(Mathlevel$sat ~ Mathlevel$language, var.equal = TRUE, conf.level = 0.9)
 t_test
 conf_int <- t_test$conf.int
 install.packages("ggplot2movies")
 library(ggplot2movies)
 summary(movies$year)
 range_year <- range(movies$year, na.rm = TRUE)
 summary(movies$length)
 max_length <- max(movies$length, na.rm = TRUE)
 summary(movies$budget)
 avg_budget  <- mean(movies$budget, na.rm = TRU)
 low <- filter(movies, budget >= 100000 & budget <= 999999)
 nrow(low)
 med <- filter(movies, budget >= 1000000 & budget <= 19999999)
 nrow(med)
 high <- filter(movies, budget >= 20000000)
 nrow(high)
 budget <- (movies$budget)
  rating <- (movies$rating)
  model_med <- lm(rating ~ budget, data = med)
  summary(model_med)
  model_high  <- lm(rating ~ budget, data = high)
  summary(model_high)$coefficients
  high$budget_million <- high$budget / 1000000
  model_high_million <- lm(rating ~ budget_million, data = high)
  summary(model_high_million)
  sd_budget <- sd(high$budget_million)
  β_1 <- (0.003693)
  predicted_rating_increase <- (0.003693*sd_budget)
  

  
  