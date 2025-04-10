-- 9. Exiba a média de saldo por cidade dos clientes
SELECT c.cidade, AVG(ct.saldo) AS media_saldo
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
GROUP BY c.cidade;

--10. Liste apenas as cidades com mais de 3 contas associadas a seus moradores
SELECT c.cidade, COUNT(c.cidade) AS total_contas
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
GROUP BY c.cidade
HAVING COUNT(c.cidade) > 3;

--11. Utilize a cláusula ROLLUP para exibir o total de saldos por cidade da agência e o total geral
SELECT a.agencia_cidade, SUM(ct.saldo) AS total_saldo
FROM agencia a
JOIN conta ct ON a.agencia_cod = ct.agencia_agencia_cod
GROUP BY ROLLUP(a.agencia_cidade);

--12. Faça uma consulta com UNION que combine os nomes de cidades dos clientes e das agências, sem repetições
SELECT DISTINCT cidade AS nome_cidade
FROM cliente

UNION

SELECT DISTINCT agencia_cidade
FROM agencia;
