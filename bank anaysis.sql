use bankanalysis;

set sql_safe_updates = 0;
show variables like "secure_file_priv"; 



create table finance_1(

id int , member_id int, loan_amnt int,funded_amnt int, funded_amnt_inv double, term char(30), int_rate double,
 installment double, grade varchar(50), sub_grade varchar(50),emp_title varchar(100), emp_length varchar(50), home_ownership varchar(50),
  annual_inc int, verification_status varchar(30),issue_d char(30), loan_status varchar(30), pymnt_plan varchar(20), descrip varchar(5000),
  purpose varchar(200), title varchar(50), addr_state varchar(50) ,
  dti double );
  
  
  load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\finance_1.csv'
  into table finance_1
  fields terminated by ','
  enclosed by '"'
  lines terminated by '\n'
  ignore 1 rows;
  
  update finance_1 set issue_d = str_to_date(issue_d, "%m%d%y");
  
  
  
  
  