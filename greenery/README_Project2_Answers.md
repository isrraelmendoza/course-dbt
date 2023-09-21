# Week 

## Questions
- **Q1**: What is our user repeat rate? Repeat Rate = Users who purchased 2 or more times / users who purchased.
- **Q1 Answer**: 79.84%
- **Q2**: What are good indicators of a user who will likely purchase again? What about indicators of users who are likely NOT to purchase again? If you had more data, what features would you want to look into to answer this question?
- **Q2 Answer Good Indicators**: The user puchased more than one time. The user purchased recently or at least within this quarter. The user purchased without requiring a promotional sale.
- **Q2 Bad Good Indicators**: The user puchased only once. The user purchased only due to promotional sales lift. No recent purchases within the year.
- **Q3**: Explain the product mart models you added. Why did you organize the models in the way you did?
- **Q3 Answer**: Created a mart with a dimensions and fact table. The mart was modeled in what I figured was a simple clear way for other users to understand the correlation between both.
- **Part 2: Tests**
- **Part 2: Q1** What assumptions are you making about each model? (i.e. why are you adding each test?)
- **Part 2: A1**: In the dim table I added a test for nulls and uniqueness.
  **Part 2: Q2** Did you find any “bad” data as you added and ran tests on your models? How did you go about either cleaning the data in the dbt model or adjusting your assumptions/tests?
- **Part 2: A2**: I did not find any bad data, I reviewed when the data was last updated and ensured that there was no change over time...I could be wrong here if there was bad data to be seen.
- **Part 3**: Run the product snapshot model using dbt snapshot and query it in snowflake to see how the data has changed since last week. Which products had their inventory change from week 1 to week 2? 
- **Part 3 Answer**: I ran the summary statistics from week 1 and see the same values for amount of customers, not sure if I am understanding this question correctly for seeing inventory changes.