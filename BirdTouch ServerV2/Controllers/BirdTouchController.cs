using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BirdTouch_ServerV2.Controllers
{
    //public class BirdTouchController : ApiController
    //{
    //    [HttpGet] //id2 mora jer vec posotji id u projektu, ne pitajte kako sam naso taj bug
    //    [Route("rest/changeUserPrivateInfo/{id2}/{firstname2?}/{lastname2?}/{email2?}/{phone2?}/{adress2?}/{dateofbirth2?}/{fblink2?}/{twitterlink2?}/{gpluslink2?}/{linkedin2?}")]
    //    public IHttpActionResult changeUserPrivateInfo(int id2, String firstname2 = null, String lastname2 = null, String email2 = null, String phone2 = null, String adress2 = null, String dateofbirth2 = null, String fblink2 = null, String twitterlink2 = null, String gpluslink2 = null, String linkedin2 = null)

    //    {

    //        //jedini nacin za sada da ovo radi, mozda nekad pronadjem bolji nacin
    //        if (firstname2.Equals("NULL")) firstname2 = null;
    //        if (lastname2.Equals("NULL")) lastname2 = null;
    //        if (email2.Equals("NULL")) email2 = null;
    //        if (phone2.Equals("NULL")) phone2 = null;
    //        if (adress2.Equals("NULL")) adress2 = null;
    //        if (dateofbirth2.Equals("NULL")) dateofbirth2 = null;
    //        if (fblink2.Equals("NULL")) fblink2 = null;
    //        if (twitterlink2.Equals("NULL")) twitterlink2 = null;
    //        if (gpluslink2.Equals("NULL")) gpluslink2 = null;
    //        if (linkedin2.Equals("NULL")) linkedin2 = null;

    //        using (var context = new EntityModels.birdtouchEntities1())
    //        {


    //            EntityModels.user_info result = context.user_info.SingleOrDefault<EntityFrameworkModels.user_info>(b => b.id_user == id2);
    //            if (result != null)
    //            {
    //                result.firstName = firstname2;
    //                result.lastName = lastname2;
    //                result.email = email2;
    //                result.phoneNumber = phone2;
    //                result.adress = adress2;
    //                result.dateOfBirth = dateofbirth2;
    //                result.fbLink = fblink2;
    //                result.twitterLink = twitterlink2;
    //                result.gPlusLink = gpluslink2;
    //                result.linkedInLink = linkedin2;
    //                context.SaveChanges();
    //                return Ok("User data changed succesfully");
    //            }
    //            else
    //            {
    //                return NotFound();
    //            }

    //        }


    //    }
    //}

}
