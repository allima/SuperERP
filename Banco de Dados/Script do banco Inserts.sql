INSERT INTO Empresa ( Nome, CNPJ, RazaoSocial)
VALUES ('Empresa X','CNPJ 90283','Razao Social da Empresa');

INSERT INTO Perfil ( Nome)
VALUES ('administrador');

INSERT INTO Usuario ( ID_Perfil, ID_Empresa, Nome, Email, Senha)
VALUES (1,1,'Nome do Usuário','emailuser@dominio.com','admin');

INSERT INTO Usuario ( ID_Perfil, ID_Empresa, Nome, Email, Senha)
VALUES (2,2,'Nome do Usuário2','emailuser@dominio.com','admin');

INSERT INTO Usuario ( ID_Perfil, ID_Empresa, Nome, Email, Senha)
VALUES (3,3,'Nome do Usuário3','emailuser@dominio.com','admin');

select * from Usuario;
select * from Empresa;

INSERT INTO Categoria( CategoriaTipo, Nome)
VALUES ( 1 ,'Nome da Categoria');

select * from Categoria;

INSERT INTO Ncm ( Codico )
VALUES ('codico nao sei');

select * from Ncm;

INSERT INTO Unidade_Medida ( Nome )
VALUES ('Unidade de Medida 1');

select * from Unidade_Medida;

INSERT INTO Produto ( ID_Empresa, ID_Categoria, ID_Ncm, ID_Unidade_Medida, ICMS, IPI, IVA, ST, PIS, COFINS, Nome,
Codigo_Cliente, Codigo_Barras, Valor_Venda, Estoque, EstoqueMax, EstoqueMin, Peso_Liquido, Peso_Bruto, ean)
VALUES (1, 1, 1, 1, 0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 'Produto 1', 56, 001254687, 8.99, 30, 100, 10, 2.20, 2.50, 'nao sei' );

select * from Produto

INSERT INTO PessoaFisica( ID_Empresa, Nome, CPF, RG)
VALUES (1, 'Nome da Pessoa Fisica', 'CPF 3214654', 'RG 8948915');

select * from PessoaFisica

INSERT INTO PessoaJuridica(ID_Empresa, Nome, CNPJ, RazaoSocial)
VALUES (1, 'Nome da Pessoa Juridica', 'CNPJ 254687', 'Razao Social PJ')

select * from PessoaJuridica

INSERT INTO ClienteFornecedor(ID_PJ, ID_PF, Tipo)
VALUES (1, 1, 1);

select * from ClienteFornecedor

INSERT INTO Status_Venda( Nome)
VALUES ('Ativo' );

select * from Status_Venda;

INSERT INTO Status_Servico( Nome)
VALUES ('Ativo' );

select * from Status_Servico;

INSERT INTO Status_Venda( Nome)
VALUES ('Inativo' );

select * from Status_Venda;

INSERT INTO Status_Servico( Nome)
VALUES ('inativo' );

select * from Status_Servico;

INSERT INTO Forma_Pgto(Nome)
VALUES ('Cartao de Debito' );

select * from Forma_Pgto;

INSERT INTO Forma_Pgto(Nome)
VALUES ('Cartao de Crédito' );

select * from Forma_Pgto;

INSERT INTO Forma_Pgto(Nome)
VALUES ('Boleto' );

select * from Forma_Pgto;

INSERT INTO DadosBancarios (Banco, Conta_Corrente, Agencia, ID_PessoaJuridica, ID_PessoaFisica, ID_Empresa)
VALUES ('Itau', '621654', '2541', 1, 1 ,1);

select * from DadosBancarios;

INSERT INTO Compra (ID_Empresa, ID_Fornecedor, ID_Usuario, ID_Status, Compra_Num, Data_Compra, Desconto, ID_FormaPgto,
Observacoes, ID_conta)
VALUES (1, 1, 1, 1, 1, '01/02/1999', 0.1, 1, 'espaco descricao e obs', 1);

select * from Compra

INSERT INTO Compra_Ativos ( ID_Compra, ID_Produto, Imposto, Detalhes, Quantidade)
VALUES (3, 3, 0.08, 'Detalhes', 10);

select * from Compra_Ativos

INSERT INTO Contato ( Nome, ID_PessoaJuridica, ID_PessoaFisica, Email, Fone, Cargo)
VALUES ('Nome do Contato', 1, 1, 'emailcontato@dominio.com', 'tel 55874889' , 'nome cargo');

select * from Contato

INSERT INTO Periodicidade ( c, Meses)
VALUES ('nao sei o que ser', 3);

select * from Periodicidade

INSERT INTO Venda ( ID_Empresa, ID_Usuario, ID_Cliente, ID_Orcamento, ID_Status, ID_conta, ID_FormaPgto,
Venda_Num,Data_Venda, Contrato, Desconto, Observacoes )
VALUES (1, 1, 1, 1, 1, 1, 1, 1, '01/08/1999', 1, 0.1,'observacoes aqui');

select * from Venda

INSERT INTO Contrato_Venda ( ID_Periodicidade, ID_Venda, Dia_Cobranca, Data_Inicio, Data_Fim, Juros, Ocorrencias)
VALUES (1, 1, 1,'01/08/1999', '01/08/2000', 0.1, 1);

select * from Contrato_Venda

INSERT INTO Endereco ( CEP, ID_PessoaJuridica, ID_PessoaFisica, ID_Empresa, Endereco, Numero, Complemento, Bairro,
Cidade)
VALUES ('CEP 5463', 1, 1, 1, 'Endereco completo', 'N10', 'Casa 10', 'Bairro aqui', 'Cidade aqui');

select * from Endereco

INSERT INTO Funcionalidades ( Nome, Descricao)
VALUES ('Funcionalidade X', 'Detalhes da Funcionalidade X');

select * from Funcionalidades

INSERT INTO Funcionalidades_Perfil ( ID_Funcionalidades, ID_Perfil)
VALUES (1, 2);

select * from Funcionalidades_Perfil

INSERT INTO Funcionalidades_Perfil ( ID_Funcionalidades, ID_Perfil)
VALUES (2, 2);

select * from Funcionalidades_Perfil

INSERT INTO Funcionalidades_Perfil ( ID_Funcionalidades, ID_Perfil)
VALUES (1, 3);

select * from Funcionalidades_Perfil

INSERT INTO Servico ( ID_Empresa, ID_Categoria_Servico, Nome, ISS, ICMS, 
IVA, ST, PIS, COFINS, valor, custo)
VALUES (1, 1, 'Servico 1', 0.1, 0.2,0.3,0.4,0.5,0.6,100.55,95.3);

select * from Servico

INSERT INTO Ordem_Servico ( Nome, ID_Servico, ID_Status, Numero_Os, DataI_Inicio,DataI_Entrega)
VALUES ('Nome da Ordem', 1, 1, '89454', '10/10/1999','10/12/1999');

select * from Ordem_Servico

INSERT INTO Parcelamento ( ID_Compra, ID_Venda, Numero_Parcela, Valor, Pago, Data_Pagamento,
Data_Pago)
VALUES (1, 1, 1, 9.1, 10.3, '01/02/1999', '01/02/1999');

select * from Parcelamento

INSERT INTO ProdutoFornecedor ( ID_Produto, ID_Fornecedor, Valor_Custo)
VALUES (1, 1, 0.9);

select * from ProdutoFornecedor

INSERT INTO Venda_Ativos ( ID_Venda, ID_Produto, ID_Servico, ID_Compra, Imposto, Detalhes, Quantidade)
VALUES (1, 1, 1, 1, 0.15, 'Detalhes ativo', 3);

select * from Venda_Ativos
