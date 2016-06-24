create view View_Total_Compra AS
select Sum(prod.Valor_Venda * iten.Quantidade )as total,compra.ID as id_compra from Compra compra 
join 
Compra_Ativos iten on iten.ID_Compra=compra.ID
join Produto prod on iten.ID_Produto = prod.ID  group by compra.ID;
