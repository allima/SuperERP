using SuperERP.Vendas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SuperERP.Web.Controllers
{
    public class CategoriaController : Controller
    {
        public ActionResult Index()
        {
            return View(Compras.Service.CategoriaService.Listar());
        }

        //
        // GET: /Categoria/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Categoria/Create
        [HttpPost]
        public ActionResult Create(CategoriaDTO categoriaDTO)
        {
            try
            {
                Compras.Service.CategoriaService.Cadastrar(categoriaDTO);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Categoria/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Categoria/Edit/5
        [HttpPost]
        public ActionResult Edit(CategoriaDTO categoriaDTO)
        {
            try
            {
                Compras.Service.CategoriaService.Alterar(categoriaDTO);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Categoria/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Categoria/Delete/5
        [HttpPost]
        public ActionResult Delete(CategoriaDTO categoriaDTO)
        {
            try
            {
                Compras.Service.CategoriaService.Deletar(categoriaDTO.ID);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
