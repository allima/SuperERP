using SuperERP.Financeiro.DTO;
using SuperERP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.Financeiro.Service
{
   public class ViewTotalCompraService
    {
        public static void Cadastrar(View_Total_CompraDTO usuario)
        {
            ServicoGenerico<View_Total_Compra, View_Total_CompraDTO>.Cadastrar(usuario);

        }
        public static void Alterar(View_Total_CompraDTO usuario)
        {
            ServicoGenerico<View_Total_Compra, View_Total_CompraDTO>.Alterar(usuario);
        }
        public static ICollection<View_Total_CompraDTO> Listar()
        {
            return ServicoGenerico<View_Total_Compra, View_Total_CompraDTO>.Listar();
        }
        public static void Deletar(int IdUsuario)
        {
            ServicoGenerico<View_Total_Compra, View_Total_CompraDTO>.Deletar(IdUsuario);
        }
        public static View_Total_CompraDTO BuscaPorId(int IdUsuario)
        {
            return ServicoGenerico<View_Total_Compra, View_Total_CompraDTO>.BuscaPorId(IdUsuario);
        }
    }
}
