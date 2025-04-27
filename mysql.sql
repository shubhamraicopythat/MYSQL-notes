this classification is done on the how language takes input from the user to perform an action 
--->imperative ---> js , java c++, ruby etc,
--->declarative ----> SQL


CREATE TABLE Movie (Name VARCHAR(100),Rating INTEGER);
CREATE TABLE Movies (
    Names VARCHAR(100),
    Rating INTEGER
);
INSERT INTO Movie (Name, Rating) VALUES ("AVENGER END GAME", 5);

mysql> SELECT * FROM MOVIE;
+------------------+--------+
| Name             | Rating |
+------------------+--------+
| AVENGER END GAME |      5 |
+------------------+--------+

mysql> INSERT INTO Movie (Name, Rating) VALUES ("AVENGER INFINETY", 5);
mysql> INSERT INTO Movie (Name, Rating) VALUES ("SPIDEMAN HOMEWAY FAR", 5);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM MOVIE;
+----------------------+--------+
| Name                 | Rating |
+----------------------+--------+
| AVENGER END GAME     |      5 |
| AVENGER INFINETY     |      5 |
| SPIDEMAN HOMEWAY FAR |      5 |
+----------------------+--------+

ALTER TABLE Movie ADD COLUMN OTT_Available VARCHAR(100),ADD COLUMN Release_Year INTEGER;

INSERT INTO Movie (Name, Rating, OTT_Available, Release_Year) 
VALUES ("SPIDEMAN HOMEWAY FAR", 5, "Yes", 2021);

 CREATE TABLE Actors (FirstName VARCHAR(20),Lastname VARCHAR(10),Gender VARCHAR(10),Networth INTEGER);
 mysql> SHOW TABLES;
+----------------------+
| Tables_in_new_movies |
+----------------------+
| Actors               |
+----------------------+


mysql> INSERT INTO Actors (firstName, Lastname, Gender, Networth)  
VALUES ('Robert', 'Downey', 'Male', 300000000);


mysql> select * from Actors;
+-----------+----------+--------+-----------+
| FirstName | Lastname | Gender | Networth  |
+-----------+----------+--------+-----------+
| Robert    | Downey   | Male   | 300000000 |




multiple entery in single command 
INSERT INTO Actors (firstName, Lastname, Gender, Networth) VALUES ('Robert', 'Downey', 'Male',300000000),('Chris', 'Evans', 'Male', 200000000),('Scarlett', 'Johansson', 'Female', 165000000),('Tom', 'Holland', 'Male', 150000000);


mysql> select * from Actors;
+-----------+-----------+--------+-----------+
| FirstName | Lastname  | Gender | Networth  |
+-----------+-----------+--------+-----------+
| Robert    | Downey    | Male   | 300000000 |
| Robert    | Downey    | Male   | 300000000 |
| Chris     | Evans     | Male   | 200000000 |
| Scarlett  | Johansson | Female | 165000000 |
| Tom       | Holland   | Male   | 150000000 |
+-----------+-----------+--------+-----------+



i want print only those actor whose networth is more than 300000000

mysql> SELECT * FROM ACTORS WHERE Networth >= 300000000;
+-----------+----------+--------+-----------+
| FirstName | Lastname | Gender | Networth  |
+-----------+----------+--------+-----------+
| Robert    | Downey   | Male   | 300000000 |
| Robert    | Downey   | Male   | 300000000 |
+-----------+----------+--------+-----------+



------>   thise name start from the name of CH.......


SELECT * FROM ACTORS WHERE FIRSTNAME like "Ch%"


------>   beech mai kahai A aata hoo 

SELECT * FROM ACTORS WHERE FIRSTNAME like "%a%"



------>  short on the increaseing of networth 


SELECT * FROM ACTORS ORDER BY Networth ASC;


mysql> SELECT * FROM ACTORS ORDER BY Networth ASC;
+-----------+-----------+--------+-----------+
| FirstName | Lastname  | Gender | Networth  |
+-----------+-----------+--------+-----------+
| Tom       | Holland   | Male   | 150000000 |
| Scarlett  | Johansson | Female | 165000000 |
| Chris     | Evans     | Male   | 200000000 |
| Robert    | Downey    | Male   | 300000000 |
| Robert    | Downey    | Male   | 300000000 |
+-----------+-----------+--------+-----------+

------>  short on the Decreaseing of networth

SELECT * FROM ACTORS ORDER BY Networth DESC;



 SELECT * FROM ACTORS ORDER BY Networth DESC;
+-----------+-----------+--------+-----------+
| FirstName | Lastname  | Gender | Networth  |
+-----------+-----------+--------+-----------+
| Robert    | Downey    | Male   | 300000000 |
| Robert    | Downey    | Male   | 300000000 |
| Chris     | Evans     | Male   | 200000000 |
| Scarlett  | Johansson | Female | 165000000 |
| Tom       | Holland   | Male   | 150000000 |
+-----------+-----------+--------+-----------+


