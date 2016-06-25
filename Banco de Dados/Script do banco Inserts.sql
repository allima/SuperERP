INSERT INTO Empresa (Nome,CNPJ,RazaoSocial,CEP,Endereco,Numero,Complemento,Bairro,Cidade)
 VALUES ('SuperERP','19718519000138','SuperERP','07179486','Rua Alagoas','947','Nova Ponte Alta','São Paulo','São Paulo')
GO



/****** Script for SelectTopNRows command from SSMS  ******/
INSERT INTO Empresa ( Nome, CNPJ, RazaoSocial)
VALUES ('CocaCola Company','06478965','Coca-Cola Comércio');

INSERT INTO Perfil ( Nome)
VALUES ('administrador');

INSERT INTO Usuario ( ID_Perfil, ID_Empresa, Nome, Email, Senha)
VALUES (1,3,'Ricardo dos Santos Almeida','ricsantos@gmail.com','oWCmO9O8');

select * from Usuario;
select * from Empresa;

INSERT INTO Categoria( CategoriaTipo, Nome)
VALUES ( 1 ,'Bebidas');

select * from Categoria;

INSERT INTO Ncm ( Codico )
VALUES ('cavalo');

select * from Ncm;

INSERT INTO Unidade_Medida ( Nome )
VALUES ('Metros');

select * from Unidade_Medida;

INSERT INTO Produto ( ID_Empresa, ID_Categoria, ID_Ncm, ID_Unidade_Medida, ICMS, IPI, IVA, ST, PIS, COFINS, Nome,
Codigo_Cliente, Codigo_Barras, Valor_Venda, Estoque, EstoqueMax, EstoqueMin, Peso_Liquido, Peso_Bruto, ean)
VALUES (3, 1, 1, 1, 0.05, 0.03, 0.00, 0.01, 0.06, 0.02, 'Coca 2 Lts', 56, 001254687, 8.99, 30, 100, 10, 2.20, 2.50, 'naosei' );

select * from Produto

INSERT INTO PessoaFisica( ID_Empresa, Nome, CPF, RG)
VALUES (3, 'Vanilton Alves de Oliveira', '3214654', '8948915');

select * from PessoaFisica

INSERT INTO PessoaJuridica(ID_Empresa, Nome, CNPJ, RazaoSocial)
VALUES (3, 'Carlos Silva ', '254687', 'BebidasMil LTDA')

select * from PessoaJuridica

INSERT INTO ClienteFornecedor(ID_PJ, ID_PF, Tipo)
VALUES (1, 1, 3);

select * from ClienteFornecedor

INSERT INTO Status_Venda( Nome)
VALUES ('Matarazzo dos Anjos' );

select * from Status_Venda;

INSERT INTO Forma_Pgto(Nome)
VALUES ('Cartao de Debito' );

select * from Forma_Pgto;

INSERT INTO DadosBancarios (Banco, Conta_Corrente, Agencia, ID_PessoaJuridica, ID_PessoaFisica, ID_Empresa)
VALUES ('Itau', '621654', '2541', 1, 1 ,3);

select * from DadosBancarios;


INSERT INTO Compra ( ID_Empresa, ID_Fornecedor, ID_Usuario, ID_Status, Compra_Num, Data_Compra, Desconto, ID_FormaPgto,
Observacoes, ID_conta)
VALUES (3, 1, 3, 1, 10, '01/02/1999', 0.2, 1, 'espaco descricao e obs', 1);

select * from Compra

INSERT INTO Compra_Ativos ( ID_Compra, ID_Produto, Imposto, Detalhes, Quantidade)
VALUES (3, 3, 0.08, 'Detalhes', 10);

select * from Compra_Ativos
