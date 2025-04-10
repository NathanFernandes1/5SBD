 --4. Exiba o saldo total de todas as contas cadastradas
SELECT SUM(saldo) AS saldo_total
FROM conta;

--5. Mostre o maior saldo e a média de saldo entre todas as contas
SELECT MAX(saldo) AS maior_saldo, AVG(saldo) AS media_saldo
FROM conta;

--6. Apresente a quantidade total de contas cadastradas
SELECT COUNT(conta_numero) AS total_contas
FROM conta;

--7. Liste o número de cidades distintas onde os clientes residem
SELECT COUNT(DISTINCT cidade) AS cidades_distintas
FROM cliente;

-- 8. Exiba o número da conta e o saldo, substituindo valores nulos por zero
SELECT conta_numero, NVL(saldo, 0) AS saldo
FROM conta;
