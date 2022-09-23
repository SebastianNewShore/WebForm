using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebForms.Business.Constants;
using WebForms.Models;

namespace WebForms.ViewComponents
{
    public class PositionViewComponent: ViewComponent
    {
        private readonly Models.dbWebFormContext _db;

        public PositionViewComponent(Models.dbWebFormContext db)
        {
            _db = db;
        }

        public IViewComponentResult Invoke()
        {
            var position = new List<Positions>();

            try
            {
                position = _db.Positions.ToList();
            }
            catch (Exception ex)
            {

                ModelState.AddModelError("", RestrictionConstants.Error + ex.Message);
            }

            return View(position);
        }
    }
}
