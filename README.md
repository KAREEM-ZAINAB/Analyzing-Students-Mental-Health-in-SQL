# Analyzing-Students-Mental-Health-in-SQL


# Introduction
Does going to university  in another country affect your mental health?
A Japanese international university surveyed its students in 2018 and published a study the following year that was approved by several ethical and 
regulatory boards.
The study found that international students have a higher risk of mental health difficulties than the general population and that social connectedness
(belonging to a social group) and acculturative stress (stress associated with joining a new culture) predicts depression.
This project aims to explore the students' data(The data provided for this project) using PostgreSQL to find out if there would be a similar 
conclusion for international students and if the length of stay is a contributing factor.

# Exploring the data 
The number of records in the dataset was counted, to see the number of records for each student type 
# Filtering to understand the data for each student type
Exploring the student type column by filtering for student types as well as students with unknown status. 

# Query the Summary statistics of the diagnostic scores for all students
Different types of tests were conducted on all students. They include the total score of depression, the total score of social connectedness and the total score of acculturative stress.
The minimum, maximum and sum of these tests were calculated for comparison between the international and the domestic students. 

# Summarizing  data for international students only
The results were narrowed down to international students only through grouping and filtering since international students are the focus of this project.
These trends suggest that, on average, international students in the dataset may have mild to moderate symptoms of depression and relatively high levels of social connectedness. 
However, there was a significant change in the level of acculturative stress whose average score dropped score from approximately 72.38(All students) to approximately 
8.04 (international students). 
This indicates that international students experience a higher level of acculturative stress. Acculturative stress involves the challenges of adapting to a new culture, including language 
barriers, cultural differences, and homesickness.

# The impact of length of stay 
The result of the query shows that the more the number of years of stay increases the higher the average score of depression and the lower the score of social connectedness. 

In conclusion, this analysis sought to explore the impact of studying in a foreign country on students' mental health, with a focus on international students at a Japanese university. 
The data revealed several important insights:

1. **Higher Risk of Mental Health Difficulties**: The study initially found that international students are at a higher risk of mental health difficulties compared to the general population.
2. This is an important observation and suggests that the experience of studying abroad can be challenging in terms of mental well-being.

3. **Factors Affecting Mental Health**: The study identified two significant factors affecting mental health among international students:
   - **Social Connectedness**: Belonging to a social group and having a strong social support network plays a crucial role in mental well-being. International students with higher social connectedness
   - scores tend to experience lower levels of depression.
   - **Acculturative Stress**: The stress associated with adapting to a new culture, including language barriers and cultural differences, can be a significant source of mental distress.
   -  Higher acculturative stress scores are predictive of higher levels of depression.

4. **Data Analysis**: In this project, we analyzed the provided dataset to gain further insights into the mental health of international students:
   - We calculated summary statistics for depression scores, social connectedness scores, and acculturative stress scores for all students in the dataset.
   - We narrowed down the analysis to focus specifically on international students to understand their mental health status better.

5. **Acculturative Stress**: One of the most notable findings was a significant change in the average acculturative stress score when considering all students (72.38) versus international students (8.04).
6. This suggests that international students experience a higher level of acculturative stress when compared to domestic students. However, this drastic drop in the average acculturative stress score for international students may be due to data quality issues or a discrepancy in how scores were recorded.

7. **Length of Stay**: An additional analysis revealed that the length of stay in the host country could be a contributing factor to mental health. As international students spend more years in the host country, their average depression scores tend to increase, indicating a potential negative impact on their mental well-being. Additionally, their social connectedness scores tend to decrease with a longer length of stay.

In summary, while international students may experience higher levels of acculturative stress and face unique challenges associated with studying in a foreign country, social connectedness plays a crucial role in mitigating these challenges. It's important for universities and institutions to provide adequate support and resources to help international students adapt to their new environment and build strong social networks. Further research and data validation may be needed to better understand the complex relationship between length of stay, social connectedness, acculturative stress, and mental health among international students.
