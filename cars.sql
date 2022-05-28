-- colors of the car 


-- create table colors of the car mysql
-- id not null auto_increment primary key
-- color varchar(255)
-- paint varchar(255)
create table colors(
    id int not null auto_increment primary key,
    color varchar(255),
    paint varchar(255)
);
/*
color Paint
Red	Metallic
Green	Gloss
Blue	Metallic
White	Gloss
Black	Gloss
*/
insert into colors(color, paint) values('Red', 'Metallic');
insert into colors(color, paint) values('Green', 'Gloss');
insert into colors(color, paint) values('Blue', 'Metallic');
insert into colors(color, paint) values('White', 'Gloss');
insert into colors(color, paint) values('Black', 'Gloss');

-- create table brands 
-- id not null auto_increment primary key 
-- brand varchar(255)
create table brands(
    id int not null auto_increment primary key,
    brand varchar(255)
);
/*
Ford
Toyota
Nissan
Smart
BMW
*/
insert into brands(brand) values('Ford');
insert into brands(brand) values('Toyota');
insert into brands(brand) values('Nissan');
insert into brands(brand) values('Smart');
insert into brands(brand) values('BMW');

-- create table models
-- id not null auto_increment primary key
-- model varchar(255)
create table models(
    id int not null auto_increment primary key,
    model varchar(255)
);
/*
Sports
Sedan 
4WD
Luxury
*/
insert into models(model) values('Sports');
insert into models(model) values('Sedan');
insert into models(model) values('4WD');
insert into models(model) values('Luxury');

-- create cars table
-- from colors, brands, models
-- id not null auto_increment primary key
-- colors foreign key
-- brands foreign key
-- models foreign key

create table cars(
    id int not null auto_increment primary key,
    color int not null,
    brand int not null,
    model int not null,    
    foreign key(color) references colors(id),
    foreign key(brands) references brands(id),
    foreign key(models) references models(id)
);
/*
1	2	1
3	1	2
5	3	1
4	4	2
2	2	3
3	5	4
4	1	3
2	2	1
5	2	3
4	5	1
*/
insert into cars(color, brand, model) values(1, 2, 1);
insert into cars(color, brand, model) values(3, 1, 2);
insert into cars(color, brand, model) values(5, 3, 1);
insert into cars(color, brand, model) values(4, 4, 2);
insert into cars(color, brand, model) values(2, 2, 3);
insert into cars(color, brand, model) values(3, 5, 4);
insert into cars(color, brand, model) values(4, 1, 3);
insert into cars(color, brand, model) values(2, 2, 1);
insert into cars(color, brand, model) values(5, 2, 3);
insert into cars(color, brand, model) values(4, 5, 1);

