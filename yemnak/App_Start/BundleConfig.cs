
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

            var jqueryBundle = new ScriptBundle("~/Contents/Scripts/jquery/jquery", "https://code.jquery.com/jquery-3.2.1.slim.min.js").Include(
                "~/Contents/Scripts/jquery/jquery-{version}.js");
            jqueryBundle.CdnFallbackExpression = "window.jquery";
            bundles.Add(jqueryBundle);

            var PopperJSBundle = new ScriptBundle("~/Contents/Scripts/popper/popper", "https://cdn.jsdelivr.net/npm/popper.js@1.12.5/dist/umd/popper.min.js").Include(
                "~/Contents/Scripts/popper/popper.js");
            PopperJSBundle.CdnFallbackExpression = "window.popper";
            bundles.Add(PopperJSBundle);

            var modernizrBundle = new ScriptBundle("~/Contents/Scripts/modernizr/modernizr", "https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js").Include(
                "~/Contents/Scripts/modernizr/modernizr-{version}.js");
            modernizrBundle.CdnFallbackExpression = "window.modernizr";
            bundles.Add(modernizrBundle);

            var bootstrapBundle = new ScriptBundle("~/Contents/Scripts/bootstrap/bootstrap", "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js").Include(
                "~/Contents/Scripts/bootstrap/bootstrap.js");
            bootstrapBundle.CdnFallbackExpression = "window.bootstrap";
            bundles.Add(bootstrapBundle);

            //bundles.Add(new ScriptBundle("~/Scripts/bootstrap").Include(
            //    "~/Scripts/bootstrap.js")
            //);

            bundles.Add(new ScriptBundle("~/Contents/Scripts/LocalScripts").Include(
                "~/Contents/Scripts/site.js")
            );

            //--------------------------- Style Bundles ---------------------------

            bundles.Add(new StyleBundle("~/Contents/Stylesheets/bootstrap/bootstrap").Include(
                "~/Contents/Stylesheets/bootstrap/bootstrap.css"));

            bundles.Add(new StyleBundle("~/Contents/Stylesheets/LocalStyles").Include(
                "~/Contents/Stylesheets/style.css"));

            bundles.Add(new StyleBundle("~/Contents/Stylesheets/FontAwesome").Include(
                "~/Contents/Stylesheets/font-awesome.css"));

            bundles.Add(new StyleBundle("~/Contents/Stylesheets/animate").Include(
                "~/Contents/Stylesheets/animate.min.css"));

        }
    }
}
