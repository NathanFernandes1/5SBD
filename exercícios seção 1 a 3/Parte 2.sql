--4. Liste os nomes dos clientes da cidade de Macaé.
SELECT  cliente_nome
FROM cliente
WHERE cidade like'Macaé';

--5. Exiba o código e o nome de todos os clientes com código entre 5 e 15.
SELECT  cliente_nome,cliente_cod
FROM cliente
WHERE cliente_cod BETWEEN 5 AND 15;

--6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí.
SELECT  cliente_nome,cliente_cod,cidade
FROM cliente
WHERE cidade LIKE 'Niterói'OR cidade LIKE'Volta Redonda' OR cidade LIKE 'Itaboraí';
