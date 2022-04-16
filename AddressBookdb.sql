 mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 5.7.37-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+------------------------+
| Database               |
+------------------------+
| information_schema     |
| AddressBook            |
| Address_book_service   |
| EmployeePayRollService |
| addressbook            |
| college                |
| emp                    |
| empdb                  |
| employee               |
| employeePayRoll        |
| employeePayRollService |
| employeedb             |
| jaya                   |
| mydatabase             |
| mydb                   |
| mysql                  |
| payroll_services       |
| performance_schema     |
| sonoo                  |
| student                |
| sys                    |
+------------------------+
21 rows in set (0.00 sec)

mysql> use AddressBook;
Database changed
mysql> create table  addressbook (id int not null auto_increment, firstname varchar(50) not null, lastname varchar(52) not null, address varchar(80) not null, city varchar(70) not null, state varchar(90) not null, zip varchar(15) not null, phonenumber varchar(20) not null, email varchar(85) not null,primary key(id));
Query OK, 0 rows affected (0.03 sec)

mysql> desc addressbook;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int(11)     | NO   | PRI | NULL    | auto_increment |
| firstname   | varchar(50) | NO   |     | NULL    |                |
| lastname    | varchar(52) | NO   |     | NULL    |                |
| address     | varchar(80) | NO   |     | NULL    |                |
| city        | varchar(70) | NO   |     | NULL    |                |
| state       | varchar(90) | NO   |     | NULL    |                |
| zip         | varchar(15) | NO   |     | NULL    |                |
| phonenumber | varchar(20) | NO   |     | NULL    |                |
| email       | varchar(85) | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('PRIYANKA','KS','DVG KARNATAKA','DAVANGERE','KARANATAKA','577004','9009009009', 'priya@gmail.com');
Query OK, 1 row affected (0.02 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('JAYASHREE','METRE','BID KARNATAKA','BIDAR','KARANATAKA','577004','998565603', 'Jayashree@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city      | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  2 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR     | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
2 rows in set (0.00 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('NAYANA','KS','DVG KARNATAKA','DAVANGERE','KARANATAKA','577004','8008008008', 'nayu@gmail.com');
Query OK, 1 row affected (0.02 sec)

mysql> select * from addressbook;                                                                                                              +----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city      | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  2 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR     | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
3 rows in set (0.00 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('SANJANA','MJ','DVG KARNATAKA','DAVANGERE','KARANATAKA','577002','7007007007', 'sanju@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;                                                                                                              +----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city      | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  2 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR     | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA | DAVANGERE | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
+----+-----------+----------+---------------+-----------+------------+--------+-------------+---------------------+
4 rows in set (0.00 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('KAVYA','M','BDVT KARNATAKA','BHADRAVTHI','KARANATAKA','577301','6006006006', 'kavya@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;                                                                                                              +----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address        | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  2 | JAYASHREE | METRE    | BID KARNATAKA  | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  5 | KAVYA     | M        | BDVT KARNATAKA | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> update addressbook set zip=585327 where id =2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address        | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  2 | JAYASHREE | METRE    | BID KARNATAKA  | BIDAR      | KARANATAKA | 585327 | 998565603   | Jayashree@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  5 | KAVYA     | M        | BDVT KARNATAKA | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> select * from addressbook where firstname = JAYASHREE;
ERROR 1054 (42S22): Unknown column 'JAYASHREE' in 'where clause'
mysql> select * from addressbook where city = BIDAR;
ERROR 1054 (42S22): Unknown column 'BIDAR' in 'where clause'
mysql> select * from addressbook where city = BIDAR;
ERROR 1054 (42S22): Unknown column 'BIDAR' in 'where clause'
mysql> select * from addressbook where city="BHADRAVTHI";
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
| id | firstname | lastname | address        | city       | state      | zip    | phonenumber | email           |
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
|  5 | KAVYA     | M        | BDVT KARNATAKA | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com |
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
1 row in set (0.00 sec)

mysql> select * from addressbook where city="BIDAR";
+----+-----------+----------+---------------+-------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city  | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+-------+------------+--------+-------------+---------------------+
|  2 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR | KARANATAKA | 585327 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+-------+------------+--------+-------------+---------------------+
1 row in set (0.00 sec)

mysql> select * from addressbook where firstname =" JAYASHREE";
Empty set (0.00 sec)

mysql> delete from addressbook where firstname="JAYASHREE";
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
| id | firstname | lastname | address        | city       | state      | zip    | phonenumber | email           |
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com  |
|  4 | SANJANA   | MJ       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com |
|  5 | KAVYA     | M        | BDVT KARNATAKA | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com |
+----+-----------+----------+----------------+------------+------------+--------+-------------+-----------------+
4 rows in set (0.00 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('JAYASHREE','METRE','BID KARNATAKA','BIDAR','KARANATAKA','577004','998565603', 'Jayashree@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;                                                                                                              +----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address        | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  3 | NAYANA    | KS       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA  | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  5 | KAVYA     | M        | BDVT KARNATAKA | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  6 | JAYASHREE | METRE    | BID KARNATAKA  | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+----------------+------------+------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> UPDATE addressbook set address="G KARNATAKA" where id=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> select count(address) from addressbook;
+----------------+
| count(address) |
+----------------+
|              5 |
+----------------+
1 row in set (0.01 sec)

mysql> insert into addressbook (firstname,lastname,address,city,state,zip,phonenumber,email) values ('PARVATI','METRE','BID KARNATAKA','BIDAR','KARANATAKA','577004','998565603', 'Jayashree@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select * from addressbook;                                                                                                 
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  4 | SANJANA   | MJ       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
6 rows in set (0.00 sec)

mysql> select * from addressbook order by firstname asc;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  4 | SANJANA   | MJ       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
6 rows in set (0.00 sec)

mysql> select * from addressbook order by firstname desc;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
|  4 | SANJANA   | MJ       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577002 | 7007007007  | sanju@gmail.com     |
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
6 rows in set (0.00 sec)

mysql> delete from addressbook where firstname="SANJANA";
Query OK, 1 row affected (0.02 sec)

mysql> select * from addressbook;                                                                                                 
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> alter table addressbook add type varchar(255);
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               | type |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     | NULL |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      | NULL |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     | NULL |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | NULL |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | NULL |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+------+
5 rows in set (0.00 sec)

mysql> select addressbook set type="family" where id=6;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set type="family" where id=6' at line 1
mysql>  addressbook set type="family" where id=6;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'addressbook set type="family" where id=6' at line 1
mysql> update addressbook set Type="Family" where id=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               | type   |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     | Family |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      | NULL   |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     | NULL   |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | NULL   |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | NULL   |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
5 rows in set (0.00 sec)

mysql> update addressbook set Type="Family" where id=7;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update addressbook set Type="Friend" where id=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update addressbook set Type="Friend" where id=1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update addressbook set Type="Friend" where id=3;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               | type   |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     | Friend |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      | Friend |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     | Friend |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | NULL   |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | Family |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
5 rows in set (0.00 sec)

mysql> update addressbook set Type="Family" where id=6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from addressbook;
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
| id | firstname | lastname | address       | city       | state      | zip    | phonenumber | email               | type   |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
|  1 | PRIYANKA  | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 9009009009  | priya@gmail.com     | Friend |
|  3 | NAYANA    | KS       | DVG KARNATAKA | DAVANGERE  | KARANATAKA | 577004 | 8008008008  | nayu@gmail.com      | Friend |
|  5 | KAVYA     | M        | G KARNATAKA   | BHADRAVTHI | KARANATAKA | 577301 | 6006006006  | kavya@gmail.com     | Friend |
|  6 | JAYASHREE | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | Family |
|  7 | PARVATI   | METRE    | BID KARNATAKA | BIDAR      | KARANATAKA | 577004 | 998565603   | Jayashree@gmail.com | Family |
+----+-----------+----------+---------------+------------+------------+--------+-------------+---------------------+--------+
5 rows in set (0.00 sec)

mysql> select count(*) where type="friend";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where type="friend"' at line 1
mysql> select count(*) addressbook  where type="friend";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where type="friend"' at line 1
mysql> select count(*) from  addressbook  where type="friend";
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select count(*) from  addressbook  where type="family";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

mysql>  addressbook set type="family" where id=6;
