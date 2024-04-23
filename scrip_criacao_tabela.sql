CREATE TABLE tb_winemag(
	cod_winemag SERIAL PRIMARY KEY,
	country VARCHAR (200),
	description VARCHAR (200),
	points INT,
	price REAL
);

SELECT * FROM tb_winemag;