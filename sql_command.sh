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

# To delete records
delete from $table where $condition

# To delete a table 
drop table $table

# To clean records of a table
delete from $table
