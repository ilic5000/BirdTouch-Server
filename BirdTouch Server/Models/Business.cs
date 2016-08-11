﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BirdTouch_Server.Models
{
    public class Business
    {
        public int IdBusinessOwner { get; set; }
        public string CompanyName { get; set; }
        public string Email { get; set; }

        public string PhoneNumber { get; set; }

        public string Website { get; set; }
        public string Adress { get; set; }
        public byte[] ProfilePictureData { get; set; }
    }
}