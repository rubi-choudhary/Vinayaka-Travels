using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;

public partial class blogs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

  
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static object GetBlogs(int page)
    {
        if (page < 1) page = 1;

        var result = new List<object>();
        int totalCount = 0;

        using (SqlConnection conSR = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conSR"].ConnectionString))
        {
            List<Blogs> list = Blogs.GetAllListBlogs(conSR, page);

            foreach (var b in list)
            {
                totalCount = b.TotalCount;

                result.Add(new
                {
                    id = b.Id,
                    title = b.BlogTitle,
                    url = b.BlogUrl,
                    shortDesc = b.ShortDesc,
                    img = string.IsNullOrEmpty(b.BlogImg) ? "assets/images/gallery/about-us.jpeg" : b.BlogImg,
                    category = string.IsNullOrEmpty(b.Category) ? "Travel" : b.Category,
                    postedOn = b.PostedOn.ToString("dd MMM yyyy"),
                    postedBy = string.IsNullOrEmpty(b.PostedBy) ? "Admin" : b.PostedBy
                });
            }
        }

        int pageSize = 6;
        int totalPages = (int)Math.Ceiling(totalCount / (double)pageSize);

        return new
        {
            blogs = result,
            currentPage = page,
            totalPages = totalPages
        };
    }
}