-- TRAN 1
--SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
--SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SELECT current_setting('transaction_isolation');

START TRANSACTION;

--SELECT id, name, date_of_birth FROM users where id=11 order by  1 desc;
--
--SELECT id, name, date_of_birth FROM users where id>=45 order by  1 desc;

Update users set name = 'user 2222' where id = 11;

rollback 

commit 

------------------ Tran 2

--SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
--SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SELECT current_setting('transaction_isolation');
START TRANSACTION;

-- Update users set name = 'Merri Jones111' where id = 11;
--INSERT INTO users VALUES (53, '5333 555', '2000-01-01');

Update users set name = 'User 4444' where id = 11;
COMMIT

SELECT id, name, date_of_birth FROM users where id >= 45 ;

SELECT id, name, date_of_birth FROM users 
where id = 11
order by 1 desc;
COMMIT

rollback