using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BirdTouch_ServerV2.Models
{
    public class User
    {

        public int Id { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string DateOfBirth { get; set; }
        public string Adress { get; set; }

        public byte[] ProfilPictureData { get; set; }

        public string FbLink { get; set; }

        public string TwitterLink { get; set; }

        public string GPlusLink { get; set; }

        public string LinkedInLink { get; set; }

    }
}