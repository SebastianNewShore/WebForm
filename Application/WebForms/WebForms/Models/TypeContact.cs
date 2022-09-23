using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace WebForms.Models
{
    public partial class TypeContact
    {
        public TypeContact()
        {
            Employees = new HashSet<Employees>();
        }

        public int TypeContactId { get; set; }
        public string TypeContactName { get; set; }

        public virtual ICollection<Employees> Employees { get; set; }
    }
}
