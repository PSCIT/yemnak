using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace yemnak.Controllers
{
    public class MemberShipController : Controller
    {
        private void languageSwitch(string language)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language);
            Thread.CurrentThread.CurrentCulture = new CultureInfo(language);
            if (language == "ar-KW")
            {
                ViewBag.language = "ar-KW";
            }
            else
            {
                ViewBag.language = "en-US";
            }
        }

        public ActionResult Index(string language)
        {
            languageSwitch(language);
            return View();
        }


        public ActionResult Classic()
        {
            // Create view 
            return View();
        }



    }
}