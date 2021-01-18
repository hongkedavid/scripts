# Ref: https://www.w3schools.com/sql/

# To list all tables
show tables

# To show schema of a table
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME="$table";

# To create a table
create table $table_name (
    $column1 $datatype,
    $column2 $datatype,
    $column3 $datatype,
    ...
);

# To insert a record
insert into $table values ($value1, $value2, $value3, ...);

# To update records
update $table
set $column1 = $value1, $column2 = $value2, ...
where $condition;

# To join two tables
SELECT "$tab1.$attr1", "$tab1.$attr2", "$tab2.$attr1"
FROM "$tab1"
INNER JOIN "$tab2" ON "$tab1.$common_attr"="$tab2.$common_attr";

# To delete records
delete from $table where $condition

# To delete a table 
drop table $table

# To clean records of a table
delete from $table

# To view storage size of a DB
SELECT table_schema AS "Database", 
ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)" 
FROM information_schema.TABLES 
GROUP BY table_schema;

# To view storage size of tables in a DB
SELECT
  TABLE_NAME AS `Table`,
  ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024) AS `Size (MB)`
FROM
  information_schema.TABLES
WHERE
  TABLE_SCHEMA = "$db"
ORDER BY
  (DATA_LENGTH + INDEX_LENGTH)
DESC;

