create table operator(
	operator int primary key,
	name varchar(30),
	father_name varchar(30),
	stati varchar(30),
	age int,
	phone_number varchar(30),
	adresa varchar(30)
);

create table klient(
	klient int primary key,
    name varchar(150),
	phone_number varchar(30),
	stati varchar(2)
);

create table exchange_office(
    exchange_office int primary key,
	phone_number varchar(30),
	adresa varchar(30)
);

create table type_operations(
	type_operations int primary key,
	nazva varchar(30),
    dovidnuk char,
	purchase float
);

create table current_course(
    current_course int primary key,
	timedate date,
	currency int,
	exchange_rate float
);

create table currency(
	currency int primary key,
	name_currency varchar(30),
	county varchar(30)
);

create table operations(
    operations int primary key,
	suma float,
	ddate date,
    ttime timestamp,
    
    operator int,
    constraint operator foreign key (operator) references operator(operator) on delete cascade,
    
    klient int,
    constraint klient foreign key (klient) references klient(klient) on delete cascade,
    
	exchange_office int,
    constraint exchange_office foreign key (exchange_office) references exchange_office(exchange_office) on delete cascade,
    
    type_operations int,
    constraint type_operations foreign key (type_operations) references type_operations(type_operations) on delete cascade,
    
    current_course int,
    constraint current_course foreign key (current_course) references current_course(current_course) on delete cascade,
    
    currency int,
    constraint currency foreign key (currency) references currency(currency) on delete cascade
);

create table timetable(
	day_of_week int,
	time_start timestamp,
	time_end timestamp
);