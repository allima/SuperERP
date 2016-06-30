using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace SuperERP.DAL.Repositories
{
   public class RepositorioCookies
    {
        public static void RegitraCookie(long IDUsuario)
        {
            HttpCookie UserCookie = new HttpCookie("CookieUsuario");
            UserCookie.Values["IDUsuario"] = IDUsuario.ToString();
            UserCookie.Expires = DateTime.Now.AddDays(1);
            HttpContext.Current.Response.Cookies.Add(UserCookie);
        }
    }
}
