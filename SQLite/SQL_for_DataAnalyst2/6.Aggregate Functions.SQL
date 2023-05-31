SELECT 
	round(AVG(Milliseconds),2) as avg_mill,
	sum(Milliseconds) as sum_mill,
	min(Milliseconds) as min_mill,
	max(Milliseconds) as max_mill,
	count(Milliseconds) as count_mill
FROM tracks ;
