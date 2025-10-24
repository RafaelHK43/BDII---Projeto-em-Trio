-- ================================================
-- 7. VIEWS (DDL) - 
-- ================================================

USE db_editora_simples;

-- 1. Baseado em: VendasPorCliente
-- (Soma o valor total gasto por cada cliente em todos os pedidos)
CREATE VIEW VW_PedidosPorCliente AS
SELECT c.nome AS Cliente, SUM(p.valor_total) AS TotalGasto
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente;

-- 2. Baseado em: ProdutosEmPromocao (Substituído)
-- (Relatório principal: Lista Livros e seus respectivos Autores)
CREATE VIEW VW_LivrosEAutores AS
SELECT l.titulo, l.preco, l.genero, a.nome AS Autor
FROM Livros l
JOIN Livro_Autor la ON l.isbn = la.isbn_livro
JOIN Autores a ON la.id_autor = a.id_autor;

-- 3. Baseado em: EstoquePorProduto (Substituído)
-- (Relatório principal: Lista Funcionários e seus Departamentos)
CREATE VIEW VW_FuncionariosPorDepartamento AS
SELECT f.nome AS Funcionario, f.cargo, d.nome AS Departamento
FROM Funcionarios f
JOIN Departamentos d ON f.id_departamento = d.id_departamento;

-- 4. Baseado em: ComprasPorFornecedor (Substituído)
-- (Relatório principal: Lista Clientes que nunca fizeram um pedido)
CREATE VIEW VW_ClientesInativos AS
SELECT c.nome, c.email, c.telefone
FROM Clientes c
LEFT JOIN Pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;

-- 5. Baseado em: ProdutosMaisVendidos
-- (Lista os 10 livros mais vendidos em quantidade)
CREATE VIEW VW_LivrosMaisVendidos AS
SELECT l.titulo, SUM(ip.quantidade) AS TotalVendido
FROM Livros l
JOIN Itens_Pedido ip ON l.isbn = ip.isbn_livro
GROUP BY l.isbn
ORDER BY TotalVendido DESC
LIMIT 10;

-- 6. Baseado em: ClientesComMaisCompras
-- (Lista os 10 clientes que fizeram mais pedidos)
CREATE VIEW VW_ClientesComMaisPedidos AS
SELECT c.nome, COUNT(p.id_pedido) AS TotalPedidos
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente
ORDER BY TotalPedidos DESC
LIMIT 10;

-- 7. Baseado em: VendasPorCategoria
-- (Soma o valor total de vendas agrupado por gênero do livro)
CREATE VIEW VW_VendasPorGenero AS
SELECT l.genero AS Genero, SUM(ip.preco_unitario * ip.quantidade) AS TotalVendas
FROM Pedidos p
JOIN Itens_Pedido ip ON p.id_pedido = ip.id_pedido
JOIN Livros l ON ip.isbn_livro = l.isbn
GROUP BY l.genero;

-- 8. Baseado em: ProdutosComMenorEstoque (Substituído)
-- (Relatório operacional: Lista todos os pedidos que ainda estão 'Pendentes')
CREATE VIEW VW_PedidosPendentes AS
SELECT p.id_pedido, c.nome AS Cliente, p.data_pedido, p.valor_total
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
WHERE p.status_pedido = 'Pendente';

-- 9. Baseado em: FuncionarioSalarioMedio
-- (Mostra o salário médio para cada cargo na editora)
CREATE VIEW VW_FuncionarioSalarioMedio AS
SELECT cargo, AVG(salario) AS SalarioMedio
FROM Funcionarios
GROUP BY cargo;

-- 10. Baseado em: ClientesComVendasEmMes
-- (Lista clientes que fizeram pedidos no mês e ano atuais)
CREATE VIEW VW_ClientesComPedidosNoMes AS
SELECT c.nome, COUNT(p.id_pedido) AS TotalPedidos
FROM Clientes c
JOIN Pedidos p ON c.id_cliente = p.id_cliente
WHERE MONTH(p.data_pedido) = MONTH(CURRENT_DATE()) AND YEAR(p.data_pedido) = YEAR(CURRENT_DATE())
GROUP BY c.id_cliente;
