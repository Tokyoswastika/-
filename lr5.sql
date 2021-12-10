--Таблиці:
create table klient1
    as select * from klient
        where klient <= 5;
        
create table klient2
    as select * from klient
        where klient >= 4;

----1----
select * from klient1
    union select * from klient2;
    
select * from klient1
    union all select * from klient2;


----2----
select * from klient1
    intersect select * from klient2;
   
----3----
select * from klient1
    minus select * from klient2; 
    
----4----
select * from klient1, klient2;
