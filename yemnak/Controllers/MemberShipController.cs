using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace yemnak.Controllers
{
    public class MemberShipController : Controller
    {
        // GET: MemberShip
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Classic()
        {
            // Create view 
            return View();
        }



    }
}