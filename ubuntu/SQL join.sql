create table Customer 
(
    CustomerId int primary key auto_increment,
    CityId int,
    CustomerName varchar(50)
);

INSERT INTO Customer (CityId,CustomerName)
values (1,'Bob Smith'),(1,'Sally Smith'),(2,'Tom Smith'),(NULL,'Mary Smith');

create table City 
(
    CityId int primary key auto_increment,
    CityName varchar(50)
);

INSERT INTO City (CityName)
values ('Chengdu'),('New York'),('Houston');

/*
Customer:
+------------+--------+--------------+
| CustomerId | CityId | CustomerName |
+------------+--------+--------------+
|          1 |      1 | Bob Smith    |
|          2 |      1 | Sally Smith  |
|          3 |      2 | Tom Smith    |
|          4 |   NULL | Mary Smith   |
+------------+--------+--------------+

City:
+--------+----------+
| CityId | CityName |
+--------+----------+
|      1 | Chengdu  |
|      2 | New York |
|      3 | Houston  |
+--------+----------+
*/

-- inner join 两张表格的交集
select * from Customer
inner join City on Customer.CityId=City.CityId;
/*
+------------+--------+--------------+--------+----------+
| CustomerId | CityId | CustomerName | CityId | CityName |
+------------+--------+--------------+--------+----------+
|          1 |      1 | Bob Smith    |      1 | Chengdu  |
|          2 |      1 | Sally Smith  |      1 | Chengdu  |
|          3 |      2 | Tom Smith    |      2 | New York |
+------------+--------+--------------+--------+----------+
*/

-- left join 包括主表的所有数据，不管数据是否出现在附表中
select * from Customer
left outer join City c on Customer.CityId=c.CityId;
/*
+------------+--------+--------------+--------+----------+
| CustomerId | CityId | CustomerName | CityId | CityName |
+------------+--------+--------------+--------+----------+
|          1 |      1 | Bob Smith    |      1 | Chengdu  |
|          2 |      1 | Sally Smith  |      1 | Chengdu  |
|          3 |      2 | Tom Smith    |      2 | New York |
|          4 |   NULL | Mary Smith   |   NULL | NULL     |
+------------+--------+--------------+--------+----------+
*/

-- right join 包括附表的所有数据，不管数据是否出现在主表中
select * from Customer
right outer join City c on Customer.CityId=c.CityId;
/*
+------------+--------+--------------+--------+----------+
| CustomerId | CityId | CustomerName | CityId | CityName |
+------------+--------+--------------+--------+----------+
|          1 |      1 | Bob Smith    |      1 | Chengdu  |
|          2 |      1 | Sally Smith  |      1 | Chengdu  |
|          3 |      2 | Tom Smith    |      2 | New York |
|       NULL |   NULL | NULL         |      3 | Houston  |
+------------+--------+--------------+--------+----------+
*/

-- MySQL 不支持 full join 