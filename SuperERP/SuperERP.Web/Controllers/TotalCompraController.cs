using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SuperERP.Financeiro.DTO;
using SuperERP.Financeiro.Service;

namespace SuperERP.Web.Controllers
{
    public class TotalCompraController : Controller
    {
        //
        // GET: /TotalCompra/
        public ActionResult Index()
        {
            return View(ViewTotalCompraService.Listar());
        }

        public ActionResult Incluir()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Incluir(View_Total_CompraDTO usuario)
        {
            ViewTotalCompraService.Cadastrar(usuario);
            return RedirectToAction("Index");
        }

        public ActionResult Alterar(int View_Total_CompraId)
        {
            return View(Compras.Service.UsuarioService.BuscaPorId(View_Total_CompraId));
        }

        [HttpPost]
        public ActionResult Alterar(View_Total_CompraDTO View_Total_CompraId)
        {
            ViewTotalCompraService.Alterar(View_Total_CompraId);
            return View();
        }

        public ActionResult Excluir(int View_Total_CompraId)
        {
            return View(ViewTotalCompraService.BuscaPorId(View_Total_CompraId));
        }

        [HttpPost]
        public ActionResult Excluir(View_Total_CompraDTO View_Total_Compra)
        {
            ViewTotalCompraService.Deletar(View_Total_Compra.compraDTO);
            return View();
        }
	}
}