//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Aluno
    {
        public Aluno()
        {
            this.Aluno_Materia = new HashSet<Aluno_Materia>();
            this.Telefone = new HashSet<Telefone>();
        }
    
        public int AlunoID { get; set; }
        public string AlunoNome { get; set; }
        public int AssuntoID { get; set; }
        public int DepartamentoID { get; set; }
        public Nullable<int> EnderecoID { get; set; }
    
        public virtual assunto assunto { get; set; }
        public virtual departamento departamento { get; set; }
        public virtual Endereco Endereco { get; set; }
        public virtual ICollection<Aluno_Materia> Aluno_Materia { get; set; }
        public virtual ICollection<Telefone> Telefone { get; set; }
    }
}
