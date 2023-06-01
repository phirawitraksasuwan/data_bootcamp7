-- create two tables: ranks and suits
-- reference: https://www.sqlitetutorial.net/sqlite-cross-join/
CREATE TABLE ranks (
    rank TEXT NOT NULL
);

CREATE TABLE suits (
    suit TEXT NOT NULL
);

INSERT INTO ranks(rank) 
VALUES('2'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('10'),('J'),('Q'),('K'),('A');

INSERT INTO suits(suit) 
VALUES('Clubs'),('Diamonds'),('Hearts'),('Spades');

-- Cross join 
select * from ranks, suits
order by suits ;

select * from ranks cross join suits
order by suits ;
