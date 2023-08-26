# HLA 10. Transactions, Isolations, Locks

## Home work: 
Set up percona and postgre and create an InnoDB table </br>
By changing isolation levels and making parallel queries, reproduce the main problems of parallel access:</br>
 lost update</br>
dirty read</br>
non-repeatable read</br>
phantom read</br>

## Table with result of investigations 
Container 1 - MariaDB 
Container 2 - PostGre 


### InnoDB 
| Isolation Level | Lost update | Dirty reads | Non-repeatable reads | Phantom reads |
| --------------- | ----------- | ------------| -------------------- | ------------- | 
| Serializable | NO | NO | NO | NO |
| Repeatable Read | NO | NO | NO | YES/NO . Yes - when second transaction started without using START TRANSACTION; NO - when second started with using START TRANSACTION. Why it is possible, I do not understand |
| Read Commited | NO | NO | YES | YES |
| Read Uncommited | NO | YES | YES | YES |

Lost update - not reproduced due to not possible to make Update the same rows in second transaction

### POstGree 
| Isolation Level | Lost update | Dirty reads | Non-repeatable reads | Phantom reads |
| --------------- | ----------- | ------------| -------------------- | ------------- | 
| Serializable    | NO      | NO      | NO | NO |
| Repeatable Read | NO      | NO      | NO | NO - Why it is possible, I do not understand. But here Should be YES |
| Read Commited/Uncommited| NO| NO    | YES | YES |

Lost update - not reproduced due to not possible to make Update the same rows in second transaction
