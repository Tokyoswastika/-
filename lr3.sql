----1----
alter table operations
    drop constraint currency;
   
----2----
alter table operations
    drop column ddate;
alter table operations
    modify suma float not null;

----3----
alter table timetable
    rename column day_of_week to day;

----4----
alter table currency
    add currencyu int;
alter table Ticket 
    add constraint currencyu unique (currencyu, name_currency);
    
----5----
alter table operations
    drop constraint klient;
alter table Transport
    add constraint klient foreign key (klient) references klient(klient);
