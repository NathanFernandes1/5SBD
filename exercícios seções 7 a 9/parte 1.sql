--1. Usando a sintaxe proprietária da Oracle, exiba o nome de cada cliente junto com o número de sua conta
SELECT c.cliente_nome, ct.conta_numero
FROM cliente c, conta ct
WHERE c.cliente_cod = ct.cliente_cliente_cod;

--2. Mostre todas as combinações possíveis de clientes e agências (produto cartesiano)
SELECT c.cliente_nome, a.agencia_nome
FROM cliente c, agencia a;

--3. Usando aliases de tabela, exiba o nome dos clientes e a cidade da agência onde mantêm conta
SELECT c.cliente_nome, a.agencia_cidade
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
JOIN agencia a ON ct.agencia_agencia_cod = a.agencia_cod;


