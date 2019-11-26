DROP TABLE clave;
DROP TABLE crime_2017;
DROP TABLE crime_2018;

CREATE TABLE clave(
	index integer,
	clave VARCHAR primary key,
	tipo_de_delito VARCHAR
)

CREATE TABLE crime_2017(
	index integer,
	clave_2017 VARCHAR,
	FOREIGN KEY(clave) REFERENCES clave(clave_2017),
	tipo_de_delito VARCHAR,
	Enero integer,
	Febrero integer,
	Marzo integer,
	Abril integer,
	Mayo integer,
	Junio integer,
	Agosto integer,
	Septiembre integer,
	Octubre integer,
	Noviembre integer,
	Diciembre integer
)

CREATE TABLE crime_2018(
	index integer,
	clave_2018 VARCHAR,
	FOREIGN KEY(clave) REFERENCES clave(clave_2018),
	tipo_de_delito VARCHAR,
	Enero integer,
	Febrero integer,
	Marzo integer,
	Abril integer,
	Mayo integer,
	Junio integer,
	Agosto integer,
	Septiembre integer,
	Octubre integer,
	Noviembre integer,
	Diciembre integer
)

Select * FROM clave;

ALTER TABLE clave ADD PRIMARY KEY (index);
ALTER TABLE crime_2018 ADD FOREIGN KEY (index) REFERENCES clave(index);
