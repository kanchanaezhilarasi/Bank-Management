Create table customer(
  customer_id number(5) primary key,
  customer_name varchar2(30) NOT NULL,
  phone varchar2(15)unique,
  email varchar2(50)unique,
  city varchar2(20) not null
  );
  
  
  
  Insert into customer(customer_id, customer_name, phone, email, city)
  values(101, 'Ezhilarasi', 8248572344, 'ezhilsankar@gmail.com', 'Bengaluru');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(102, 'Sankar', 8248572389, 'sankardevaraj@gmail.com', 'New Delhi');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(103, 'Nathiya', 8248572356, 'nathiyasankar@gmail.com', 'Bengaluru');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(104, 'Kumaran', 8248572323, 'kumaransankar@gmail.com', 'Chennai');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(105, 'Kanchana', 8248572312, 'kanchanasankar@gmail.com', 'Chennai');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(106, 'Selvambal', 8248572345, 'selvambaldevaraj@gmail.com', 'Bengaluru');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(107, 'Charlie', 8248572378, 'charliekanchi@gmail.com', 'New Delhi');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(108, 'Jackie', 8248572325, 'jackieezhil@gmail.com', 'New Delhi');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(109, 'Mani', 8248556344, 'manishanmugam@gmail.com', 'Bengaluru');
  
   Insert into customer(customer_id, customer_name, phone, email, city)
  values(110, 'Bala', 8248577444, 'balavishwanath@gmail.com', 'Chennai');
  
  
  create table branch(
    branch_id number(5) primary key, 
    branch_name varchar2(30) NOT NULL,
    city varchar2(20)not null
    );
    
    
   INSERT INTO BRANCH (branch_id, branch_name, city)
   VALUES (1, 'Anna Nagar Branch', 'Chennai');
   INSERT INTO BRANCH (branch_id, branch_name, city)
   VALUES (2, 'MG Road Branch', 'Bengaluru');
   INSERT INTO BRANCH (branch_id, branch_name, city)
   VALUES (3, 'Connaught Place Branch', 'New Delhi');
    
   CREATE TABLE account (
    account_id NUMBER(10) PRIMARY KEY,
    customer_id NUMBER(5) NOT NULL,
    branch_id NUMBER(5) NOT NULL,
    account_type VARCHAR2(20) NOT NULL,
    balance NUMBER(12,2) DEFAULT 0,
    opening_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_account_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),

    CONSTRAINT fk_account_branch
        FOREIGN KEY (branch_id)
        REFERENCES branch(branch_id),

    CONSTRAINT chk_account_type
        CHECK (account_type IN ('SAVINGS', 'CURRENT')),

    CONSTRAINT chk_account_balance
        CHECK (balance >= 0)
);



    
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance)
    VALUES
    (1001, 101, 1, 'SAVINGS', 50000.00);
    
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance ) 
    VALUES
    (1002, 102, 2, 'CURRENT', 120000.00);
    
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES 
    (1003, 103, 3, 'SAVINGS', 35000.00);
    
    INSERT INTO ACCOUNT
    (account_id, customer_id, branch_id, account_type, balance)
    VALUES
    (1004, 104, 1, 'CURRENT', 200000.00);
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES
    (1005, 105, 2, 'SAVINGS', 15000.00);
    
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES 
    (1006, 106, 3, 'CURRENT', 90000.00);
    
    INSERT INTO ACCOUNT 
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES 
    (1007, 107, 1, 'SAVINGS', 42000.00);
    
    INSERT INTO ACCOUNT
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES 
    (1008, 108, 2, 'SAVINGS', 300000.00);
    
    INSERT INTO ACCOUNT
    (account_id, customer_id, branch_id, account_type, balance )
    VALUES 
    (1009, 109, 3, 'SAVINGS', 27000.00);
    
    INSERT INTO ACCOUNT
    (account_id, customer_id, branch_id, account_type, balance)
    VALUES
    (10010, 110, 1, 'CURRENT', 65000.00);

    
    
    create table employee(
    employee_id number(5) primary key,
    employee_name varchar2(30) not null,
     branch_id number(5) not null, 
     designation varchar2(30) not null,
     salary number(10,2) check (salary > 0)
     );
     
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
     VALUES (1, 'Kavitha Rao', 1, 'Manager', 75000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary) 
     VALUES (2, 'Lokesh Babu', 1, 'Clerk', 32000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
     VALUES (3, 'Meena Pillai', 1, 'Cashier', 30000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
     VALUES (4, 'Naveen Kumar', 2, 'Manager', 78000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
     VALUES (5, 'Om Prakash', 2, 'Clerk', 31000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary) 
     VALUES (6, 'Priya Das', 3, 'Manager', 80000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary) 
     VALUES (7, 'Qasim Sheikh', 3, 'Cashier', 29000.00);
     INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
     VALUES (8, 'Radha Krishnan', 3, 'Clerk', 33000.00);

     create table bank_transaction(
       transaction_id number(5) primary key,
       account_id number(10) not null,
       transaction_type varchar2(20) not null,
       amount number(10,2) check (amount > 0),
       transaction_date date default sysdate
       );   
       
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date) 
       VALUES (1, 1, 'Deposit', 5000.00, TO_DATE('2024-01-05','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (2, 1, 'Withdrawal', 2000.00, TO_DATE('2024-01-10','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (3, 2, 'Deposit', 15000.00, TO_DATE('2024-01-12','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (4, 2, 'Transfer', 3000.00, TO_DATE('2024-01-15','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (5, 3, 'Deposit', 4000.00, TO_DATE('2024-01-18','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (6, 3, 'Withdrawal', 1000.00, TO_DATE('2024-01-20','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (7, 4, 'Deposit', 25000.00, TO_DATE('2024-01-22','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       
       VALUES (8, 5, 'Deposit', 2000.00, TO_DATE('2024-01-25','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       
       VALUES (9, 5, 'Withdrawal', 500.00, TO_DATE('2024-01-28','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (10, 6, 'Deposit', 10000.00, TO_DATE('2024-02-01','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (11, 6, 'Transfer', 5000.00, TO_DATE('2024-02-03','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (12, 7, 'Deposit', 6000.00, TO_DATE('2024-02-05','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (13, 7, 'Withdrawal', 1500.00, TO_DATE('2024-02-08','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (14, 8, 'Deposit', 50000.00, TO_DATE('2024-02-10','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (15, 9, 'Deposit', 3000.00, TO_DATE('2024-02-12','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (16, 9, 'Withdrawal', 700.00, TO_DATE('2024-02-14','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (17, 10, 'Deposit', 8000.00, TO_DATE('2024-02-16','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (18, 10, 'Transfer', 2000.00, TO_DATE('2024-02-18','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (19, 1, 'Deposit', 3000.00, TO_DATE('2024-02-20','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (20, 2, 'Withdrawal', 4000.00, TO_DATE('2024-02-22','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (21, 3, 'Deposit', 1500.00, TO_DATE('2024-02-24','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (22, 4, 'Withdrawal', 10000.00, TO_DATE('2024-02-26','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (23, 6, 'Deposit', 7000.00, TO_DATE('2024-02-28','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (24, 8, 'Withdrawal', 20000.00, TO_DATE('2024-03-01','YYYY-MM-DD'));
       INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount, transaction_date)
       VALUES (25, 10, 'Deposit', 5000.00, TO_DATE('2024-03-03','YYYY-MM-DD'));

COMMIT;


 

ALTER TABLE account
  ADD (account_status VARCHAR2(10) DEFAULT 'ACTIVE'
       CHECK (account_status IN ('ACTIVE', 'INACTIVE')));
    
    INSERT into customer(customer_id, customer_name, phone, email, city)
  values(111, 'Baala', 8248572514, 'baalavishwanath@gmail.com', 'Chennai');
  
  
  update customer
  set city = 'Chennai'
  where customer_id = 109;
  
  delete from customer
  where customer_id = 111;
    
     INSERT into customer(customer_id, customer_name, phone, email, city)
  values(112, 'Priya', 8248584514, 'priya@gmail.com', 'Chennai');
  
  commit;
  
   INSERT into customer(customer_id, customer_name, phone, email, city)
  values(113, 'Rahul', 8248546514, 'rahul@gmail.com', 'Chennai');
  
  rollback;
  
  INSERT into customer(customer_id, customer_name, phone, email, city)
  values(114, 'Savepoint User', 8248194514, 'savepoint@gmail.com', 'Chennai');
  
  savepoint customer_insert;
    
    
    update customer
    set city = 'Bengaluru'
    where customer_id = 106;
    
    Rollback to customer_insert;
    
    commit;
    
     select * from customer;
    
    select customer_id, customer_name, phone, email from customer;
    
    select * from customer
    where city = 'Chennai';

   select * from account
   where balance > 42000;
 
 select * from account 
 where balance between 50000 and 300000;
 
 select * from account
 where account_type = 'SAVINGS';
 
 
 select * from bank_transaction
 where transaction_type = 'Withdrawal';
 
  select * from bank_transaction
 where transaction_type = 'Deposit';
 
   select * from bank_transaction
 where transaction_type = 'Transfer';
 
 select * from bank_transaction
 where amount between 500 and 5000;
 
 select * from customer
 where city = 'Chennai'
 or city = 'New Delhi';
 
 select *from employee
 where not designation = 'Clerk';
 
 select * from bank_transaction
 where amount >= 5000;
 
  select * from bank_transaction
 where amount <> 5000;
 
  select * from bank_transaction
 where amount <= 5000;
 
  select * from bank_transaction
 where amount > 5000;
 
  select * from bank_transaction
 where amount < 5000;
 
 select * from employee
 where designation IN ('Manager' , 'Clerk');
 
  select * from employee
 where salary between 30000 and 75000 ;
 
 
select * from customer
where customer_name like 'K%' ;
 
 select * from account
 order by balance asc;
  
   select * from account
 order by balance desc;
  
 
 select customer_name,
 upper (customer_name) as uppercase_name,
 lower (customer_name) as lowercase_name
 from customer;
 
 
 select customer_name,
 length(customer_name) as name_length
 from customer;
 
 select customer_name,
 substr(customer_name,1,5) as substr_name
 from customer;
 
 select account_id, balance ,
 round (balance / 3,2) as rounded_value
 from account;
 
  select account_id, balance ,
 round (balance / 5) as remainder
 from account;
 
 select account_id, opening_date,
  opening_date + 30 as after_30days_of_opening
  from account;
 
 
SELECT account_id,opening_date,
SYSDATE - opening_date AS days_since_opening from account; 
 
SELECT account_id,
ADD_MONTHS(opening_date, 12) AS one_year_later FROM account;


SELECT account_id,
MONTHS_BETWEEN(SYSDATE, opening_date) AS months_open FROM account;
 
 
SELECT account_id,
       TO_CHAR(opening_date, 'DD-MM-YYYY') AS formatted_date
FROM account;
 
 SELECT customer_name,
NVL(phone, 'No Phone') AS phone FROM customer;

SELECT account_id,
NVL(balance, 0) AS balance FROM account;


SELECT account_id,balance,
 CASE
 WHEN balance < 50000 THEN 'LOW'
 WHEN balance BETWEEN 50000 AND 100000 THEN 'MEDIUM'
 ELSE 'HIGH'
 END AS balance_category FROM account;
 
 select count(*) as total_customers
 from customer;
 
 select count(*) as total_accounts
 from account;
 
select sum(balance) as tot_balance,
avg(balance) as avg_balance,
max(balance) as highest_balance, 
min(balance) as lowest_balance from account;
   
   
select city,
count(*) as customer_count from customer
group by city;

select account_type,
count(*) as num_of_accts from account
group by account_type;

select account_type,
sum(balance) as tot_balance from account
group by account_type;

select branch_id,
avg(salary) as emp_avg_salary
from employee
group by branch_id;

select designation,
count(*) as employee_count from employee
group by designation
having count(*) > 1 ;
 
 
 select c.customer_name, a.account_id, a.balance
 from customer c
 join account a 
 on c.customer_id = a.customer_id;
 
 
 select c.customer_name, a.account_type, br.branch_name
 from customer c 
 join account a 
 on c.customer_id = a.customer_id
 join branch br
 on a.branch_id = br.branch_id;
 
 SELECT t.transaction_id, t.transaction_type, t.amount, t.transaction_date,
       a.account_id, a.account_type, a.balance
FROM bank_transaction t
JOIN account a ON t.account_id = a.account_id;
 
 SELECT c.customer_name, a.account_id, a.balance
FROM customer c
LEFT JOIN account a ON c.customer_id = a.customer_id;

SELECT br.branch_name, e.employee_name, e.designation
FROM branch br
LEFT JOIN employee e ON br.branch_id = e.branch_id;
 
 SELECT account_id, balance,
       RANK() OVER (ORDER BY balance DESC) AS balance_rank
FROM account;


 
 SELECT account_id, balance,
       ROW_NUMBER() OVER (ORDER BY balance DESC) AS row_num
FROM account;



SELECT employee_id, branch_id, salary,
       RANK() OVER (PARTITION BY branch_id ORDER BY salary DESC) AS salary_rank
FROM employee;



SELECT transaction_id, transaction_date, amount,
       SUM(amount) OVER (ORDER BY transaction_date) AS running_total
FROM bank_transaction;



SELECT transaction_id, transaction_date, amount,
       LAG(amount) OVER (ORDER BY transaction_date) AS previous_amount,
       LEAD(amount) OVER (ORDER BY transaction_date) AS next_amount
FROM bank_transaction;



 WITH balance_by_type AS (
    SELECT account_type, SUM(balance) AS total_balance
    FROM account
    GROUP BY account_type
)
SELECT * FROM balance_by_type;



WITH txn_totals AS (
    SELECT account_id, SUM(amount) AS total_amount
    FROM bank_transaction
    GROUP BY account_id
)
SELECT a.account_id, a.account_type, a.balance, t.total_amount
FROM account a
JOIN txn_totals t ON a.account_id = t.account_id;



WITH avg_salary_by_branch AS (
    SELECT branch_id, AVG(salary) AS avg_salary
    FROM employee
    GROUP BY branch_id
)
SELECT b.branch_name, s.avg_salary
FROM branch b
JOIN avg_salary_by_branch s ON b.branch_id = s.branch_id;




WITH account_activity AS (
    SELECT account_id, COUNT(*) AS txn_count, SUM(amount) AS txn_total
    FROM bank_transaction
    GROUP BY account_id
)
SELECT c.customer_name, a.account_type, a.balance,
       aa.txn_count, aa.txn_total
FROM customer c
JOIN account a ON c.customer_id = a.customer_id
JOIN account_activity aa ON a.account_id = aa.account_id;
 
 
 
 
 
 
 
 
