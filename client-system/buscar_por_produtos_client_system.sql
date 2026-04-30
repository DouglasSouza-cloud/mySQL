-- BUSCAR POR PRODUTO DENTRO DA VENDA
-- QUERY - SELECT - LEITURA
-- * TODAS AS COLUNAS
-- SELECT NOMES DE TABLES (FILTRA)
SELECT id_produto, preco_unitario
FROM item_venda
WHERE id_venda = 1 AND id_produto = 1;
-- PESQUISANDO POR NOME
SELECT iv.preco_unitario,p.nome_produto
FROM item_venda AS iv -- AS=APELIDO
JOIN produto AS p ON iv.id_produto = p.id_produto -- JUNTAR
WHERE iv.id_venda = 1 AND p.nome_produto LIKE'%CAFE%';

-- BUSCANDO TODAS AS VENDAS DE UM CLIENTE
SELECT *
FROM venda
WHERE id_cliente = 1;

-- BUSCAR PRODUTO MAIS VENDIDO
SELECT p.nome_produto, SUM(iv.quantidade_item) AS total_vendido
FROM item_venda iv
JOIN produto p ON p.id_produto = iv.id_produto
GROUP BY p.nome_produto;