﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SprintWebCS.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class cursomvcEntities : DbContext
    {
        public cursomvcEntities()
            : base("name=cursomvcEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Aluno> Aluno { get; set; }
        public virtual DbSet<Aluno_Materia> Aluno_Materia { get; set; }
        public virtual DbSet<assunto> assunto { get; set; }
        public virtual DbSet<Autor> Autor { get; set; }
        public virtual DbSet<departamento> departamento { get; set; }
        public virtual DbSet<Endereco> Endereco { get; set; }
        public virtual DbSet<materia> materia { get; set; }
        public virtual DbSet<Referencia> Referencia { get; set; }
        public virtual DbSet<ReferenciaAutor> ReferenciaAutor { get; set; }
        public virtual DbSet<Telefone> Telefone { get; set; }
    }
}