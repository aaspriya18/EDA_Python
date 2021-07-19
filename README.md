**An Exploratory Data Analysis using Python**

**Project: Customer Churn Analysis**

**Context**

Portfolio Management Unit (PMU), a business unit of an MNC has comprised a user-based portfolio of
which a dedicated banker offers comprehensive financial planning and investment management advice
to individuals.

**Prompt**

A key priority for the Portfolio Management Unit is building and maintaining long-term relationships with
clients. Management has asked you to develop analytically based measures to generate a report on the
possible factor/s on which clients have discontinued the services of PUM. The goal of the exercise is to
do exploratory analysis and provide your insights along with strategies to build to stem
attrition/customer churn.

Datasets: we have four diffrent datasets (.CSV file) of Customer attrition , Customer Demographics, Customer Investment, Customer Portfolio.

**Steps for EDA Analysis:**

1) We have read the data using Pandas and stored into the panda dataframe.
2) We have merged the customer data based on CustomerID and rownumber and stored into Panda Dataframe.
3) we have performed datatype conversion on column as per requirements
4) We have prformed duplicate check on data and removed the duplicates using drop_duplcates method.
5) We have removed the missing value from data using different methods like fillna and interpolation
6) We have removed the leading/trailing spaces from data if any.
7) Finally cleaned and transformed the data as pe requirements.
8) Performed anaysis like how many users left the PUM services based on geography and Gender ,how many users are from different geograpghy.
9) We have anayze the trend using countplot method to visuaize the problem statement.
