﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MADAM.Core.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MADAM_Entities : DbContext
    {
        public MADAM_Entities()
            : base("name=MADAM_Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Field> Fields { get; set; }
        public DbSet<FieldType> FieldTypes { get; set; }
        public DbSet<FieldValues_Date> FieldValues_Date { get; set; }
        public DbSet<FieldValues_Int> FieldValues_Int { get; set; }
        public DbSet<FieldValues_Money> FieldValues_Money { get; set; }
        public DbSet<Thing> Things { get; set; }
        public DbSet<ThingType> ThingTypes { get; set; }
        public DbSet<FieldValues_FK> FieldValues_FK { get; set; }
        public DbSet<FieldValues_StringLong> FieldValues_StringLong { get; set; }
        public DbSet<FieldValues_StringShort> FieldValues_StringShort { get; set; }
    }
}
