-- enter your schema for apartments, offices and storefronts below
drop table if exists apartments;
drop table if exists storefronts;

create table apartments(
	id serial primary key,
	apt_number integer,
	bedrooms integer,
	bathrooms integer,
	address varchar(128) not null,
	tenant varchar(128),
	occupied boolean,
	sq_ft numeric,
	price numeric
);

create table storefronts(
	id serial primary key,
	address varchar(128),
	occupied boolean,
	price numeric,
	kitchen boolean,
	sq_ft numeric,
	owner varchar(128),
	outdoor_seating boolean default false
);
