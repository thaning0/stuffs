/*
多行注释
*/
-- 创建数据库
create database test; 

-- 使用新建数据库 
use test; 

-- 创建表格 
create table test_table (FirstName varchar(50),LastName varchar(50),Age int); 

-- 在表格中插入数据 （名称中有空格的时候用中括号[Frist Name]）
insert into test_table (FirstName,LastName,Age) values ('Joey','Blue',40),('Mike','Schmidt',34),('Mike','Schmidt1',34),('Mike','Schmidt2',35),('Mike','Schmidt3',36),('Mike','Schmidt4',37),('Mike','Schmidt4',38),('Mike','Schmidt4',39),('Mike','Schmidt4',40),('Barry','Bonds',50),('virus','Tang',24);

-- 选择表格中的数据 
select * from test_table;

-- 按条件选择 
select FirstName,LastName,Age 
from test_table 
where FirstName='Mike';

-- 模糊条件 % 匹配任意字符
select FirstName,LastName,Age 
from test_table 
where LastName like 'Schmidt%';

-- _ 匹配一个字符 
select FirstName,LastName,Age 
from test_table 
where LastName like 'Schmidt_';

-- 更新数据 
update test_table
set age = 26
where FirstName='virus' and LastName='Tang';

-- 给表格加入新列
alter table test_table
add City varchar(50);

update test_table
set City='San Fransisco'
where FirstName='Mike';

update test_table
set City='chengdu'
where FirstName='virus';

-- 删除表格数据 
delete from test_table
where FirstName='Mike' and LastName like 'Schmidt_';

-- 删除表格 
drop table test_table;

-- 删除数据库
drop database test_table;