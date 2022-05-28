
create table colors(
    id int not null auto_increment primary key,
    color varchar(255),
    paint varchar(255)
);

insert into colors(color, paint) values('Red', 'Metallic');
insert into colors(color, paint) values('Green', 'Gloss');
insert into colors(color, paint) values('Blue', 'Metallic');
insert into colors(color, paint) values('White', 'Gloss');
insert into colors(color, paint) values('Black', 'Gloss');

select * from colors;

create table brands(
    id int not null auto_increment primary key,
    brand varchar(255)
);

insert into brands(brand) values('Ford');
insert into brands(brand) values('Toyota');
insert into brands(brand) values('Nissan');
insert into brands(brand) values('Smart');
insert into brands(brand) values('BMW');

select * from brands;

create table models(
    id int not null auto_increment primary key,
    model varchar(255)
);

insert into models(model) values('Sports');
insert into models(model) values('Sedan');
insert into models(model) values('4WD');
insert into models(model) values('Luxury');

select * from models;


create table cars(
    id int not null auto_increment primary key,
    color int not null,
    brand int not null,
    model int not null,    
    foreign key(color) references colors(id),
    foreign key(brand) references brands(id),
    foreign key(model) references models(id)
);

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

select * from cars;
-- output:
-- +----+---------+---------+---------+
-- | id | color   | brand   | model   |
-- +----+---------+---------+---------+
-- | 1  |        1|        2|        1|
-- | 2  |        2|        2|        3|
-- | 3  |        3|        1|        2|
-- | 4  |        4|        5|        1|
-- | 5  |        5|        2|        3|
-- +----+---------+---------+---------+

select cars.id, colors.color, models.model from cars inner join colors on cars.color = colors.id inner join models on cars.model = models.id order by cars.id;

-- select from cars the model and colors where models is sports
select cars.id as id ,models.model as model , colors.color as color from cars inner join colors on cars.color = colors.id inner join models on cars.model = models.id where models.model = 'Sports'


