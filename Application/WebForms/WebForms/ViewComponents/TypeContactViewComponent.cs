using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebForms.Business.Constants;
using WebForms.Models;

namespace WebForms.ViewComponents
{
    public class TypeContactViewComponent: ViewComponent
    {
        private readonly Models.dbWebFormContext _db;

        public TypeContactViewComponent(Models.dbWebFormContext db)
        {
            _db = db;
        }

        public IViewComponentResult Invoke()
        {
            var typeContact = new List<TypeContact>();

            try
            {
                typeContact = _db.TypeContact.ToList();
            }
            catch (Exception ex)
            {

                ModelState.AddModelError("", RestrictionConstants.Error + ex.Message);
            }

            return View(typeContact);
        }
    }
}
