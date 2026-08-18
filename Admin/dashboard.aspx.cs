using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

public partial class Admin_dashboard : System.Web.UI.Page
{
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
    public string Strusername = "";
    public string StrEnquiryCount="0" ;
    public string StrApplicationCount = "0";
    public string StrDealerCount = "0";
    public string StrProductCount = "0";
    public string strEnquiries = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["hi_aid"] == null)
        {
            Response.Redirect("Default.aspx", false);
        }
        else
        {
            BindUserName();
          
        }
    }

    public void BindUserName()
    {
        try
        {
            Strusername = CreateUser.GetLoggedUserName(conSR, Request.Cookies["hi_aid"].Value);
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindUserName", ex.Message);
        }
    }

  

    
    
}