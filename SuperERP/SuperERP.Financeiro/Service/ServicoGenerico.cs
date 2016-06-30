using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using SuperERP.Financeiro.Config;

namespace SuperERP.Financeiro.Service
{
    static class ServicoGenerico<T, TDTO> where T : class
    {
        public static void Cadastrar(TDTO entidade)
        {
            AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var novaEntidade = Mapper.Map<TDTO, T>(entidade);
            repositorio.Cadastrar(novaEntidade);
        }
        public static void Alterar(TDTO entidade)
        {
            AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var novaEntidade = Mapper.Map<TDTO, T>(entidade);
            repositorio.Alterar(novaEntidade);
        }
        public static ICollection<TDTO> Listar()
        {
            AutoMapperConfig.Inicializar();
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var listaEntidadeDTO = repositorio.ObterLista();
            var estoqueDTO = Mapper.Map<ICollection<T>, ICollection<TDTO>>(listaEntidadeDTO);
            return estoqueDTO;
        }
        public static void Deletar(int IdEntidade)
        {
            var repositorio = new DAL.Repositories.Repositorio<T>();
            repositorio.Deletar(IdEntidade);
        }

        public static TDTO BuscaPorId(int IdEntidade)
        {
            var repositorio = new DAL.Repositories.Repositorio<T>();
            var entidade = repositorio.ObterPorEntidadePorId(IdEntidade);
            var entidadeDTO = Mapper.Map<T, TDTO>(entidade);
            return entidadeDTO;
        }
    }
}
