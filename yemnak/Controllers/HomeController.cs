
using System.Web.Mvc;
using System.Globalization;
using System.Threading;

namespace yemnak.Controllers
{
    public class HomeController : Controller
    {
        private void languageSwitch(string language)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(language);
            if(language == "ar-KW")
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

        public ActionResult ContactUs(string language)
        {
            languageSwitch(language);
            return View();
        }
    }
}