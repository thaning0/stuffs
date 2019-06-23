# MySQL in Ubuntu

### 安装

```
apt-get install apt-get install mysql-server
```

### 使用

通过`mysql`这个命令行程序来连接MySQL服务器

```
#mysql -u root -p -- 连接mysql服务器 
```

如果出现ERROR 1698 (28000): Access denied for user 'root'@'localhost' 使用

```
sudo mysql -u root -p # 连接mysql服务器 
exit # 退出服务器
```

### 查询数据

```
select 1; -- 简单计算可以用来测试数据库连接
select *,* from students; -- 从表格students中选取*列和*列
SELECT * FROM <表名> WHERE <条件表达式> -- 从表中选取*列并筛选满足条件的记录（行）
SELECT * FROM students ORDER BY score; -- 按照score列从低到高排序
SELECT * FROM students ORDER BY score desc; -- 按照score列从高到低排序
select *,* from students LIMIT 3; -- 限制最多显示行数为3
select *,* from students OFFSET 3; -- 从第3行开始显示，数字大时效率低
-- LIMIT 15 OFFSET 30 可以简写为 LIMIT 30, 15
SELECT COUNT(*) count_name FROM students; -- 返回表格并设置别名，列名为count__name,记录（行）数
SELECT class_id，COUNT(*) count_name FROM students group by class_id; -- 根据不同class_id分别记数
SELECT * FROM students, classes; -- 同时查询多张表，返回两张表的笛卡尔乘积
SELECT s.id, s.name, s.class_id, c.name class_name, s.gender, s.score FROM students s INNER JOIN classes c ON s.class_id = c.id; -- 表格内连接 s为主表
-- 外连接 RIGHT OUTER JOIN、LEFT OUTER JOIN、FULL OUTER JOIN
```

| 条件                 | 表达式举例1     | 表达式举例2      | 说明                                              |
| :------------------- | :-------------- | :--------------- | :------------------------------------------------ |
| 使用=判断相等        | score = 80      | name = 'abc'     | 字符串需要用单引号括起来                          |
| 使用>判断大于        | score > 80      | name > 'abc'     | 字符串比较根据ASCII码，中文字符比较根据数据库设置 |
| 使用>=判断大于或相等 | score >= 80     | name >= 'abc'    |                                                   |
| 使用<判断小于        | score < 80      | name <= 'abc'    |                                                   |
| 使用<=判断小于或相等 | score <= 80     | name <= 'abc'    |                                                   |
| 使用<>判断不相等     | score <> 80     | name <> 'abc'    |                                                   |
| 使用LIKE判断相似     | name LIKE 'ab%' | name LIKE '%bc%' | %表示任意字符，例如'ab%'将匹配'ab'，'abc'，'abcd' |

| 函数 | 说明                                   |
| :--- | :------------------------------------- |
| SUM  | 计算某一列的合计值，该列必须为数值类型 |
| AVG  | 计算某一列的平均值，该列必须为数值类型 |
| MAX  | 计算某一列的最大值                     |
| MIN  | 计算某一列的最小值                     |

```
SELECT ... FROM tableA ??? JOIN tableB ON tableA.column1 = tableB.column2;
```

我们把tableA看作左表，把tableB看成右表，那么INNER JOIN是选出两张表都存在的记录：

LEFT OUTER JOIN是选出左表存在的记录：

RIGHT OUTER JOIN是选出右表存在的记录：

FULL OUTER JOIN则是选出左右表都存在的记录：

### 关系

#### 主键

主键是关系表中记录的**唯一**标识。主键的选取非常重要：主键不要带有业务含义，而应该使用BIGINT自增或者GUID类型。主键也不应该允许`NULL`。

#### 外键

通过外键可以实现一对多、多对多和一对一的关系。外键既可以通过数据库来约束，也可以不设置约束，仅依靠应用程序的逻辑来保证。

####索引

无论是否创建索引，对于用户和应用程序来说，使用关系数据库不会有任何区别。这里的意思是说，当我们在数据库中查询时，如果有相应的索引可用，数据库系统就会自动使用索引来提高查询效率，如果没有索引，查询也能正常执行，只是速度会变慢。因此，索引可以在使用数据库的过程中逐步优化。

### 例子

查出每个班级男生和女生的平均分

```
SELECT class_id, gender, avg(score) num FROM students GROUP BY class_id, gender;
```