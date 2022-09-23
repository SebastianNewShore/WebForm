using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace WebForms.Models
{
    public partial class Employees
    {
        public int EmpNo { get; set; }

        [Required(ErrorMessage = "La fecha de nacimiento es obligatoria")]
        [Display(Name = "Fecha de Nacimiento:*")]
        [DataType(DataType.Date)]
        public DateTime BirthDate { get; set; }

        [Required(ErrorMessage = "El nombre es obligatorio")]
        [Display(Name = "Nombre:*")]
        [StringLength(15, ErrorMessage = "El {0} debe ser de al menos {2} y maximo {1} caracteres", MinimumLength = 5)]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "El apellido es obligatorio")]
        [Display(Name = "Apellido:*")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "El genero es obligatorio")]
        [Display(Name = "Genero:*")]
        public byte Gender { get; set; }

        [DataType(DataType.Date)]
        public DateTime HireDate { get; set; }

        [Required(ErrorMessage = "El código es obligatorio")]
        [Display(Name = "Código de Cliente:")]
        public string CodeEmp { get; set; }

        [Required(ErrorMessage = "El usuario es obligatorio")]
        [Display(Name = "Usuario:*")]
        [StringLength(6, ErrorMessage = "El {0} debe ser de {2} caracteres", MinimumLength = 6)]
        public string UserEmp { get; set; }

        [Required(ErrorMessage = "El número de celular es obligatorio")]
        [Display(Name = "Número celular:*")]
        [StringLength(10, ErrorMessage = "El {0} debe ser de {2} caracteres", MinimumLength = 10)]
        public string Cellphone { get; set; }

        [Required(ErrorMessage = "El número de telefono es obligatorio")]
        [Display(Name = "Telefono:*")]
        public string Telephone { get; set; }

        [Required(ErrorMessage = "El apellido es obligatorio")]
        [Display(Name = "Correo Electrónico:*")]
        public string Email { get; set; }

        [Display(Name = "Autorizado para acceder a WebStore")]
        public bool AuthorizedStore { get; set; }

        [Display(Name = "Autorizado para crear ordenes")]
        public bool AuthorizedOrders { get; set; }

        [Display(Name = "¿Desea que se envié la información de acceso al usuario?")]
        public bool MailUserAccess { get; set; }

        [Display(Name = "Tipo de contacto:*")]
        public int TypeContactId { get; set; }

        [Display(Name = "Cargo:*")]
        public int PositionId { get; set; }

        [Display(Name = "Contraseña:*")]
        [StringLength(8,ErrorMessage = "La {0} debe ser de {2} caracteres",MinimumLength = 8)]
        public string Password { get; set; }

        public virtual Positions Position { get; set; }
        public virtual TypeContact TypeContact { get; set; }
    }
}
