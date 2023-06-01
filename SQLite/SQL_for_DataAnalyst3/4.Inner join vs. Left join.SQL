SELECT * FROM book_shop;
SELECT * From favourite_book;

-- inner join
select  
	*
FROM book_shop as A 
inner JOIN favourite_book as B on A.id = B.id ;

--Left join 
select  
	*
FROM book_shop as A 
LEFT JOIN favourite_book as B on A.id = B.id ;

--INNER JOIN or JOIN จะเเสดงผลเเค่ 3 
--LEFT JOIN จะเเสดงผล 5 บาง column จะมี NULL
