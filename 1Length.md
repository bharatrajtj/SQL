Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Input: 

Tweets table:

+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Shiva        
|
| 2        | Let us make America great again! |
+----------+----------------------------------+

Output: 

+----------+
| tweet_id |
+----------+

| 
    2        |
+----------+

Explanation: 

Tweet 1 has length = 14. It is a valid tweet.

Tweet 2 has length = 32. It is an invalid tweet.


**MySQL**

select tweet_id from tweets

where **length**(content) > 15

**MS SQL**

Select tweet_id from tweets

where **len**(content)  > 15
