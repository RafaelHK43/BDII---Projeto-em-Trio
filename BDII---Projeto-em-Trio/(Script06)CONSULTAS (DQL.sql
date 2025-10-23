-- ================================================
-- 5. UPDATES
-- ================================================

USE db_editora_simples;

-- 1. Baseado em: UPDATE Produto SET preco...
-- (Atualiza o preço de 'Dom Casmurro')
UPDATE Livros SET preco = 32.00 WHERE isbn = '9788535914849';

-- 2. Baseado em: UPDATE Produto SET status = 'inativo'...
-- (Vamos inativar livros de um gênero específico, ex: 'Poesia')
UPDATE Livros SET status = 'inativo' WHERE genero = 'Poesia';

-- 3. Baseado em: UPDATE Cliente SET nome...
UPDATE Clientes SET nome = 'Maria Rodrigues Oliveira' WHERE id_cliente = 2;

-- 4. Baseado em: UPDATE Cliente SET telefone...
UPDATE Clientes SET telefone = '31912345678' WHERE id_cliente = 3;

-- 5. Baseado em: UPDATE Produto SET cor...
-- (Vamos atualizar o gênero de '1984')
UPDATE Livros SET genero = 'Ficção Científica / Distopia' WHERE isbn = '9788535902778';

-- 6. Baseado em: UPDATE Venda SET valor_total...
UPDATE Pedidos SET valor_total = 460.00 WHERE id_pedido = 2;

-- 7. Baseado em: UPDATE Produto SET marca...
-- (Vamos atualizar os detalhes de 'Dom Casmurro')
UPDATE Livros SET detalhes = 'O clássico romance de Machado de Assis sobre ciúmes.' WHERE isbn = '9788535914849';

-- 8. Baseado em: UPDATE Funcionario SET cargo...
-- (Vamos promover a 'Paula Fernandes')
UPDATE Funcionarios SET cargo = 'Contadora Sênior' WHERE id_funcionario = 7;

-- 9. Baseado em: UPDATE Funcionario SET salario...
UPDATE Funcionarios SET salario = 5100.00 WHERE id_funcionario = 7;

-- 10. Baseado em: DELETE FROM Item_Venda...
DELETE FROM Itens_Pedido WHERE id_item_pedido = 5; -- (Item do Pedido 5, 'Expresso do Oriente')

-- 11. Baseado em: DELETE FROM Funcionario WHERE cargo...
-- (Vamos adicionar um temporário e removê-lo)
INSERT INTO Funcionarios (nome, cargo, id_departamento, salario) VALUES ('Funcionario Temp', 'Temporário', 1, 1500.00);
DELETE FROM Funcionarios WHERE cargo = 'Temporário';

-- 12. Baseado em: DELETE FROM Cliente WHERE id_cliente NOT IN...
-- (Vamos adicionar um cliente sem pedidos e removê-lo)
INSERT INTO Clientes (nome, email, cpf) VALUES ('Cliente Fantasma', 'fantasma@email.com', '11111111111');
DELETE FROM Clientes WHERE id_cliente NOT IN (SELECT DISTINCT id_cliente FROM Pedidos);

-- 13. Baseado em: UPDATE Produto SET tamanho...
-- (Vamos alterar o status de 'A Hora da Estrela')
UPDATE Livros SET status = 'revisao' WHERE isbn = '9788532511018';

-- 14. Baseado em: UPDATE Produto SET cor WHERE id_categoria...
-- (Vamos dar 10% de aumento no preço de todos os livros de 'Distopia')
UPDATE Livros SET preco = preco * 1.10 WHERE genero = 'Distopia';

-- 15. Baseado em: UPDATE Item_Venda SET quantidade...
-- (Atualiza a quantidade do item no Pedido 2)
UPDATE Itens_Pedido SET quantidade = 4 WHERE id_item_pedido = 3;

-- 16. Baseado em: UPDATE Produto SET detalhes...
UPDATE Livros SET detalhes = 'O épico de ficção científica em Arrakis, agora com nova capa.' WHERE isbn = '9788576570014';

-- 17. (Novo) Atualizar o Pedido 5, que estava 'Pendente', para 'Pago'.
UPDATE Pedidos SET status_pedido = 'Pago' WHERE id_pedido = 5;

-- 18. (Novo) Atualizar o Pedido 7, que estava 'Pago', para 'Enviado'.
UPDATE Pedidos SET status_pedido = 'Enviado' WHERE id_pedido = 7;

-- 19. (Novo) Deletar o Pedido 6, que estava 'Cancelado'.
-- (Primeiro removemos os itens dele)
DELETE FROM Itens_Pedido WHERE id_pedido = 6;

-- 20. (Novo - Continuação) Agora removemos o Pedido 6.
DELETE FROM Pedidos WHERE id_pedido = 6;

-- 21. (Novo) Transferir a funcionária 'Amanda Ribeiro' (ID 1) para o 'Marketing' (ID 2).
UPDATE Funcionarios SET id_departamento = 2 WHERE id_funcionario = 1;

-- 22. (Novo) Corrigir um erro de cadastro em Livro_Autor.
-- (Remover a co-autoria de 'Huxley' (ID 17) em '1984' (ISBN '9788535902778'))
DELETE FROM Livro_Autor WHERE isbn_livro = '9788535902778' AND id_autor = 17;