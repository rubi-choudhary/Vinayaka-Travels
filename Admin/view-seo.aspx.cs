using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;

public partial class Admin_view_Seo : System.Web.UI.Page
{
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
    public string strSeo = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        GetAllSeoDetails();
    }

    public void GetAllSeoDetails()
    {
        try
        {
            strSeo = "";
            List<SeoMaster> lst = SeoMaster.GetAllSeoMasterAdmin(conSR);
            int i = 0;
            foreach (SeoMaster cat in lst)
            {
                #region status
                string ft1 = cat.Status == "Active" ? "checked" : "";
                string sts = cat.Status == "Active" ? "<span id='sts_" + cat.Id + "' class='badge badge-outline-success'>Active</span>" : "<span id='sts_" + cat.Id + "' class='badge badge-outline-warning'>Inactive</span>";

                string Status = @"<div class='form-check form-switch form-switch-custom form-switch-success mb-2 mb-md-0'>
                                        <input class='form-check-input PublishSeo' type='checkbox' role='switch' data-id='" + cat.Id + @"' id='chk_' " + ft1 + @">
                                    </div>";
                #endregion

                strSeo += @"<tr>
                                <td>" + (i + 1) + @"</td>
                              
                                <td class='Titlecsspage'><a href='/" + cat.Url + @"' target='_blank'>" + cat.BannerTitle + @"</a></td>
        
                                <td><span class='bs-tooltip' data-bs-toggle='tooltip' data-placement='top' title='Added By : " + cat.AddedBy + @"' >" + cat.AddedOn.ToString("dd-MMM-yyyy") + @"</span></td>
                                <td>" + sts + @"</td>
                                <td>" + Status + @"</td>
                                <td class=''><a href='Add-Seo.aspx?id=" + cat.Id + @"' class='bs-tooltip fs-18' data-id='" + cat.Id + @"' data-bs-toggle='tooltip' data-placement='top' title='Edit'><i class='mdi mdi-pencil'></i></a><a href='javascript:void(0);' class='bs-tooltip fs-18 link-danger deleteItem' data-id='" + cat.Id + @"' data-bs-toggle='tooltip' data-placement='top' title='Delete'><i class='mdi mdi-trash-can-outline'></i></a></td>
                            </tr>";
                i++;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllSeoDetails", ex.Message);
        }
    }

    [WebMethod(EnableSession = true)]
    public static string Delete(string id)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            SeoMaster cat = new SeoMaster();
            cat.Id = Convert.ToInt32(id);
            cat.Status = "Deleted";
            int exec = SeoMaster.statusSeoMaster(conSR, cat);
            x = exec > 0 ? "Success" : "W";
        }
        catch (Exception ex)
        {
            x = "W";
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteSeo", ex.Message);
        }
        return x;
    }

    [WebMethod(EnableSession = true)]
    public static string PublishSeo(string id, string ftr)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            SeoMaster cat = new SeoMaster();
            cat.Id = Convert.ToInt32(id);
            cat.Status = ftr == "Yes" ? "Active" : "Draft";
            int exec = SeoMaster.statusSeoMaster(conSR, cat);
            x = exec > 0 ? "Success" : "W";
        }
        catch (Exception ex)
        {
            x = "W";
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "PublishSeo", ex.Message);
        }
        return x;
    }
}