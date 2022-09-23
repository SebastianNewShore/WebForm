using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebForms.Business.Constants;
using WebForms.Models;

namespace WebForms.Controllers
{
    public class FormsController : Controller
    {
        private readonly Models.dbWebFormContext _db;

        public FormsController(Models.dbWebFormContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            return View();
        }

        //Http Post Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(Employees employees)
        {
            try
            {
                employees.Cellphone = RestrictionConstants.codeCountryCol + employees.Cellphone;
                if (ModelState.IsValid)
                {
                    employees.HireDate = DateTime.Now;
                    TempData["Message"] = "El empleado se ha creado correctamente";


                        if (SaveDatabase(employees,new Salaries()))
                        {
                            TempData["Message"] = "El empleado se ha creado correctamente";
                        }
                        else
                            TempData["MessageError"] = "Se presento un error durante el almacenamiento de datos, por favor intente de nuevo";
                        return RedirectToAction("Index");
                    
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", RestrictionConstants.Error + ex.Message);
            }

            return View();
        }

        private bool SaveDatabase(Employees employees,Salaries salary)
        {
            try
            {
                _db.Employees.Add(employees);
                salary.EmpNoNavigation = employees;
                _db.Salaries.Add(salary);
                    //employees.IdCollaboratorNavigation = collaborator;
                    //_db.TbCollaboratorPositions.Add(position);
                

                //_db.SaveChanges();

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
