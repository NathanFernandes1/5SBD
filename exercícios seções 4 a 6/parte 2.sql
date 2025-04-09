--11.Apresente o saldo de cada conta formatado como moeda local.

SELECT TO_CHAR(saldo, 'L999G999G990D00') AS saldo_formatado
FROM conta;

--12. Converta a data de abertura da conta para o formato 'dd/mm/yyyy'.

SELECT TO_CHAR(data_abertura, 'DD/MM/YYYY') AS data_formatada
FROM conta;


--13. Exiba o saldo da conta e substitua valores nulos por 0

SELECT NVL(saldo, 0) AS saldo_corrigido
FROM conta;

--14. Exiba os nomes dos clientes e substitua valores nulos na cidade por 'Sem cidade'

SELECT cliente_nome, NVL(cidade, 'Sem cidade') AS cidade_corrigida
FROM cliente;

--15. Classifique os clientes em grupos com base em sua cidade:
--o 'Região Metropolitana' se forem de Niterói
--o 'Interior' se forem de Resende
--o 'Outra Região' para as demais cidades

SELECT 
  cliente_nome,
  cidade,
  CASE 
    WHEN cidade = 'Niterói' THEN 'Região Metropolitana'
    WHEN cidade = 'Resende' THEN 'Interior'
    ELSE 'Outra Região'
  END AS classificacao_regional
FROM cliente;





