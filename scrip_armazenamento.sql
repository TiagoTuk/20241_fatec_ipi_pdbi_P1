CREATE TABLE tb_resultados (
id SERIAL PRIMARY KEY,
	nome_pais VARCHAR (100),
	preco_medio REAL,
	descricao_mai_longa VARCHAR (200));
 
DO $$
DECLARE
	cur_desce CURSOR FOR SELECT country,description FROM tb_winemag;
	tupla record;
	maior_descr VARCHAR(200);
BEGIN
	OPEN cur_desce;
	LOOP 
		FETCH cur_desce INTO tupla;
		IF tupla.description > maior_descr THEN
		maior_descr := tupla.description
		ELSE;
		END IF;
	END LOOP;
	RAISE NOTICE '%', maior_descr;
	CLOSE cur_desce;
END;
$$;