--COUNT Distinct = unique
select 
	DISTINCT Country
FROM customers ;

select 
	count(DISTINCT Country)
FROM customers ;

select 
	count(*)
FROM customers ;
