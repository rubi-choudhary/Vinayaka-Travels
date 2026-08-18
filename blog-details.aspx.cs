using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class blod_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBlogDetails();
        }
    }

    private void BindBlogDetails()
    {
       
        string burl = null;

        if (Page.RouteData != null && Page.RouteData.Values["burl"] != null)
        {
            burl = Page.RouteData.Values["burl"].ToString();
        }
        else if (!string.IsNullOrEmpty(Request.QueryString["url"]))
        {
            burl = Request.QueryString["url"];
        }

        if (string.IsNullOrEmpty(burl))
        {
            Response.Redirect("~/blogs.aspx", false);
            return;
        }

        using (SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString))
        {
            Blogs blog = Blogs.GetBlogDetailsWithUrl(conSR, burl);

            if (blog == null || blog.Id == 0)
            {
                Response.Redirect("~/blogs.aspx", false);
                return;
            }

            Page.Title = string.IsNullOrEmpty(blog.PageTitle) ? blog.BlogTitle : blog.PageTitle;
            if (!string.IsNullOrEmpty(blog.MetaDesc))
            {
                Page.MetaDescription = blog.MetaDesc;
            }
            if (!string.IsNullOrEmpty(blog.MetaKey))
            {
                Page.MetaKeywords = blog.MetaKey;
            }

            lblBannerEyebrow.InnerText = string.IsNullOrEmpty(blog.Category) ? "Blog" : blog.Category;
            lblBannerTitle.InnerText = blog.BlogTitle;
            lblBannerDesc.InnerText = blog.ShortDesc;
            lblBreadcrumb.InnerText = blog.BlogTitle;

         
            //string bannerImgUrl = !string.IsNullOrEmpty(blog.BannerImg)
            //    ? ResolveUrl(blog.BannerImg)
            //    : "https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?auto=format&fit=crop&w=1600&q=80";

            //secBanner.Style["background"] =
            //    "linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('" + bannerImgUrl + "')";
            //secBanner.Style["background-size"] = "cover";
            //secBanner.Style["background-position"] = "center";

            lblAuthor.InnerText = string.IsNullOrEmpty(blog.PostedBy) ? "Admin" : blog.PostedBy;
            lblPostedOn.InnerText = blog.PostedOn.ToString("dd MMM yyyy");
            lblCategory.InnerText = blog.Category;
            //lblReadTime.InnerText = (blog.ReadingTime > 0 ? blog.ReadingTime : 1) + " min read";

            if (!string.IsNullOrEmpty(blog.DetailImg))
            {
                divFeaturedImg.Style["background-image"] = "url('" + ResolveUrl(blog.DetailImg) + "')";
            }

          
            ltArticleBody.Text = blog.FullDesc;

           
            //BindTags(blog.BlogTag);

            BindRecentPosts(conSR, blog.BlogUrl);
        }
    }

    

    private void BindRecentPosts(SqlConnection conSR, string currentBlogUrl)
    {
        
        var recentBlogs = Blogs.GetAllBlogsyouByUrl(conSR, currentBlogUrl);

        rptRecentPosts.DataSource = recentBlogs;
        rptRecentPosts.DataBind();
    }

    protected void rptRecentPosts_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem)
        {
            return;
        }

        Blogs blog = (Blogs)e.Item.DataItem;

        HtmlGenericControl imgDiv = (HtmlGenericControl)e.Item.FindControl("imgRecent");
        HtmlAnchor titleLink = (HtmlAnchor)e.Item.FindControl("aRecent");
        HtmlGenericControl dateSpan = (HtmlGenericControl)e.Item.FindControl("spnRecent");

        if (!string.IsNullOrEmpty(blog.BlogImg))
        {
            imgDiv.Style["background-image"] = "url('" + ResolveUrl(blog.BlogImg) + "')";
        }

        titleLink.HRef = ResolveUrl("~/blogs/" + blog.BlogUrl);
        titleLink.InnerText = blog.BlogTitle;

        dateSpan.InnerText = blog.PostedOn.ToString("dd MMM yyyy");
    }
}