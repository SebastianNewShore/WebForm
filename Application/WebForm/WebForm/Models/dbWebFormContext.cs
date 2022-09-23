using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace WebForm.Models
{
    public partial class dbWebFormContext : DbContext
    {
        public dbWebFormContext()
        {
        }

        public dbWebFormContext(DbContextOptions<dbWebFormContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Departments> Departments { get; set; }
        public virtual DbSet<DeptEmp> DeptEmp { get; set; }
        public virtual DbSet<DeptManager> DeptManager { get; set; }
        public virtual DbSet<Employees> Employees { get; set; }
        public virtual DbSet<Positions> Positions { get; set; }
        public virtual DbSet<Salaries> Salaries { get; set; }
        public virtual DbSet<Titles> Titles { get; set; }
        public virtual DbSet<TypeContact> TypeContact { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                //optionsBuilder.UseSqlServer();
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Departments>(entity =>
            {
                entity.HasKey(e => e.DeptNo);

                entity.ToTable("departments");

                entity.Property(e => e.DeptNo)
                    .HasColumnName("dept_no")
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.DeptName)
                    .IsRequired()
                    .HasColumnName("dept_name")
                    .HasMaxLength(40)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<DeptEmp>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("dept_emp");

                entity.Property(e => e.DeptNo)
                    .IsRequired()
                    .HasColumnName("dept_no")
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.EmpNo).HasColumnName("emp_no");

                entity.Property(e => e.FromDate)
                    .HasColumnName("from_date")
                    .HasColumnType("date");

                entity.Property(e => e.ToDate)
                    .HasColumnName("to_date")
                    .HasColumnType("date");

                entity.HasOne(d => d.DeptNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.DeptNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_dept_emp_departments");

                entity.HasOne(d => d.EmpNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.EmpNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_dept_emp_employees");
            });

            modelBuilder.Entity<DeptManager>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("dept_manager");

                entity.Property(e => e.DeptNo)
                    .IsRequired()
                    .HasColumnName("dept_no")
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.EmpNo).HasColumnName("emp_no");

                entity.Property(e => e.FromDate)
                    .HasColumnName("from_date")
                    .HasColumnType("date");

                entity.Property(e => e.ToDate)
                    .HasColumnName("to_date")
                    .HasColumnType("date");

                entity.HasOne(d => d.DeptNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.DeptNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_dept_manager_departments");

                entity.HasOne(d => d.EmpNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.EmpNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_dept_manager_employees");
            });

            modelBuilder.Entity<Employees>(entity =>
            {
                entity.HasKey(e => e.EmpNo);

                entity.ToTable("employees");

                entity.Property(e => e.EmpNo).HasColumnName("emp_no");

                entity.Property(e => e.AuthorizedOrders).HasColumnName("authorized_orders");

                entity.Property(e => e.AuthorizedStore).HasColumnName("authorized_store");

                entity.Property(e => e.BirthDate)
                    .HasColumnName("birth_date")
                    .HasColumnType("date");

                entity.Property(e => e.Cellphone)
                    .IsRequired()
                    .HasColumnName("cellphone")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.CodeEmp)
                    .IsRequired()
                    .HasColumnName("code_emp")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasColumnName("email")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .IsRequired()
                    .HasColumnName("first_name")
                    .HasMaxLength(14)
                    .IsUnicode(false);

                entity.Property(e => e.Gender).HasColumnName("gender");

                entity.Property(e => e.HireDate)
                    .HasColumnName("hire_date")
                    .HasColumnType("date");

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasColumnName("last_name")
                    .HasMaxLength(14)
                    .IsUnicode(false);

                entity.Property(e => e.MailUserAccess).HasColumnName("mail_user_access");

                entity.Property(e => e.PositionId).HasColumnName("position_id");

                entity.Property(e => e.Telephone)
                    .IsRequired()
                    .HasColumnName("telephone")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.TypeContactId).HasColumnName("type_contact_id");

                entity.Property(e => e.UserEmp)
                    .IsRequired()
                    .HasColumnName("user_emp")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.Position)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.PositionId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_employees_positions");

                entity.HasOne(d => d.TypeContact)
                    .WithMany(p => p.Employees)
                    .HasForeignKey(d => d.TypeContactId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_employees_typeContact");
            });

            modelBuilder.Entity<Positions>(entity =>
            {
                entity.HasKey(e => e.PositionId);

                entity.ToTable("positions");

                entity.Property(e => e.PositionId).HasColumnName("position_Id");

                entity.Property(e => e.PositionName)
                    .IsRequired()
                    .HasColumnName("position_name")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Salaries>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("salaries");

                entity.Property(e => e.EmpNo).HasColumnName("emp_no");

                entity.Property(e => e.FromDate)
                    .HasColumnName("from_date")
                    .HasColumnType("date");

                entity.Property(e => e.Salary).HasColumnName("salary");

                entity.Property(e => e.ToDate)
                    .HasColumnName("to_date")
                    .HasColumnType("date");

                entity.HasOne(d => d.EmpNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.EmpNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_salaries_employees");
            });

            modelBuilder.Entity<Titles>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("titles");

                entity.Property(e => e.EmpNo).HasColumnName("emp_no");

                entity.Property(e => e.FromDate)
                    .HasColumnName("from_date")
                    .HasColumnType("date");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasColumnName("title")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.ToDate)
                    .HasColumnName("to_date")
                    .HasColumnType("date");

                entity.HasOne(d => d.EmpNoNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.EmpNo)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_titles_employees");
            });

            modelBuilder.Entity<TypeContact>(entity =>
            {
                entity.ToTable("typeContact");

                entity.Property(e => e.TypeContactId).HasColumnName("type_contact_id");

                entity.Property(e => e.TypeContactName)
                    .IsRequired()
                    .HasColumnName("type_contact_name")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
