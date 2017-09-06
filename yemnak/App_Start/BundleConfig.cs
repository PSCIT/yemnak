
using System.Web.Optimization;

namespace yemnak.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.UseCdn = true;
            BundleTable.EnableOptimizations = true;

            //--------------------------- Script Bundles ---------------------------

            var jqueryBundle = new ScriptBundle("~/Contents/Scripts/jquery", "https://code.jquery.com/jquery-3.2.1.slim.min.js").Include(
                "~/Contents/Scripts/jquery-{version}.js");
            jqueryBundle.CdnFallbackExpression = "window.jquery";
            bundles.Add(jqueryBundle);

            //bundles.Add(new ScriptBundle("~/Scripts/bootstrap").Include(
            //    "~/Scripts/bootstrap.js")
            //);

            bundles.Add(new ScriptBundle("~/Contents/Scripts/LocalScripts").Include(
                "~/Contents/Scripts/site.js")
            );

            //bundles.Add(new ScriptBundle("~/Scripts/modernizr").Include(
            //    "~/Scripts/modernizr-{version}.js")
            //);

            //--------------------------- Style Bundles ---------------------------

            //bundles.Add(new StyleBundle("~/Content/bootstrap").Include(
            //    "~/Content/bootstrap.css",
            //    "~/Content/bootstrap-theme.css"));

            bundles.Add(new StyleBundle("~/Contents/Stylesheets/LocalStyles").Include(
                "~/Contents/Stylesheets/style.css"));

            //bundles.Add(new StyleBundle("~/Contents/Stylesheets/FontAwesome").Include(
            //    "~/Contents/Stylesheets/font-awesome.min.css"));
            //, 
            //    "//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css")
            //    .IncludeFallback("~/Contents/Stylesheets/font-awesome.min.css", "fa-2x", "font-size", "2em"));

            var animateStyleBundle = new StyleBundle("~/Content/Stylesheet/animate", "https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css").Include(
                "~/Content/Stylesheet/animate.min.css");
            bundles.Add(animateStyleBundle);

        }
    }
}
