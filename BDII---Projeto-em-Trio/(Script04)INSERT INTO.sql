-- ================================================
-- 4. INSERT INTO
-- ================================================

USE db_editora_simples;


INSERT INTO Departamentos (nome) VALUES
('Editorial'),
('Marketing'),
('Financeiro'),
('Recursos Humanos'),
('Vendas');


INSERT INTO Autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânica'),
('J.K. Rowling', 'Britânica'),
('Isaac Asimov', 'Russa'),
('J.R.R. Tolkien', 'Britânica'),
('Stephen King', 'Americana'),
('Agatha Christie', 'Britânica'),
('Yuval Noah Harari', 'Israelense'),
('Carlos Drummond de Andrade', 'Brasileira'),
('Fernando Pessoa', 'Portuguesa'),
('Gabriel García Márquez', 'Colombiana'),
('Jane Austen', 'Britânica'),
('H.P. Lovecraft', 'Americana'),
('Neil Gaiman', 'Britânica'),
('Margaret Atwood', 'Canadense'),
('Aldous Huxley', 'Britânica'),
('Frank Herbert', 'Americana'),
('Philip K. Dick', 'Americana'),
('Ursula K. Le Guin', 'Americana');


INSERT INTO Clientes (nome, telefone, email, cpf) VALUES
('João Silva', '11999887766', 'joao@gmail.com', '12345678900'),
('Maria Oliveira', '21988776655', 'maria@uol.com.br', '98765432100'),
('Carlos Santos', '31977665544', 'carlos@hotmail.com', '45678912300'),
('Ana Costa', '41966554433', 'ana@yahoo.com', '65432198700'),
('Pedro Lima', '51955443322', 'pedro@terra.com', '11223344556'),
('Fernanda Rocha', '61944332211', 'fer@outlook.com', '66778899001'),
('Ricardo Nunes', '71933221100', 'ricardo@globo.com', '77889900112'),
('Juliana Alves', '81922110099', 'julialves@gmail.com', '88990011223'),
('Lucas Ferreira', '91911009988', 'lucasf@gmail.com', '99001122334'),
('Patrícia Souza', '31900998877', 'patricia@ig.com', '10111213141'),
('Bruno Almeida', '11987654321', 'bruno.a@gmail.com', '20220220202'),
('Larissa Mendes', '21912345678', 'larissa.m@hotmail.com', '30330330303'),
('Thiago Costa', '31988887777', 'thiago.costa@yahoo.com', '40440440404'),
('Gabriela Dias', '41976543210', 'gabi.dias@uol.com.br', '50550550505'),
('Rafael Moreira', '51965432109', 'rafa.m@terra.com', '60660660606'),
('Sofia Ribeiro', '61954321098', 'sofia.r@outlook.com', '70770770707'),
('Heitor Martins', '71943210987', 'heitor.martins@globo.com', '80880880808'),
('Isabela Barros', '81932109876', 'isa.b@gmail.com', '90990990909'),
('Enzo Oliveira', '91921098765', 'enzo.o@ig.com', '12112112112'),
('Valentina Gomes', '11910987654', 'valen.gomes@gmail.com', '13113113113');


INSERT INTO Livros (isbn, titulo, detalhes, preco, genero, status) VALUES
('9788535914849', 'Dom Casmurro', 'Um clássico da literatura brasileira.', 35.90, 'Romance', 'ativo'),
('9788532511018', 'A Hora da Estrela', 'O último romance de Clarice Lispector.', 29.90, 'Ficção', 'ativo'),
('9788535902778', '1984', 'Uma distopia sobre vigilância total.', 49.90, 'Distopia', 'ativo'),
('9788532511019', 'Harry Potter e a Pedra Filosofal', 'O início da saga do bruxo.', 59.90, 'Fantasia', 'ativo'),
('9780553293357', 'Fundação', 'O início da épica saga de Asimov.', 55.00, 'Ficção Científica', 'ativo'),
('9788533613409', 'O Senhor dos Anéis: A Sociedade do Anel', 'A jornada para destruir o Um Anel.', 89.90, 'Fantasia', 'ativo'),
('9780307743657', 'O Iluminado', 'Terror psicológico em um hotel isolado.', 65.00, 'Terror', 'ativo'),
('9788501006126', 'Assassinato no Expresso do Oriente', 'Um mistério de Hercule Poirot.', 42.50, 'Romance Policial', 'ativo'),
('9788535930795', 'Sapiens: Uma Breve História da Humanidade', 'Uma análise da jornada humana.', 79.90, 'Não-Ficção', 'ativo'),
('9788535900385', 'A Rosa do Povo', 'Coletânea de poemas de Drummond.', 38.00, 'Poesia', 'ativo'),
('9788532512060', 'O Livro do Desassossego', 'Fragmentos e reflexões de Fernando Pessoa.', 51.00, 'Ficção', 'ativo'),
('9788532508018', 'Cem Anos de Solidão', 'A saga da família Buendía em Macondo.', 58.00, 'Realismo Mágico', 'ativo'),
('9780141439518', 'Orgulho e Preconceito', 'O clássico romance de Jane Austen.', 44.90, 'Romance', 'ativo'),
('9788535914627', 'O Chamado de Cthulhu', 'Contos de terror cósmico.', 49.90, 'Terror', 'ativo'),
('9788580572224', 'Sandman: Prelúdios e Noturnos', 'A premiada graphic novel de Neil Gaiman.', 75.00, 'Graphic Novel', 'ativo'),
('9788532529891', 'O Conto da Aia', 'Uma distopia sombria e influente.', 52.00, 'Distopia', 'ativo'),
('9788525056000', 'Admirável Mundo Novo', 'Outra visão clássica de um futuro distópico.', 48.00, 'Distopia', 'ativo'),
('9788576570014', 'Duna', 'O épico de ficção científica em Arrakis.', 85.00, 'Ficção Científica', 'ativo'),
('9788576570342', 'Androides Sonham com Ovelhas Elétricas?', 'A inspiração para Blade Runner.', 47.50, 'Ficção Científica', 'ativo'),
('9788576570533', 'A Mão Esquerda da Escuridão', 'Explorando gênero e sociedade em outro planeta.', 53.00, 'Ficção Científica', 'ativo');


INSERT INTO Funcionarios (nome, cargo, telefone, data_nascimento, id_departamento, salario) VALUES
('Amanda Ribeiro', 'Editora Júnior', '11998765432', '1990-05-12', 1, 4500.00),
('Carlos Pereira', 'Analista Financeiro', '21987654321', '1985-11-23', 3, 4000.00),
('Fernanda Souza', 'Analista de RH', '31976543210', '1992-03-30', 4, 4200.00),
('João Martins', 'Editor-Chefe', '41965432109', '1979-07-17', 1, 9500.00),
('Mariana Lima', 'Vendedora', '51954321098', '1995-01-22', 5, 3400.00),
('Ricardo Lopes', 'Analista de Marketing', '61943210987', '1988-12-05', 2, 4300.00),
('Paula Fernandes', 'Contadora', '71932109876', '1993-06-14', 3, 4100.00),
('Roberto Dias', 'Vendedor', '81921098765', '1991-09-09', 5, 3600.00),
('Luciana Nogueira', 'Gerente de Marketing', '91910987654', '1982-04-25', 2, 8700.00),
('Gabriel Almeida', 'Revisor', '11999887766', '1996-10-10', 1, 3450.00),
('Vinicius Moraes', 'Designer Gráfico', '11911112222', '1994-08-15', 1, 4800.00),
('Leticia Barros', 'Analista de Mídias Sociais', '21922223333', '1997-02-28', 2, 3900.00),
('Marcos Silveira', 'Diretor Financeiro', '31933334444', '1975-11-11', 3, 12000.00),
('Julia Castro', 'Recrutadora', '41944445555', '1990-06-01', 4, 4600.00),
('Andre Matos', 'Gerente de Vendas', '51955556666', '1983-09-19', 5, 8500.00),
('Beatriz Costa', 'Editora Assistente', '11966667777', '1993-01-07', 1, 5500.00),
('Danilo Fernandes', 'Assistente de Marketing', '21977778888', '1998-03-14', 2, 3100.00),
('Carla Azevedo', 'Assistente Financeiro', '31988889999', '1995-10-20', 3, 3000.00),
('Diego Santos', 'Gerente de RH', '41999990000', '1980-07-25', 4, 8200.00),
('Natalia Oliveira', 'Vendedora', '51900001111', '1996-12-30', 5, 3400.00);


INSERT INTO Pedidos (id_cliente, data_pedido, valor_total, status_pedido) VALUES
(1, '2024-03-03', 299.90, 'Enviado'),
(2, '2024-03-10', 450.00, 'Enviado'),
(3, '2024-03-12', 199.90, 'Pago'),
(4, '2024-03-18', 320.50, 'Enviado'),
(5, '2024-04-01', 870.00, 'Pendente'),
(6, '2024-04-10', 740.90, 'Cancelado'),
(7, '2024-04-15', 650.00, 'Pago'),
(8, '2024-04-18', 580.00, 'Enviado'),
(9, '2024-04-20', 900.00, 'Pago'),
(10, '2024-04-25', 1020.00, 'Enviado'),
(11, '2024-05-01', 85.00, 'Pago'),
(12, '2024-05-02', 47.50, 'Enviado'),
(13, '2024-05-03', 170.00, 'Pendente'),
(14, '2024-05-04', 53.00, 'Enviado'),
(15, '2024-05-05', 79.90, 'Pago'),
(1, '2024-05-06', 103.00, 'Enviado'),
(2, '2024-05-07', 48.00, 'Cancelado'),
(5, '2024-05-08', 49.90, 'Pago'),
(8, '2024-05-09', 89.90, 'Enviado'),
(18, '2024-05-10', 58.00, 'Pago');


INSERT INTO Itens_Pedido (id_pedido, isbn_livro, quantidade, preco_unitario) VALUES
(1, '9788535914849', 2, 35.90), -- Pedido 1 (Dom Casmurro)
(1, '9788535902778', 1, 49.90), -- Pedido 1 (1984)
(2, '9780553293357', 3, 55.00), -- Pedido 2 (Fundação)
(2, '9788532511019', 1, 59.90), -- Pedido 2 (Harry Potter)
(3, '9788533613409', 1, 89.90), -- Pedido 3 (O Senhor dos Anéis)
(4, '9780307743657', 1, 65.00), -- Pedido 4 (O Iluminado)
(5, '9788501006126', 2, 42.50), -- Pedido 5 (Expresso do Oriente)
(6, '9788535930795', 1, 79.90), -- Pedido 6 (Sapiens)
(7, '9788535900385', 3, 38.00), -- Pedido 7 (A Rosa do Povo)
(8, '9788532512060', 1, 51.00), -- Pedido 8 (Livro do Desassossego)
(9, '9788532508018', 1, 58.00), -- Pedido 9 (Cem Anos de Solidão)
(10, '9780141439518', 2, 44.90), -- Pedido 10 (Orgulho e Preconceito)
(11, '9788576570014', 1, 85.00), -- Pedido 11 (Duna)
(12, '9788576570342', 1, 47.50), -- Pedido 12 (Androides Sonham...)
(13, '9788576570014', 2, 85.00), -- Pedido 13 (Duna)
(14, '9788576570533', 1, 53.00), -- Pedido 14 (A Mão Esquerda...)
(15, '9788535930795', 1, 79.90), -- Pedido 15 (Sapiens)
(16, '9788532512060', 1, 51.00), -- Pedido 16 (Livro do Desassossego)
(16, '9788532511018', 1, 29.90), -- Pedido 16 (A Hora da Estrela)
(17, '9788525056000', 1, 48.00), -- Pedido 17 (Admirável Mundo Novo)
(18, '9788535902778', 1, 49.90), -- Pedido 18 (1984)
(19, '9788533613409', 1, 89.90), -- Pedido 19 (O Senhor dos Anéis)
(20, '9788532508018', 1, 58.00); -- Pedido 20 (Cem Anos de Solidão)


INSERT INTO Livro_Autor (isbn_livro, id_autor) VALUES
('9788535914849', 1), ('9788532511018', 2), ('9788535902778', 3), ('9788532511019', 4),
('9780553293357', 5), ('9788533613409', 6), ('9780307743657', 7), ('9788501006126', 8),
('9788535930795', 9), ('9788535900385', 10), ('9788532512060', 11), ('9788532508018', 12),
('9780141439518', 13), ('9788535914627', 14), ('9788580572224', 15), ('9788532529891', 16),
('9788525056000', 17), ('9788576570014', 18), ('9788576570342', 19), ('9788576570533', 20),

('9788580572224', 7), -- Sandman (Gaiman) co-autor (King)
('9780553293357', 19), -- Fundação (Asimov) co-autor (Dick)
('9788535902778', 17), -- 1984 (Orwell) co-autor (Huxley)
('9788533613409', 15), -- SdA (Tolkien) co-autor (Gaiman)
('9780307743657', 14); -- O Iluminado (King) co-autor (Lovecraft)

