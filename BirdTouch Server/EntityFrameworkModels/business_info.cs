//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BirdTouch_Server.EntityFrameworkModels
{
    using System;
    using System.Collections.Generic;
    
    public partial class business_info
    {
        public int id_business_owner { get; set; }
        public string companyname { get; set; }
        public string email { get; set; }
        public string phonenumber { get; set; }
        public string website { get; set; }
        public string adress { get; set; }
        public byte[] profilepicturedata { get; set; }
    }
}