using SuperERP.DAL.Context;
using SuperERP.DAL.Repositories;
using SuperERP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace SuperERP.Compras.Repository
{
    class UsuarioRepository
    {
        ////private SuperERPContext db = new SuperERPContext();
        //public static bool AutenticarUsuario(string Login, string Senha)
        //{
        //    try
        //    {
        //       // SuperERPContext db = new SuperERPContext();
        //       // RestauranteBDEntities db = new RestauranteBDEntities();
        //        var QueryAutencaUsuario = db.Usuarios.Where(x => x.Email == Login &&
        //         x.Senha == Senha).SingleOrDefault();
        //        if (QueryAutencaUsuario == null)
        //        {
        //            return false;

        //        }
        //        else
        //        {
        //            RepositorioCookies.RegitraCookie(QueryAutencaUsuario.ID);
        //            return true;
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        return false;
        //    }
        //}

        //public static Usuario RecuperaUsuario(long IDUsuario)
        //{
        //    try
        //    {
        //        DAL.Context.SuperERPContext db = new SuperERPContext();
        //        var usuario = db.Usuarios.Where(u => u.ID== IDUsuario).SingleOrDefault();
        //        return usuario;
        //    }
        //    catch (Exception)
        //    {
        //        return null;
        //    }
        //}

        //public static Models.Usuario VerificaStatusUsuario()
        //{
        //    var usuario = HttpContext.Current.Request.Cookies["CookieUsuario"];
        //    if (usuario == null)
        //    {
        //        return null;
        //    }
        //    else
        //    {
        //        long IDUsuario = Convert.ToInt64(usuario.Values["IDUsuario"]);
        //        var usuarioRetornado = RecuperaUsuario(IDUsuario);
        //        return usuarioRetornado;
        //    }
        //}
        public static void criar()
        {

        }

        public static void alterar()
        {
            
        }

        public static void excluir()
        {
            
        }
     
    }
}
