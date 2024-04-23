DO $$
DECLARE
	cur_desce REFCURSOR;
    nome_pais VARCHAR(200);
    media_valor REAL;
BEGIN
	OPEN cur_desce
    FOR nome_pais IN SELECT DISTINCT country FROM tb_winemag; 
	LOOP
        media_pais := 0;
     	FOR IN SELECT AVG(price) FROM tb_winemag WHERE country = nome_pais LOOP
            RAISE NOTICE 'País: %, Preço Médio: %', nome_pais, media_valor;
        END LOOP;
    END LOOP;
END;
$$;