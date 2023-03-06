# Two-SampleT-test_Linear-Regression
Sample T-test and linear regression using datasets



##Assignment 2 
###Question 1
Recall that we have this online database of datasets and their associated R packages. We are going to use another dataset from the package “Ecdat” called “Mathlevel”. You can find its documentation in this repository. 
Install (if you haven’t already) and load the associated package “Ecdat” into R. Retrieve the dataset  “Mathlevel”.
	Using the documentation provided online find and report when this data was collected.
	Using the summary() command report:
	-Average SAT score
	-Number of Econ majors 
	-Number of individuals with two language proficiency
	-Average number of Math courses taken
	-The average SAT score in 1980 was approximately 500. 
	Report the sample standard error of the mean SAT score.
	-Is the mean in our sample significantly different than 500? 
Report the t-statistic. associated with this test.
	-Did you reject or fail to reject the null in part b at the 8% significance level?
	-At what values of your t-statistic who you fail to reject the null hypothesis? 
  

	Install and load the “dplyr” package. With this package installed you have access to the filter() command that we used in the R Scripts we used in ##Section 3.6. 
	-Filter the data by foreign language proficiency and report the average SAT score of those with one (1LP) and two language proficiency (2LP) respectively.
	-Report the difference in mean SAT score for 1LP and 2LP individuals.
	-Report the standard error of the difference in mean SAT scores between 1LP and 2LP individuals.
	-Conduct a hypothesis test to determine if these groups have different SAT scores. 
Use a significance level of 0.05. Report the p-value.
	-Did you reject or fail to reject the null hypothesis?
	-Construct a confidence interval for the difference in means at 90% confidence level. 
  
R function of Use: install.packages(), library(), summary(), lm(), filter(), var(), t.test()
Package required: “Ecdat” “dplyr”

###Question 2
Its time for more data! In the database linked above we can also find a data set called “movies” from the “ggplot2movies” package. This data set looks at IMDB rating of movies! Install and load this package and its data. 

	-Which movies were excluded from this dataset? 
Hint: Read the documentation provided in the online database.
	-Report the title of 45930rd movie in the dataset.
	###Using the summary() command report:
	-The range of the “year of release” for the movies in the sample. 
	-The longest length of a films included.
	-The average budget for a movie in the dataset. 
	I-n the summary of budget note an additional row call “NA’s”. This is reporting missing observations. How many observations in the dataset are missing a value for the budget?
	###Using the filter command we will create several new data sets that only includes observations with budgets of a certain ranges.
  
	Create a data set called “low” with budgets ranging from 100,000 to 999,999. 
How many observations are in this new data set?
	Create a data set called “med” with budgets ranging from 1,000,000 to 19, 999,999.
How many observations are in this new data set?
	Create a data set called “high” with budgets ranging from 20,000,000 or more.
How many observations are in this new data set?
	We will now examine whether the budget of a film improves its rating on IMDB using the following regression model:
〖Rating〗_i=β_0+β_1 〖Budget〗_i+u_i
	Using the lm() command compute β ̂_0,β ̂_1 for the “med” dataset.
	Does the coefficient β ̂_1 surprise you? Why or why not?
	Using summary find out whether β ̂_1 is statistically different from zero or not.
Report the t-statistic.
hint: Store your model from the lm() command in a variable. Use this variable in summary(). This will reproduce the type of regression table I showed in class. 
	How much of the variation in rating does budget explain?
	We will now consider the same model but now look at “high” budget films. 
	Using the lm() command compute β ̂_0,β ̂_1 for the “high” dataset.
Report the coefficient β ̂_1. 
	Is it statistically different from zero? 
Report the associated p-value.
	It would be nice to interpret his coefficient in terms of dollars but it is difficult given the small values reported. Create a new variable (and attach it to the high budget data set) that converts the budget variable into units of a 1 million dollars. Run the following regression: 
〖Rating〗_i=β_0+β_1 〖BudgetInMillions〗_i+u_i  
to compute a new  β ̂_0,β ̂_1.
Report  the new β ̂_1. How does it compare to you answer in part F.a.
	Provide an interpretation of the new β ̂_1 in the appropriate units.
	Find the p-value associated with the new estimate. 
How does it compare to you answer in part F.b.
	Is the effect size big or small? 
	To answer this question, compute the standard deviation in the budget (in millions of dollars).
	Second predict how much the rating for a movie would increase if we added a standard deviations worth of budget. 
	Do you believe the effect size to be big or small?
	Does it make sense to interpret β ̂_0? 

R function of Use: install.packages(), library(), summary(), lm(), filter(), var(),
Package required: “Ecdat” “dplyr”


