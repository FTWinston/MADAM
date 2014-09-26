//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Field
    {
        public Field()
        {
            this.FieldValues_Date = new HashSet<FieldValues_Date>();
            this.FieldValues_Int = new HashSet<FieldValues_Int>();
            this.FieldValues_Money = new HashSet<FieldValues_Money>();
            this.FieldValues_FK = new HashSet<FieldValues_FK>();
            this.FieldValues_StringLong = new HashSet<FieldValues_StringLong>();
            this.FieldValues_StringShort = new HashSet<FieldValues_StringShort>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public int ThingTypeID { get; set; }
        public int SortOrder { get; set; }
        public int FieldTypeID { get; set; }
        public int MinValues { get; set; }
        public Nullable<int> MaxValues { get; set; }
    
        public virtual FieldType FieldType { get; set; }
        public virtual ThingType ThingType { get; set; }
        public virtual ICollection<FieldValues_Date> FieldValues_Date { get; set; }
        public virtual ICollection<FieldValues_Int> FieldValues_Int { get; set; }
        public virtual ICollection<FieldValues_Money> FieldValues_Money { get; set; }
        public virtual ICollection<FieldValues_FK> FieldValues_FK { get; set; }
        public virtual ICollection<FieldValues_StringLong> FieldValues_StringLong { get; set; }
        public virtual ICollection<FieldValues_StringShort> FieldValues_StringShort { get; set; }
    }
}
