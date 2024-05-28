+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+


select w1.id
From Weather w1, weather w2
where datediff(w1.recordDate, w2.recordDate) = 1
AND w1.temperature > w2.temperature


### From weather w1, weather w2  creates a cross join table

w1.id	w1.recordDate	w1.temperature	w2.id	w2.recordDate	w2.temperature
1	     2015-01-01	   10	               1	  2015-01-01	 0
1	     2015-01-01	   10	               2	2015-01-02	   25
1	     2015-01-01	   10	               3	2015-01-03	   20
1	     2015-01-01	   10	               4	2015-01-04	   30
2	     2015-01-02	   25	               1	2015-01-01	   10
2	     2015-01-02	   25	               2	2015-01-02	   25
2	     2015-01-02	   25	               3	2015-01-03	   20
2	     2015-01-02	   25	               4	2015-01-04	   30
3	     2015-01-03	   20	               1	2015-01-01	   10
3	     2015-01-03	   20	               2	2015-01-02	   25
3	     2015-01-03	   20	               3	2015-01-03	   20
3	     2015-01-03	   20	               4	2015-01-04	   30
4	     2015-01-04	   30                1	2015-01-01	   10
4	     2015-01-04	   30	               2	2015-01-02	   25
4	     2015-01-04	   30	               3	2015-01-03	   20
4	     2015-01-04	   30	               4	2015-01-04	   30




