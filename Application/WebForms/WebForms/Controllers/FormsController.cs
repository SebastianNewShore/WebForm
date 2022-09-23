using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

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
    }
}
