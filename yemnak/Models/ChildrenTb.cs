//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace yemnak.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChildrenTb
    {
        public int ChildId { get; set; }
        public int ParentCardID { get; set; }
        public string ChildName { get; set; }
        public string ChildCivilId { get; set; }
        public Nullable<System.DateTime> ChildBOD { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    }
}
