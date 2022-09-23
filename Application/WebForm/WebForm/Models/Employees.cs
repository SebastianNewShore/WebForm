using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace WebForm.Models
{
    public partial class Employees
    {
        public int EmpNo { get; set; }
        public DateTime BirthDate { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public byte Gender { get; set; }
        public DateTime HireDate { get; set; }
        public string CodeEmp { get; set; }
        public string UserEmp { get; set; }
        public string Cellphone { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public bool AuthorizedStore { get; set; }
        public bool AuthorizedOrders { get; set; }
        public bool MailUserAccess { get; set; }
        public int TypeContactId { get; set; }
        public int PositionId { get; set; }

        public virtual Positions Position { get; set; }
        public virtual TypeContact TypeContact { get; set; }
    }
}
