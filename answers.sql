# SQL Challenge

The database contains three tables: marketing_performance, website_revenue, and campaign_info. Refer to the CSV
files to understand how these tables have been created.

`marketing_performance` contains daily ad spend and performance metrics -- impression, clicks, and conversions -- by campaign_id and location:
```sql
create table marketing_data (
 date datetime,
 campaign_id varchar(50),
 geo varchar(50),
 cost float,
 impressions float,
 clicks float,
 conversions float
);
```

`website_revenue` contains daily website revenue data by campaign_id and state:
```sql
create table website_revenue (
 date datetime,
 campaign_id varchar(50),
 state varchar(2),
 revenue float
);
```

`campaign_info` contains attributes for each campaign:
```sql
create table campaign_info (
 id int not null primary key auto_increment,
 name varchar(50),
 status varchar(50),
 last_updated_date datetime
);
```

### Challenge Submit Instructions

1. Fork the repository
2. Answer the questions below in a single SQL file - e.g answers.sql
3. Provide Link to Forked Repository to PMG Careers Team'

### Please provide a SQL statement for each question'

1. Write a query to get the sum of impressions by day.
 Select Sum(impressions)
 From marketing_data
 Order by date
2. Write a query to get the top three revenue-generating states in order of best to worst. How much revenue did the third best state generate?
   Select TOP 3 Sum(website_revenue)
   from website_revenue
   Order By state DESC
 "Ohio was the third best and generated $37577"
'3. Write a query that shows total cost, impressions, clicks, and revenue of each campaign. Make sure to include the campaign name in the output.'
 Select cost AS total_cost, impressions, clicks
 from marketing_data
     (Select revenue
      from website_revenue)
        (Select name 
          from campaign_info)
     
4. 'Write a query to get the number of conversions of Campaign5 by state. Which state generated the most conversions for this campaign?'
 Select sum(conversions)
 from marketing_data 
 Where campaign_id = '99058240'
 Order By state
 "Georgia generated the most conversions for Campaign5"
'5. In your opinion, which campaign was the most efficient, and why?'
I would say that Ohio was the most effient based on its cost to clicks, cost to impressions, and cost to conversions ratios
**Bonus Question**

6. 'Write a query that showcases the best day of the week (e.g., Sunday, Monday, Tuesday, etc.) to run ads.'
Select TOP (1) sum(clicks)
from marketing_data
Order By date

