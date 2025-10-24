-- ================================================
-- 6. CONSULTAS/RELATÓRIOS (DQL) - ADAPTADO PARA EDITORA
-- ================================================

USE db_editora_simples;

-- 1. (Baseado em Cliente+Compra+Item_Compra+Produto)
-- Lista quais livros cada cliente comprou em seus pedidos.
SELECT c.nome AS Cliente, l.titulo AS Livro, ip.quantidade, ip.preco_unitario
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente
JOIN Itens_Pedido ip ON p.id_pedido = ip.id_pedido
JOIN Livros l ON ip.isbn_livro = l.isbn;

-- 2. (Baseado em Produto+Categoria)
-- Lista o(s) autor(es) de cada livro.
SELECT l.titulo, a.nome AS autor
FROM Livros l
JOIN Livro_Autor la ON l.isbn = la.isbn_livro
JOIN Autores a ON la.id_autor = a.id_autor;

-- 3. (Baseado em Cliente+Compra)
-- Lista os pedidos de cada cliente.
SELECT c.nome AS cliente, p.data_pedido, p.valor_total
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente;

-- 4. (Baseado em Cliente+Compra+Item_Compra+Produto)
-- Versão simplificada da Consulta 1.
SELECT c.nome AS cliente, l.titulo AS livro, ip.quantidade
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente
JOIN Itens_Pedido ip ON p.id_pedido = ip.id_pedido
JOIN Livros l ON ip.isbn_livro = l.isbn;

-- 5. (Baseado em Produto+Promocao)
-- Lista os funcionários e seus respectivos departamentos.
SELECT f.nome AS funcionario, d.nome AS departamento
FROM Funcionarios f
JOIN Departamentos d ON f.id_departamento = d.id_departamento;

-- 6. (Baseado em Produto+Estoque)
-- Lista o total de unidades vendidas por livro.
SELECT l.titulo AS livro, SUM(ip.quantidade) AS total_vendido
FROM Livros l
JOIN Itens_Pedido ip ON l.isbn = ip.isbn_livro
GROUP BY l.titulo
ORDER BY total_vendido DESC;

-- 7. (Baseado em Cliente+Venda)
-- Lista o ID do pedido, data e valor para cada cliente (similar à 3, mas focada no pedido).
SELECT c.nome AS cliente, p.id_pedido, p.data_pedido, p.valor_total
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente;

-- 8. (Baseado em Funcionario WHERE salario)
-- Lista funcionários com salário acima de 5000.
SELECT nome, cargo, salario
FROM Funcionarios
WHERE salario > 5000.00;

-- 9. (Baseado em Item_Venda+Produto)
-- Lista os livros, quantidades e preços de cada pedido.
SELECT ip.id_pedido, l.titulo AS livro, ip.quantidade, ip.preco_unitario
FROM Itens_Pedido ip
JOIN Livros l ON ip.isbn_livro = l.isbn;

-- 10. (Baseado em Compra+Fornecedor)
-- Lista quais livros foram escritos por um autor específico (ID 7 = Stephen King).
SELECT l.titulo, l.genero
FROM Livros l
JOIN Livro_Autor la ON l.isbn = la.isbn_livro
WHERE la.id_autor = 7;

-- 11. (Baseado em Cliente+Venda+observacoes)
-- Lista clientes e as observações de seus pedidos (se houver).
SELECT c.nome AS cliente, p.valor_total, p.observacoes
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente
WHERE p.observacoes IS NOT NULL; -- (Script 2 adiciona esta coluna)

-- 12. (Baseado em Produto MAX(preco))
-- Mostra o livro mais caro do catálogo.
SELECT titulo, preco
FROM Livros
WHERE preco = (SELECT MAX(preco) FROM Livros);

-- 13. (Baseado em Cliente IN Compra)
-- Mostra o nome dos clientes que JÁ fizeram um pedido.
SELECT nome
FROM Clientes
WHERE id_cliente IN (SELECT DISTINCT id_cliente FROM Pedidos);

-- 14. (Baseado em Produto IN Item_Compra)
-- Mostra os livros que já tiveram um pedido com 2 ou mais unidades.
SELECT titulo
FROM Livros
WHERE isbn IN (
    SELECT isbn_livro
    FROM Itens_Pedido
    WHERE quantidade >= 2
);

-- 15. (Baseado em Promocao IN Produto)
-- Mostra os departamentos que possuem funcionários alocados.
SELECT nome
FROM Departamentos
WHERE id_departamento IN (SELECT DISTINCT id_departamento FROM Funcionarios);

-- 16. (Baseado em Produto WHERE Categoria)
-- Mostra livros do gênero 'Distopia' (usando Subquery, embora WHERE direto funcione).
SELECT titulo
FROM Livros
WHERE genero = (SELECT genero FROM Livros WHERE isbn = '9788535902778' LIMIT 1); -- '1984' é Distopia

-- 17. (Baseado em Fornecedor IN Compra)
-- Mostra os autores que JÁ possuem livros cadastrados.
SELECT nome
FROM Autores
WHERE id_autor IN (SELECT DISTINCT id_autor FROM Livro_Autor);

-- 18. (Baseado em Cliente com Compra MAX(valor_total))
-- Mostra o cliente que fez o pedido de maior valor.
SELECT nome
FROM Clientes
WHERE id_cliente = (
    SELECT id_cliente
    FROM Pedidos
    ORDER BY valor_total DESC
    LIMIT 1
);

-- 19. (Baseado em Produto > AVG(preco))
-- Mostra os livros com preço acima da média de todos os livros.
SELECT titulo, preco
FROM Livros
WHERE preco > (SELECT AVG(preco) FROM Livros);

-- 20. (Baseado em Cliente NOT IN Compra)
-- Mostra os clientes que NUNCA fizeram um pedido.
SELECT nome
FROM Clientes
WHERE id_cliente NOT IN (SELECT DISTINCT id_cliente FROM Pedidos);

-- 21. (Baseado em Funcionario MAX(salario))
-- Mostra o funcionário com o maior salário.
SELECT nome, salario, cargo
FROM Funcionarios
WHERE salario = (SELECT MAX(salario) FROM Funcionarios);
