
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Optimization;
using yemnak.App_Start;

namespace yemnak
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
