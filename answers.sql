create table marketing_data (
 date datetime,
 campaign_id varchar(50),
 geo varchar(50),
 cost float,
 impressions float,
 clicks float,
 conversions float
);

create table website_revenue (
 date datetime,
 campaign_id varchar(50),
 state varchar(2),
 revenue float
);

create table campaign_info (
 id int not null primary key auto_increment,
 name varchar(50),
 status varchar(50),
 last_updated_date datetime
);

'1. Write a query to get the sum of impressions by day.
2. Write a query to get the top three revenue-generating states in order of best to worst. How much revenue did the third best state generate?
3. Write a query that shows total cost, impressions, clicks, and revenue of each campaign. Make sure to include the campaign name in the output.
4. Write a query to get the number of conversions of Campaign5 by state. Which state generated the most conversions for this campaign?
5. In your opinion, which campaign was the most efficient, and why?
Bonus Question

6. Write a query that showcases the best day of the week (e.g., Sunday, Monday, Tuesday, etc.) to run ads.'
