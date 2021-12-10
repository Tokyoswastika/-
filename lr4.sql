----1----
insert into klient values (1, 'Дмитренко Юлія Андріївна', '(868)583-8106', 'Ж');
insert into klient values (2, 'Сергієнко Поліна Олексіївна', '(515)639-6342', 'Ж');
insert into klient values (3, 'Крамарчук Олександр Йосипович', '(115)239-6642', 'М');
insert into klient values (4, 'Гнатюк Валентин Борисович', '(243)373-9203', 'М');
insert into klient values (5, 'Романченко Поліна Володимирівна', '(827)729-5261', 'Ж');
insert into klient values (6, 'Шевчук Тимофій Янович', '(253)382-8451', 'М');
insert into klient values (7, 'Шевченко Олег Анатолійович', '(738)623-3206', 'М');

----2----
create or replace directory data_load as 'D:\\';
create table klientl(
	id int,
    name varchar(50)
) organization external(
    type ORACLE_LOADER
    default directory data_load
    access parameters(
        records delimited by newline
        fields terminated by ','
        missing field values are null
    )
    location ('info.txt')
); insert into klient select * from klientl;

----3----
update klient set phone_number = '(515)639-6347' where phone_number = '(515)639-6342';
update klient set name = 'Романченко Поліна Вікторівна' where phone_number = 'Романченко Поліна Володимирівна';

----4----
delete from klient where name = 'Шевченко Олег Анатолійович';
delete from stati where name = 'М';