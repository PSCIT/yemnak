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
    
    public partial class PrestigeTb
    {
        public int CardId { get; set; }
        public string HolderName { get; set; }
        public string HolderPhone { get; set; }
        public string HolderEmail { get; set; }
        public string Address { get; set; }
        public string CivilId { get; set; }
        public Nullable<System.DateTime> BOD { get; set; }
        public Nullable<bool> IsValid { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public string HolderGender { get; set; }
        public string PartnerName { get; set; }
        public string PartnerPhone { get; set; }
        public string PartnerEmail { get; set; }
        public string PartnerCivilID { get; set; }
        public Nullable<System.DateTime> PartnerBOD { get; set; }
    }
}
