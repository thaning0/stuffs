
-- 创建数据集
-- create database test; 

-- 使用新建数据集 
use test; 

-- 创建表格 id为自增主键，auto_increment表示自增
-- SQL-server 使用identity(1,1)命令实现auto increment
create table Customer 
(
    Id int Primary Key auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Age int,
    City varchar(50)
); 

-- 在表格中插入数据 （名称中有空格的时候用中括号[Frist Name]）
insert into Customer (FirstName,LastName,Age,City) values ('Joey','Blue',40,'San Fansisco'),('Mike','Schmidt',34,'San Fansisco'),('Mike','Schmidt1',34,'San Fansisco'),('Mike','Schmidt2',35,'San Fansisco'),('Mike','Schmidt3',36,'San Fansisco'),('Mike','Schmidt4',37,'San Fansisco'),('Mike','Schmidt4',38,'San Fansisco'),('Mike','Schmidt4',39,'San Fansisco'),('Mike','Schmidt4',40,'San Fansisco'),('Barry','Bonds',50,'San Fansisco'),('virus','Tang',24,'Chengdu');


create table Products
(
    Id int Primary Key auto_increment,
    ProductName varchar(50),
    Price float
);

insert into Products (ProductName,Price) values ('Baseball',5.95),('Basketball',6.95),('football',9.99),('Bat',195.99);

create table Orders
(
    OrderId int Primary Key auto_increment,
    OrderDate Datetime,
    CustomerId int,
    ProductId int
);

-- now() 获得当前时间 
insert into Orders (OrderDate,CustomerId,ProductId) values (now(),2,4);
insert into Orders (OrderDate,CustomerId,ProductId) values (now(),1,1);
insert into Orders (OrderDate,CustomerId,ProductId) values (now(),3,2);
insert into Orders (OrderDate,CustomerId,ProductId) values (now(),1,2),(now(),1,3);

-- 外键 建立表格之间的关系
alter table Orders
add foreign key (CustomerId) references Customer(Id);

alter table Orders
add foreign key (ProductId) references Products(Id);

-- 无法插入不满足外键的数据
insert into Orders (OrderDate,CustomerId,ProductId) values (now(),12,2);

-- 链接表格
-- 内链
select * from Orders
inner join Products on Orders.ProductId=Products.id
inner join Customer on Orders.CustomerId=Customer.id;

-- 别名 与上面一样的效果
select * from Orders as o
inner join Products as p on o.ProductId=p.id
inner join Customer as c on o.CustomerId=c.id;

select o.OrderDate,p.ProductName,p.Price,c.*
from Orders as o
inner join Products as p on o.ProductId=p.id
inner join Customer as c on o.CustomerId=c.id;

-- 函数
select sum(p.Price) as Total
from Orders as o
inner join Products as p on o.ProductId=p.id
inner join Customer as c on o.CustomerId=c.id;

-- as可以省略
-- group by分组
select c.LastName,p.ProductName,sum(p.Price) Total,avg(p.Price) Average
from Orders o
inner join Products p on o.ProductId=p.id
inner join Customer c on o.CustomerId=c.id
group by c.LastName,p.ProductName;

-- 排序 desc降序 asc升序
select * from Products
order by Price desc;

-- if函数 if(expr,v1,v2) 如果表达式 expr 成立，返回结果 v1；否则，返回结果 v2
update Products
set Price=if(Price>10,9.9,Price);
