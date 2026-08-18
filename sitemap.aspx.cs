using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sitemap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBlogs();
            BindLandingPages();
        }
    }

    private void BindBlogs()
    {
        try
        {
            using (SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString))
            {
                List<Blogs> blogList = Blogs.GetAllBlogsForLanding(conSR);

                if (blogList != null && blogList.Count > 0)
                {
                    rptBlogs.DataSource = blogList;
                    rptBlogs.DataBind();
                }
                else
                {
                    rptBlogs.Visible = false;
                    litNoBlogs.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindBlogs", ex.Message);
            rptBlogs.Visible = false;
            litNoBlogs.Visible = true;
        }
    }

    private void BindLandingPages()
    {
        try
        {
            using (SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString))
            {
                List<SeoMaster> allPages = SeoMaster.GetAllSeoMasterAdmin(conSR);

                List<SeoMaster> activePages = allPages != null
                    ? allPages.Where(p => p.Status == "Active" && !string.IsNullOrEmpty(p.Url)).ToList()
                    : new List<SeoMaster>();

                if (activePages.Count > 0)
                {
                    rptLandingPages.DataSource = activePages;
                    rptLandingPages.DataBind();
                }
                else
                {
                    rptLandingPages.Visible = false;
                    litNoLandingPages.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindLandingPages", ex.Message);
            rptLandingPages.Visible = false;
            litNoLandingPages.Visible = true;
        }
    }
}