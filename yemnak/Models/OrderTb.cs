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
    
    public partial class OrderTb
    {
        public int OrderId { get; set; }
        public string OrderTitle { get; set; }
        public Nullable<int> CardId { get; set; }
        public string CardName { get; set; }
        public string CardPhone { get; set; }
        public string CivilID { get; set; }
        public Nullable<bool> Succeded { get; set; }
        public Nullable<bool> Pending { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
    }
}
