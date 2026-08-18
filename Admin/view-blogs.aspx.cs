using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_view_blogs : System.Web.UI.Page
{
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
    public string strBlogs = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAllBlogs();
    }

    private void GetAllBlogs()
    {
        try
        {
            strBlogs = "";
            var ListOfBlog = Blogs.GetAllBlogs(conSR).ToList();
            int i = 0;
            foreach (var blog in ListOfBlog)
            {
                #region status
                string ft1 = blog.Status == "Published" ? "checked" : "";
                string sts = blog.Status == "Published" ? "<span id='sts_" + blog.Id + @"' class='badge badge-outline-success'>Published</span>" : "<span class='badge badge-outline-warning'>Draft</span>";

                string Ststus = @"<div class='form-check form-switch form-switch-custom form-switch-success mb-2 mb-md-0'>
                                                        <input class='form-check-input PublishBlog' type='checkbox' role='switch' data-id='" + blog.Id + @"' id='chk_' " + ft1 + @">
                                                    </div>";
                #endregion

                strBlogs += @"<tr>
                                        <td>" + (i + 1) + @"</td>
                                        <td><a href='/" + blog.BlogImg + @"' target='_blank'/><img class='img-thumbnail  avatar-sm' alt='Blog thumb image' src='/" + blog.BlogImg + @"'></td>
                                       <td><a href='/blogs/" + blog.BlogUrl + @"' target='_blank'>" + blog.BlogTitle + @"</a></td>
 
                                       <td>" + sts + @"</td>
                                        <td>" + Ststus + @"</td>
                                       <td>" + blog.AddedOn.ToString("dd/MMM/yyyy") + @"</td>
                                        <td class='text-center'> 
                                         

 <a href='add-blog.aspx?id=" + blog.Id + @"' class='bs-tooltip fs-18 link-info' data-id='" + blog.Id + @"' data-bs-toggle='tooltip' data-placement='top' title='Edit'>
                                                        <i class='mdi mdi-pencil'></i></a>
                                                    <a href='javascript:void(0);' class='bs-tooltip  fs-18 link-danger deleteItem' data-id='" + blog.Id + @"' data-bs-toggle='tooltip' data-placement='top' title='Delete'>
                                                        <i class='mdi mdi-trash-can-outline'></i></a></td>
                                            </tr>";
                i++;

            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogs", ex.Message);
        }
    }

    [WebMethod(EnableSession = true)]
    public static string Delete(string id)
    {
        string x = "";
        try
        {

            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            if (CreateUser.CheckAccess(conSR, "view-blogs.aspx", "Delete", HttpContext.Current.Request.Cookies["hi_aid"].Value))
            {
                Blogs blogs = new Blogs()
                {
                    Id = Convert.ToInt32(id),
                    UpdatedOn = TimeStamps.UTCTime(),
                    UpdatedIp = CommonModel.IPAddress(),
                    UpdatedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value,
                };
                int exec = Blogs.DeleteBlog(conSR, blogs);
                if (exec > 0)
                {
                    x = "Success";
                }
                else
                {
                    x = "W";
                }
            }
            else
            {
                x = "Permission";
            }
        }
        catch (Exception ex)
        {
            x = "W";
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "Delete", ex.Message);
        }
        return x;
    }


    [WebMethod(EnableSession = true)]
    public static string PublishBlog(string id, string ftr)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            if (CreateUser.CheckAccess(conSR, "view-blogs.aspx", "Edit", HttpContext.Current.Request.Cookies["hi_aid"].Value))
            {
                Blogs cat = new Blogs();
                cat.Id = Convert.ToInt32(id);
                cat.Status = ftr == "Yes" ? "Published" : "Draft";
                cat.UpdatedOn = TimeStamps.UTCTime();
                cat.UpdatedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value;
                cat.UpdatedIp = CommonModel.IPAddress();
                int exec = Blogs.StatusBlog(conSR, cat);
                if (exec > 0)
                {
                    x = "Success";
                }
                else
                {
                    x = "W";
                }
            }
            else
            {
                x = "Permission";
            }
        }
        catch (Exception ex)
        {
            x = "W";
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "PublishBlog", ex.Message);
        }
        return x;
    }


}