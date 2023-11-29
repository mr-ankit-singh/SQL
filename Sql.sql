*-----------------------------------------------------------------------------------------------*
*---------------------------            Ankit Singh          -----------------------------------*
*-----------------------------------------------------------------------------------------------*
*-----------------  Github   :> https://www.github.com/mr-ankit-singh      ---------------------*
*-----------------  LinkedIn :> https://www.linkedin.com/in/mr-ankit-singh ---------------------*
*-----------------------------------------------------------------------------------------------*
*-----------------------------------------------------------------------------------------------*
________________________________________________________________________________________________


*-----------------------------------------------------------------------------------------------*
INTRODUCTION OF SQL 🙋‍
    - SQL stands for Structured Query Language. 
    - SQL was developed in the 1970s by IBM Computer Scientists.
    
    + SQL is not a database management system, 
    + But it is a query language which is used to store and retrieve the data from a database 
    + Or in simple words SQL is a language that communicates with databases.    
    - Sql is not case sensitive.
    - Sql statement must ends with semicolumn (;).
    - Semicolumn seperates sql statements.

*-----------------------------------------------------------------------------------------------*
COMMENT in SQL 🙋‍
    - To explain the underlying sql statement for better understanding.
    - To convert an executable sql statement to a comment for stopping it from getting executed.
    - Single Line Comments :  --
    - Multi Line Comment   : /* */

*-----------------------------------------------------------------------------------------------*
SQL Commands 🙋‍
    - SQL commands are instructions. 
    - It is used to communicate with the database. 
    - It is also used to perform specific tasks, functions, and queries of data.
    - SQL can perform various tasks like create a table, add data to tables, drop the table, 
      modify the table, set permission for users.

    Types of SQL Commands
	1. Data Definition Language (DDL) 🙋‍
	    Create
	    Drop
	    Alter
	    Truncate
        
	2. Data Manipulation Language (DML) 🙋‍
	    Insert
	    Update
        Delete

	3. Data Control Language (DCL) 🙋‍
	    Grant   : Gives a privilege to user
	    Revoke  : Takes back privileges granted from user.

	4. Transaction Control Language (TCL) 🙋‍
	    Commit
 	    Rollback
	    Save Point

	5. Data Query Language (DQL) 🙋‍
	    Select

*-----------------------------------------------------------------------------------------------*
Execute a SQL file 🙋‍
    - Note : To execute a sql file with CLI 
    - Syntax :
      source <filepath>

*-----------------------------------------------------------------------------------------------*
SELECT Statement 🙋‍
    - To retrive data from the given table
    - * -> All columns
    - Syntax : SELECT column_name FROM table_name

*-----------------------------------------------------------------------------------------------*
DISTINCT KEYWORD 🙋‍
   - Retrive the unique value from specified columns
   - Distinct + Select (dono saath me use hota hai)
   - Syntax :
	 SELECT DISTINCT(col_name) FROM table_name
	 SELECT DISTINCT col_name  FROM table_name

*-----------------------------------------------------------------------------------------------*
WHERE CLAUSE 🙋‍
   - Filter the data based on condition.
   - Syntax : 
	 SELECT col_name 
	 FROM table_name WHERE conditions

*-----------------------------------------------------------------------------------------------*
OPERATORS IN SQL 🙋‍
  - These operaters are used with WHERE clause.

SQL COMPARISION / RELATIONAL OPERATOR 🙋‍
   - Only use one condition.
   Operator	 Description	
     =	     Equal to	
     >	     Greater than	
     <	     Less than	
     >=	     Greater than or equal to	
     <=		 Less than or equal to	
     <>		 Not equal to

SQL LOGICAL OPERATORS 🙋‍
   - Filter the data using multiple conditions.
   Operator	     Description
   ----------    --------------		
     AND		 TRUE if all the conditions separated by AND is TRUE
     OR		     TRUE if any of the conditions separated by OR is TRUE
     NOT		 Displays a record if the condition(s) is NOT TRUE					
     SOME	     TRUE if any of the subquery values meet the condition

*-----------------------------------------------------------------------------------------------*
BETWEEN OPERATOR 🙋‍
   - The BETWEEN operator selects values within a given range.
   - The BETWEEN operator is inclusive: begin and end values are included. 
   - Syntax : 
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name BETWEEN value1 AND value2;
	 ----------------------------
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name NOT BETWEEN value1 AND value2;

   - If using BETWEEN operator in string then the result comes in alphabetical order.

*-----------------------------------------------------------------------------------------------*
ORDER BY CLAUSE 🙋‍
   - The ORDER BY keyword is used to sort the result-set in ascending or descending order.
   - The ORDER BY keyword sorts the records in ascending order by default. 
   - To sort the records in descending order, use the DESC keyword.
   - Syntax :
	 SELECT column1, column2, ...
	 FROM table_name
	 ORDER BY column1, column2, ... ASC|DESC ;
     --------------------------------------------
     SELECT column1, column2, ...
	 FROM table_name
	 ORDER BY column1 ASC, column2 DESC, ... ;

   - SHORTCUT :
     SELECT column1, column2, ...
	 FROM table_name
	 ORDER BY 2 ;
     1 : Refers to column 1
     2 : Refers to column 2 etc.
     

*-----------------------------------------------------------------------------------------------*
LIMIT KEYWORD 🙋‍
   - The LIMIT clause is used to specify the number of records to return.
   - It is used to increase the performance while retriveing the records.
   - Syntax
	 SELECT column_name(s)
	 FROM table_name
	 WHERE condition
	 LIMIT number;
	 ----------------------------
	 SELECT column_name(s)
	 FROM table_name
	 WHERE condition
	 LIMIT start,end;
     Note : end -> Number of Item
     
*-----------------------------------------------------------------------------------------------*
SQL IN OPERATOR 🙋‍
   - The IN operator allows you to specify multiple values in a WHERE clause.
   - The IN operator is a shorthand for multiple OR conditions.
   - Simplify the process of providing multiple values to the same column name.
   - TRUE if the operand is equal to one of a list of expressions
   - Syntax
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name IN (value1, value2, ...);
	 ----------------------------
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name IN (SELECT Statement);

*-----------------------------------------------------------------------------------------------*
SQL ANY and ALL OPERATOR 🙋‍
   - The ANY and ALL operators allow you to perform a comparison between a single column 
      value and a range of other values.
   - Both are mostly used to perform sub query operations.

ANY Operator 🙋‍
   - ANY means that the condition will be true if the operation is true for any of the values 
     in the range.
   - The ANY operator:
	 returns a boolean value as a result
	 returns TRUE if ANY of the subquery values meet the condition
   - Syntax :
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name operator ANY
  	  (SELECT column_name
  	  FROM table_name
   	  WHERE condition);

ALL Operator 🙋‍
   - ALL means that the condition will be true only if the operation is true for 
     all values in the range. 
   - The ALL operator:
	    returns a boolean value as a result
	    returns TRUE if ALL of the subquery values meet the condition
	    is used with SELECT, WHERE and HAVING statements
   - Syntax :
	 SELECT ALL column_name(s)
	 FROM table_name
	 WHERE condition;
	 ---------------------------------
	 SELECT column_name(s)
	 FROM table_name
	 WHERE column_name operator ALL
  	   (SELECT column_name
  	   FROM table_name
  	   WHERE condition);

*-----------------------------------------------------------------------------------------------*
SQL EXISTS OPERATOR 🙋‍
    - TRUE if the subquery returns one or more records
    - The EXISTS operator is used to test for the existence of any record in a subquery.
    - The EXISTS operator returns TRUE if the subquery returns one or more records.
    - Syntax :
	  SELECT column_name(s)
	  FROM table_name
	  WHERE EXISTS
	  (SELECT column_name FROM table_name WHERE condition);

*-----------------------------------------------------------------------------------------------*
LIKE OPERATOR AND WILDCARD CHARACTERS 🙋‍
   - The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
   - There are two wildcards often used in conjunction with the LIKE operator:
        The percent sign (%) represents zero, one, or multiple characters
        The underscore sign (_) represents one, single character
   - Syntax :
	 SELECT column1, column2, ...
	 FROM table_name
	 WHERE columnN LIKE pattern;
   - Tip: You can also combine any number of conditions using AND or OR operators.

*-----------------------------------------------------------------------------------------------*
SQL ALIASES 🙋‍
   - SQL aliases are used to give a table, or a column in a table, a temporary name.
   - Aliases are often used to make column names more readable.
   - An alias only exists for the duration of that query.
   - An alias is created with the AS keyword.
   - Alias Column Syntax :
	 SELECT column_name AS alias_name
	 FROM table_name;
   - Alias Table Syntax:
	 SELECT column_name(s)
	 FROM table_name AS alias_name;

   - Note: It requires double quotation marks or square brackets if the alias name contains spaces
	 SELECT CustomerName AS Customer, 
	 ContactName AS [Contact Person]
	 FROM Customers;	
	-------------------------------------------
	 SELECT CustomerName  Customer, 
	 ContactName  [Contact Person]
	 FROM Customers;	
 
*-----------------------------------------------------------------------------------------------*
MYSQL BUILT-IN FUNCTIONS 🙋‍
   - String Functions
   - Numeric Functions
   - Aggregate Functions
   - Date and Time Functions

STRING FUNCTIONS 🙋‍
   Function	            Description
   ----------           -------------
   UPPER	    	    Converts a string to upper-case
		                Syntax :- SELECT UPPER(column_name) FROM table_name; 

   LOWER		        Converts a string to lower-case
		                Syntax :- SELECT LOWER(column_name) FROM table_name; 

   LENGTH	            Returns the length of a string (in bytes)
   CHAR_LENGTH	        Returns the length of a string (in characters)
   CHARACTER_LENGTH     Returns the length of a string (in characters)
		                Syntax :- SELECT LENGTH(column_name) FROM table_name;

   INSTR		        Returns the position of the first occurrence of a string in another string
		                Syntax :- INSTR(string1, string2) 

   SUBSTR	            Extracts a substring from a string (starting at any position)
   SUBSTRING	        Extracts a substring from a string (starting at any position)
		                Syntax:- SUBSTR(string, start, length) 
		          	    SUBSTRING(string, start, length) 

   CONCAT	            Adds two or more expressions together
   CONCAT_WS	        Adds two or more expressions together with seperators
  		                Syntax :- CONCAT(expression1, expression2, expression3,...)
  		                CONCAT_WS(seperator , expression1, expression2, expression3,...)

   TRIM      	        Removes leading and trailing spaces from a string
		                Syntax :- TRIM(string)

   REPLACE              Replace all occurance of substring within a string 
                        This function is case sensitive 
                        Syntax :- REPLACE(string , initialString , finalString)

   REVERSE             Reverse the string and return the result
                       Syntax : REVERSE(string)

NUMERIC FUNCTIONS 🙋‍
   Function	    Description
   ABS		    Returns the absolute value of a number
   CEIL		    Returns the smallest integer value that is >= to a number
   DIV		    Used for integer division
   EXP		    Returns e raised to the power of a specified number
   FLOOR	    Returns the largest integer value that is <= to a number
   GREATEST	    Returns the greatest value of the list of arguments
   LEAST	    Returns the smallest value of the list of arguments
   MOD		    Returns the remainder of a number divided by another number
   POW		    Returns the value of a number raised to the power of another number
   POWER	    Returns the value of a number raised to the power of another number
   RAND		    Returns a random number
   ROUND	    Rounds a number to a specified number of decimal places
   SQRT		    Returns the square root of a number
   TRUNCATE	    Truncates a number to the specified number of decimal places
                Example : Truncate(22.300 , 1) -> 22.3
                          Truncate(22.300 , 0) -> 22
                          Truncate(22.300 ,-1) -> 20


AGGREGATE FUNCTIONS 🙋‍
    Function	Description
    MAX		    Returns the maximum value in a set of values
    MIN		    Returns the minimum value in a set of values
    AVG		    Returns the average value of an expression
    SUM		    Calculates the sum of a set of values
    COUNT	    Returns the number of records returned by a select query


DATE AND TIME FUNCTIONS 🙋‍
    Function	        Description
    CURDATE	           	Returns the current date
    CURRENT_DATE	    Returns the current date
    CURTIME		        Returns the current time
    CURRENT_TIME	    Returns the current time
    CURRENT_TIMESTAMP   Returns the current date and time
    NOW			        Returns the current date and time
    SYSDATE		        Returns the current date and time
    LOCALTIME		    Returns the current date and time
    LOCALTIMESTAMP	    Returns the current date and time
    YEAR			    Returns the year part for a given date
    MONTH		        Returns the month part for a given date
    DAY			        Returns the day of the month for a given date
    MONTHNAME           Return a month name of the given date
    DAYNAME             Return the day name for a given date
   
    DATE_FORMAT         Format a date as specified 
                        Syntax: DATE_FORMAT(date,format)   


*-----------------------------------------------------------------------------------------------*
SQL DATABASES 🙋‍


CREATE DATABASE Statement 🙋‍
    - The CREATE DATABASE statement is used to create a new SQL database.
    - Syntax :- CREATE DATABASE databasename;


SHOW DATABASES 🙋‍
    - You can check it in the list of databases
    - Syntax : SHOW DATABASES


SELECT DATABASE 🙋‍
    - Used to find out which DB is currently selected.
    - Syntax : SELECT DATABASE() ;


USE DATABASE 🙋‍
    - Used to select the database
    -  Syntax : USE databasename


DROP DATABASE Statement 🙋‍
    - The DROP DATABASE statement is used to drop an existing SQL database.
    - Syntax : DROP DATABASE databasename;


BACKUP DATABASE Statement 🙋‍
    - The BACKUP DATABASE statement is used in SQL to create a full back up of an existing SQL database.
    - Syntax : 
	    BACKUP DATABASE databasename
        TO DISK = 'filepath';
	    -----------------------------------------
	    BACKUP DATABASE databasename
	    TO DISK = 'filepath'
	    WITH DIFFERENTIAL;
    - A differential backup only backs up the parts of the DB that have changed since the last full DB backup.
    - Tip: A differential back up reduces the back up time (since only the changes are backed up).


*-----------------------------------------------------------------------------------------------*
SQL TABLES 🙋‍


CREATE TABLE Statement 🙋‍
    - The CREATE TABLE statement is used to create a new table in a database.
    - Syntax :
	  CREATE TABLE table_name (
      	column1 datatype,
      	column2 datatype,
      	column3 datatype,
   	  ....
	  );

    - Set default values
      CREATE TABLE table_name (
      	column1 datatype DEFAULT <default_value>,
      	column2 datatype DEFAULT <default_value>,
      	column3 datatype DEFAULT <default_value>,
   	  ....
	  );

Create Table Using Another Table 
    - A copy of an existing table can also be created using CREATE TABLE.
    - Syntax : 
	  CREATE TABLE new_table_name AS
      SELECT column1, column2,...
      FROM existing_table_name
      WHERE ....;
   
   - Note : Data is also copied from that table.


SHOW TABLES 🙋‍
    - Used to show table in an existing database.
    - Syntax :
	  SHOW TABLES;


DROP TABLE Statement 🙋‍
    - The DROP TABLE statement is used to drop an existing table in a database.
    - Syntax :
	  DROP TABLE table_name;


DESCRIBE Statement 🙋‍
    - DESCRIBE is used to describe something.
    - we use DESCRIBE or DESC(both are same) command to describe the structure of a table.
    - Syntax :
	  DESCRIBE tableName;
      -------------------------
	  DESC tableName ;

    NOTE : We can also use this , it is alternative of DESCRIBE tableName. 
    - Syntax : SHOW COLUMNS FROM tableName; 


SHOW WARNINGS Statement 🙋‍
    - It is used to see the warnings.
    - Syntax : SHOW WARNINGS ;


INSERT INTO Statement 🙋‍
    - The INSERT INTO statement of SQL is used to insert a new row in a table.
    - Syntax :
	  INSERT INTO table_name (column1, column2, column3,..) 
	  VALUES ( value1, value2, value3,..);
	  -------------------------------------------------------------------
	  INSERT INTO table_name (column1, column2, column3,..) 
	  VALUES ( value1, value2, value3,..),
             ( value1, value2, value3,..), ... ;
      -------------------------------------------------------------------
	  INSERT INTO table_name 
	  VALUES (value1, value2, value3,…)


TRUNCATE TABLE Statement 🙋‍
    - The TRUNCATE TABLE command deletes the data inside a table, but not the table itself.
    - Permanent delete the record from the table.
    - Syntax : TRUNCATE TABLE table_name ;


DELETE Statement 🙋‍
    - The DELETE statement is used to delete existing records in a table.
    - Note : If you omit the WHERE clause, all records in the table will be deleted!
    - Syntax :
	  DELETE FROM table_name WHERE condition;


    --------------------------   Note  ---------------------------------
    ---------------------------------------------------------------------
     Delete DB            Detete Tables          Delete Record
    ---------------------------------------------------------------------
       DROP	                 DROP	            DELETE / TRUNCATE
    ---------------------------------------------------------------------
    ---------------------------------------------------------------------


SQL UPDATE Statement (SET Keyword) 🙋‍
    - The UPDATE statement is used to modify the existing records in a table.
    - Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. 
    - The WHERE clause specifies which record(s) that should be updated. 
    - If you omit the WHERE clause, all records in the table will be updated!
    - Syntax :
	  UPDATE table_name
	  SET column1 = value1, column2 = value2, ...
	  WHERE condition;


SQL REMANE Statement (TO Keyword) 🙋‍
    - The RENAME TABLE and ALTER TABLE syntax help in changing the name of the table.
    - Syntax :
	  RENAME TABLE old_table_name To new_table_name ;    


SQL ALTER Statement 🙋‍
    - The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
    - The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

    ALTER TABLE - ADD Column
	Syntax: ALTER TABLE table_name
	        ADD column_name datatype;
    
    ALTER TABLE - DROP COLUMN
	Syntax: ALTER TABLE table_name
	        DROP COLUMN column_name;

    ALTER TABLE - RENAME COLUMN
	Syntax: ALTER TABLE table_name
	        RENAME COLUMN old_name to new_name;

    ALTER TABLE - ALTER/MODIFY DATATYPE
	Syntax: ALTER TABLE table_name
	        MODIFY COLUMN column_name datatype;


INSERT INTO Statement 🙋‍
    - The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
    - The INSERT INTO SELECT statement requires that the data types in source and target tables match.
    - Note: The existing records in the target table are unaffected.
    - Syntax :
	  INSERT INTO table2
	  SELECT * FROM table1
	  WHERE condition;
	  ---------------------------
	  INSERT INTO table2 (column1, column2, column3, ...)
	  SELECT column1, column2, column3, ...
	  FROM table1
	  WHERE condition;


CONSTRAINTS 🙋‍
    - SQL constraints are used to specify rules for data in a table.
    - Constraints can be specified when the table is created with the CREATE TABLE statement, 
    - Or after the table is created with the ALTER TABLE statement.
    - Constraints are used to limit the type of data that can go into a table. 
    - This ensures the accuracy and reliability of the data in the table. 
    - Syntax :
	  CREATE TABLE table_name (
      	column1 datatype constraint,
      	column2 datatype constraint,
      	column3 datatype constraint,
      	....
	  );

    - The following constraints are commonly used in SQL:
       NOT NULL     - Ensures that a column cannot have a NULL value
       UNIQUE       - Ensures that all values in a column are different
       PRIMARY KEY  - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
       FOREIGN KEY  - Prevents actions that would destroy links between tables
       CHECK        - Ensures that the values in a column satisfies a specific condition
       DEFAULT      - Sets a default value for a column if no value is specified
       CREATE INDEX - Used to create and retrieve data from the database very quickly
       
    - Syntax :
      CREATE TABLE table_name (
      	column1 datatype constraint,
      	column2 datatype constraint,
      	column3 datatype constraint,
      	.... ,
        PRIMARY|SECONDARY KEY (column_name)
	  );

    - Note : AUTO_INCREMENT keyword to perform an auto-increment feature.
      By default, the starting value for AUTO_INCREMENT is 1, 
      And it will increment by 1 for each new record.
      To let the AUTO_INCREMENT sequence start with another value

*-----------------------------------------------------------------------------------------------*
SQL DATA TYPES 🙋‍

    - String Datatypes
      CHAR      VARCHAR
      BINARY    VARBINARY
      BLOB      TINYBLOB
      TEXT      TINYTEXT
      ENUM

    - Numeric Datatypes
      INT       SMALLINT        
      TINYINT   MEDIUMINT
      BIGINT    BIT
      DECIMAL   NUMERIC 
      FLOAT     DOUBLE 

    - Date and Time Datatypes
      DATE      DATETIME
      TIME      TIMESTAMP
      YEAR 


*-----------------------------------------------------------------------------------------------*
NULL VALUES 🙋‍
    - A field with a NULL value is a field with no value. 
    - Note: A NULL value is different from a zero value or a field that contains spaces. 
    - A field with a NULL value is one that has been left blank during record creation!

How to Test for NULL Values?
    - It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
    - We will have to use the IS NULL and IS NOT NULL operators instead.


IS NULL Operator 🙋‍
    - The IS NULL operator is used to test for empty values (NULL values).
    - Tip: Always use IS NULL to look for NULL values.
    - Syntax :
	  SELECT column_names
	  FROM table_name
	  WHERE column_name IS NULL;


IS NOT NULL Operator 🙋‍
    - The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).
    - Syntax : 
	  SELECT column_names
	  FROM table_name
	  WHERE column_name IS NOT NULL;


*-----------------------------------------------------------------------------------------------*
GROUP BY Clause 🙋‍
    - The GROUP BY is an optional clause of the SELECT statement. 
    - The GROUP BY clause allows you to group rows based on values of one or more columns. 
    - The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) 
       to group the result-set by one or more columns.
    - Syntax : 
	  SELECT column_name(s)
	  FROM table_name
	  WHERE condition
	  GROUP BY column_name(s)
	  ORDER BY column_name(s);
	  ---------------------------------
	  SELECT aggregate_function(column_name(s))
	  FROM table_name
	  GROUP BY column_name(s);

*-----------------------------------------------------------------------------------------------*

    ---------------------- Order of these Clauses -------------------
    ---------------------------------------------------------------------
                WHERE > GROUP BY > HAVING > ORDER BY
    ---------------------------------------------------------------------

*-----------------------------------------------------------------------------------------------*
HAVING CLAUSE 🙋‍
    - To specify a condition for groups, you use the HAVING clause.
    - The HAVING clause is often used with the GROUP BY clause in the SELECT statement. 
    - The HAVING clause was added to SQL because the WHERE keyword cannot be used with 
      aggregate functions.
    - Syntax : 
	  SELECT column_name(s)
	  FROM table_name
	  WHERE condition
	  GROUP BY column_name(s)
	  HAVING condition
	  ORDER BY column_name(s);
	  -----------------------------------
	  SELECT aggregate_function(column_name(s))
	  FROM table_name
	  GROUP BY column_name(s)
	  HAVING group_condition;


*-----------------------------------------------------------------------------------------------*
SET AUTOCOMMIT Statement 🙋‍
    - You can turn off/on the auto-commit using the SET autocommit statement.
    - By default, the MySQL database commits/saves the changes done automatically.
    - Syntax : SET AUTOCOMMIT = 0/1

    - By default SET AUTOCOMMIT = 1 or SET autocommit = ON
	  It means the paramanent changes happens to table and database.
	  Commit happen in an automatic way.
    - If SET AUTOCOMMIT = 0 or SET autocommit = OFF
	  The temperory changes happens to the table or database.
      Commit wont happen in an automatic way.

    - Important
      If SET AUTOCOMMIT = 0 ,
      Then , DELETE command make a temporary changes.
	  But the TRUNCATE TABLE command makes a permanent changes 


*-----------------------------------------------------------------------------------------------*
COMMIT Statement 🙋‍
    - COMMIT in SQL is a transaction control language that is used to permanently save the 
      changes done in the transaction in tables/databases. 
    - The database cannot regain its previous state after its execution of commit. 
    - By default, MySQL automatically commits the changes permanently to the database.
    - The COMMIT statement saves all the modifications made in the current transaction 
      since the last commit or the START TRANSACTION statement.
    - Syntax : COMMIT;

    - When SET autocommit = 0 ,
	  then in this case we foce MYSQL to commit change using COMMIT Statement.

    - Example :
      SET autocommit = 0
      SELECT * FROM Employees
      INSERT INTO Employees VALUES(....)
      COMMIT

*-----------------------------------------------------------------------------------------------*
ROLLBACK Statement 🙋‍
    - ROLLBACK in SQL is a transactional control language that is used to undo the transactions 
      that have not been saved in the database. 
    - The command is only been used to undo changes since the last COMMIT.
    - It works only when SET AUTOCOMMIT = 0 or we can say make a temperary changes.
    - Syntax : ROLLBACK ;

    - Rollback leads the current transaction to traverse back i.e., it reverts all the updates performed
      by the SQL statements and restores the database to the way it was before the first statement 
      of the transaction process.

    - Note: Data changes that are captured in the log files get discarded 
    - And there are zero changes reflected in the database. 
    - Old values can be restored by Rollback using the log entries. 
    - That is why this process is also known as "Undoing".

    - Example :
      SET autocommit = 0
      SELECT * FROM Employees
      DELETE FROM Employees
      ROLLBACK

*-----------------------------------------------------------------------------------------------*
SET OPERATORS 🙋‍
    - SET operators are special type of operators which are used to combine the result of two queries.

    - Rules which must be followed to perform operations using SET operators
	1. The number and order of columns must be the same.
	2. Data types must be compatible.

    - Different types of SET operations :
	1. UNION
	2. UNION ALL
	3. INTERSECT
	4. MINUS

    - Syntax : 
	  SELECT first_select_query
	  set_operator
	  SELECT second_select_query

UNION Operator 🙋‍
    - The UNION operator is used to combine the result-set of two or more SELECT statements.
    - However it will eliminate duplicate rows from its resultset.
    - Every SELECT statement within UNION must have the same number of columns
    - The columns must also have similar data types
    - The columns in every SELECT statement must also be in the same order
    - Syntax : 
	  SELECT column_name(s) FROM table1
	  UNION
	  SELECT column_name(s) FROM table2;


UNION ALL Operator 🙋‍
    - The UNION operator selects only distinct values by default. 
    - To allow duplicate values, use UNION ALL.
    - Syntax :
	  SELECT column_name(s) FROM table1
	  UNION ALL
	  SELECT column_name(s) FROM table2;


INTERSECT Operator 🙋‍
    - It is used to combine two SELECT statements, 
    - But it only returns the records which are common from both SELECT statements.
    - Syntax :
	  SELECT column_name(s) FROM table1
	  INTERSECT
	  SELECT column_name(s) FROM table2;


MINUS Operator 🙋‍
    - It displays the rows which are present in the first query but absent in the second query 
      with no duplicates.
    - Syntax :
	  SELECT column_name(s) FROM table1
	  MINUS
	  SELECT column_name(s) FROM table2;

    - Note: The MINUS operator is supported only in Oracle databases.
    - In place of MINUS use EXCEPT operator
    - Syntax :
	  SELECT column_name(s) FROM table1
	  EXCEPT
	  SELECT column_name(s) FROM table2;


*-----------------------------------------------------------------------------------------------*
JOINS in SQL 🙋‍
    - A JOIN clause is used to combine rows from two or more tables.
    - Types of Joins :
	1. ( Inner , Equi , Simple ) Join
	2. Left ( Outer ) Join
	3. Right (Outer ) Join
	4. Full ( Outer ) Join
	5. Natural Join
	6. Self Join
	7. Cross Join

INNER JOIN Syntax 🙋‍
    SELECT column_name(s)
    FROM table1
    INNER JOIN table2
    ON table1.column_name = table2.column_name;

LEFT JOIN Syntax 🙋‍
    SELECT column_name(s)
    FROM table1
    LEFT JOIN table2
    ON table1.column_name = table2.column_name;

RIGHT JOIN Syntax 🙋‍
    SELECT column_name(s)
    FROM table1
    RIGHT JOIN table2
    ON table1.column_name = table2.column_name;

CROSS JOIN Syntax 🙋‍
    SELECT column_name(s)
    FROM table1
    CROSS JOIN table2;

SELF JOIN Syntax 🙋‍
    SELECT column_name(s)
    FROM table1 T1, table1 T2
    WHERE condition;


ON DELETE CASCADE constraint 👻
    - ON DELETE CASCADE constraint is used in MySQL to delete the rows 
      from the child table automatically, when the rows from the parent 
      table are deleted.

    - Syntax :
      CREATE TABLE tableName2 (
      column(s),
      PRIMARY KEY(column_names),
      FOREIGN KEY(column_names) 
        REFERENCES tableName1(col_name)
        ON DELETE CASCADE
      );


*-----------------------------------------------------------------------------------------------*
CASE Expression 🙋
    - The CASE expression goes through conditions and returns a value when the first condition is met. 
    - Like an if-then-else statement . 
    - So, once a condition is true, it will stop reading and return the result. 
    - If no conditions are true, it returns the value in the ELSE clause.
    - If there is no ELSE part and no conditions are true, it returns NULL.
    - Syntax :
	CASE
    	WHEN condition1 THEN result1
    	WHEN condition2 THEN result2
       	WHEN conditionN THEN resultN
	    ........
        ELSE result
 	END;

    - Example :
	  SELECT OrderID, Quantity,
	  CASE
      	WHEN Quantity > 30 THEN 'The quantity is greater than 30'
      	WHEN Quantity = 30 THEN 'The quantity is 30'
       	ELSE 'The quantity is under 30'
	  END AS QuantityText
	  FROM OrderDetails;
 
9462928417
*-----------------------------------------------------------------------------------------------*
Stored Procedure in SQL 🙋
    - A stored procedure is a prepared SQL code that you can save, 
    - So the code can be reused over and over again.
    - You can also pass parameters to a stored procedure, 
    - So that the stored procedure can act based on the parameter value(s) that is passed.

    - Stored Procedure Syntax :
	  CREATE PROCEDURE procedure_name
	  AS
	  sql_statement
	  GO;
        Execute a Stored Procedure :
	  EXEC procedure_name;

    - Example :
	  CREATE PROCEDURE SelectAllCustomers
	  AS
	  SELECT * FROM Customers
	  GO;
	  
	  EXEC SelectAllCustomers;

Stored Procedure With One Parameter 🙋
    - Example :
	  CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
	  AS
	  SELECT * FROM Customers WHERE City = @City
	  GO;
  
	  EXEC SelectAllCustomers @City = 'London';


Stored Procedure With Multiple Parameters 🙋
    - Example :
	  CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
	  AS
	  SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
	  GO;
  
	  EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';


*-----------------------------------------------------------------------------------------------*
CREATE VIEW Statement 🙋
    - Using views, we can overcome the need for creating more tables eventhough
      the required columns and data are available in the existing.
    - In SQL, a view is a virtual table based on the result-set of an SQL statement.
    - A view contains rows and columns, just like a real table. 
    - The fields in a view are fields from one or more real tables in the database.
    - A view is created with the CREATE VIEW statement. 
    - Syntax :
	  CREATE VIEW view_name AS
	  SELECT column1, column2, ...
	  FROM table_name
	  WHERE condition;

    - Note: A view always shows up-to-date data! 
      The database engine recreates the view, every time a user queries it.

Updating a View 🙋
    - A view can be updated with the CREATE OR REPLACE VIEW statement.
    - Syntax :
	  CREATE OR REPLACE VIEW view_name AS
	  SELECT column1, column2, ...
	  FROM table_name
	  WHERE condition;

Dropping a View 🙋
    - A view is deleted with the DROP VIEW statement.
    - Syntax :
	  DROP VIEW view_name;

*-----------------------------------------------------------------------------------------------*
Indexes in SQL 🙋
    - It will improve the performance.
    - Indexes are used to retrieve data from the database more quickly than otherwise. 
    - The users cannot see the indexes, they are just used to speed up searches/queries.
    - The CREATE INDEX statement is used to create indexes in tables.

    Note: Updating a table with indexes takes more time than updating a table without.

    - Syntax:
      CREATE INDEX index_name
      ON table_name (column1, column2, ...);

      Show Index Statement:
      SHOW INDEXES FROM table_name ;

      Drop Index Statement:
      DROP INDEX index_name;

Types of Indexes 🙋
    - Unique Index
    - Single-Column Index
    - Composite Index
    - Implicit Index

*-----------------------------------------------------------------------------------------------*
GRANT and REVOKE SQL Statement 🙋
    - GRANT & REVOKE are the popular members of the SQL family.
    - Grant and Revoke belong to these types of commands of the Data controlling Language.
    - It helps users to retrieve and modify the data stored in the database with some 
      specified queries.

GRANT 🙋
    - It is a DCL command.
    - It grants permissions to users on database objects.
    - It can also be used to assign access rights to users.
    - For every user, the permissions need to be specified.
    - When the access is decentralized, permission granting is easier.
    - GRANT is easy to execute.

    - Syntax:
      GRANT privilege_name ON object_name
      TO {user_name | public | role_name} 

REVOKE 🙋
    - Revoke command withdraw user privileges on database objects if any granted. 
    - It does operations opposite to the Grant command. 
    - If the access for one user is withdrawn, then all the permissions provided 
      by that particular person to others will also be removed.
    - It withdraws access preferences to users.
    - REVOKE is hard to perform.

    - Syntax: 
      REVOKE privilege_name ON object_name
      FROM {user_name | public | role_name}


*-----------------------------------------------------------------------------------------------*

Window functions in SQL 🙋‍
    - A window is basically a set of rows or observations in a table or result set. 
    - Window fn applies aggregate, ranking, analytics fn over a particular window(set of row).
    - A window is defined using the OVER() clause in SQL.
      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
      Aggregate fn (SUM, AVG, etc.)       | Window Function
      ■ ■ ■ ■                             | ■ ■ ■ ■        ■ ■ ■ ■
      ■ ■ ■ ■  ----> ■ ■ ■ ■              | ■ ■ ■ ■  ----> ■ ■ ■ ■
      ■ ■ ■ ■                             | ■ ■ ■ ■        ■ ■ ■ ■
      Give output one row per aggregation | The maintain there seperate identity.
      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
      
    - Syntax :
      SELECT column_name(s),
      function() , 
      OVER (
             [ PARTITION BY clause ]
             [ ORDER BY clause ]
             [ ROW | RANGE clause]
           )
      FROM table_name ;
      
      function()   = Any aggregate | ranking | Analytic function.    
      OVER         = It just to signify that this is a window function.
      PARTITION BY = It divides the row into partitions so we can specify which row
                     to use to compute the window function.
      ROWS         = If we want to further limit the rows with in our partition.
      
    + Different Types of Window Functions
      1. Aggregate window functions
      2. Value window functions
      3. Ranking window functions
    
    - Aggregate window functions are used to perform operations on sets of rows in a window(s). 
    - Ex: SUM(), MAX(), COUNT(), and others.

    - Rank window functions are used to rank rows in a window(s). 
    - Ex: RANK(), DENSE_RANK(), PERCENT_RANK(), ROW_NUMBER(), and others.

    - Value window functions are like aggregate window functions that perform multiple 
      operations in a window, but they are different from aggregate functions. 
    - Ex: LAG(), LEAD(), FIRST_VALUE(), LAST_VALUE(), NTH_VALUE() and others. 

*-----------------------------------------------------------------------------------------------*
Triggers in SQL 🙋‍
    - Triggers are statements that are execute automatically in the orde of occurance 
      of any events.
    - It is executed whenever there is any change or modification in DB.
    - It will execute if any of the operation is performed in DB.
    - A trigger is called a special procedure because it cannot be called directly like 
      a stored procedure. 
    - It might be :
      DML - Data Manipulation Language ( INSERT|UPDATE|DELETE)
      DDL - Data Definition Language   ( CREATE|ALTER|DROP)
      LogOn - It is executed in order of occurance of logOn events.

    - Syntax :
