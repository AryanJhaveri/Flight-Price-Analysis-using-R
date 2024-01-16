data = read.csv("D:\\1_BU\\Fundamental of ML\\Term Project\\mini_project_data.csv")
data = na.omit(data)

#Remove Outliers
Q1 = quantile(data$price, 0.25)
Q3 = quantile(data$price, 0.75)
IQR_value = Q3 - Q1
lower_bound = Q1 - 1.5 * IQR_value
upper_bound = Q3 + 1.5 * IQR_value
data = subset(data, price >= lower_bound & price <= upper_bound)

#Select Subset of 500 rows
set.seed(123)
data = data[sample(nrow(data),501),]

#drop unwanted columns
library(dplyr)
data <- data %>%
  select(-flight, -source_city, -destination_city)

head(data)
attach(data)
summary(data)

#Research Question-1

plot(data$duration, data$price, 
     main = "Scatter Plot of Price vs. Flight Duration",
     xlab = "Flight Duration",
     ylab = "Price",
     col = "blue",
     pch = 16)
cor_coefficient <- cor(data$duration, data$price)
print(paste("Correlation Coefficient:", cor_coefficient))
cor_test_result <- cor.test(data$duration, data$price)
print(cor_test_result)

#linear regression
linear_model <- lm(price ~ duration, data = data)
intercept <- coef(linear_model)[1]
slope <- coef(linear_model)[2]
print(paste("Equation of the line: Price =", round(intercept, 2), "+", round(slope, 2), " * Duration"))
summary(linear_model)

#checking for assumptions
plot(fitted(linear_model),resid(linear_model),axes=TRUE)
hist(resid(linear_model))

#Research Question-2
table(stops)
boxplot(price ~ stops, data = data, 
        main = "Boxplot of Stops vs. Price",
        xlab = "Stops",
        ylab = "Price",
        col = c("blue", "green", "coral"))
is.factor(stops)
data$stops = as.factor(data$stops)
is.factor(data$stops)

#ANOVA
m = aov(data$price~data$stops,data = data)
summary(m)

pairwise.t.test(data$price,data$stops,p.adjust='none')

#Research Question-3
table(airline)
boxplot(price ~ airline, data = data, 
        main = "Boxplot of Airline vs. Price",
        xlab = "Airline",
        ylab = "Price",
        col = c("blue","green"))
data$airline = as.factor(data$airline)
is.factor(data$airline)

m = aov(data$price~data$airline,data = data)
summary(m)

#ANCOVA
library(car)
Anova(lm(data$price~data$airline+data$days_left),type=3)

#Research question-4
table(departure_time)
table(arrival_time)
boxplot(price ~ departure_time, data = data, 
        main = "Boxplot of flight time vs. Price",
        xlab = "Airline",
        ylab = "Price",
        col = c("blue","green","red","lightblue","lightgreen"))
data$departure_time = as.factor(data$departure_time)
is.factor(data$departure_time)

m1 = aov(data$price~data$departure_time,data=data)
summary(m1)
pairwise.t.test(price,departure_time,p.adjust.method = 'none')

data$arrival_time= as.factor(data$arrival_time)
is.factor(data$arrival_time)
two_way_model = lm(price~departure_time+arrival_time+departure_time*arrival_time,data=data)
Anova(two_way_model,type=3)


interaction.plot(arrival_time,departure_time,price)
#lines are not parallel, which means there is some interaction between the two variables.

#stratifying data and performing individual ANOVA
arrival_levels <- levels(data$arrival_time)
perform_anova_summary <- function(level) {
  subset_data <- subset(data, arrival_time == level)
  print(paste("Summary for ANOVA -", level))
  print(summary(aov(price ~ departure_time, data = subset_data)))
  print("----")
}
lapply(arrival_levels, perform_anova_summary)

#import dataframe to csv
setwd(desired_directory)

# Now, export the dataframe to CSV
setwd("C:\\Users\\ARYAN\\Downloads")
write.csv(data, file = "mini_project_DATA.csv", row.names = TRUE)

