using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Seo : System.Web.UI.Page
{
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
    public string strBannerImage = "", strTitleImage = "", strWhyChooseUsImage = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!ScriptManager.GetCurrent(Page).IsInAsyncPostBack)
        {
            ScriptManager.RegisterOnSubmitStatement(this, this.GetType(), "SaveTextBoxBeforePostBack", "BeforePostback()");
        }

        if (!IsPostBack)
        {

            if (Request.QueryString["id"] != null)
            {
                tabFaqs.Visible = tabTestimonials.Visible = tabSection3.Visible = tabMapBlogs.Visible = true;
                idSid.Value = Request.QueryString["id"];
                GetSeoDetails();
            }

            if (Request.QueryString["saved"] == "1")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message",
                    "Snackbar.show({pos: 'top-right',text: 'Landing Page details added successfully.',actionTextColor: '#fff',backgroundColor: '#008a3d'});", true);
            }
            else if (Request.QueryString["saved"] == "2")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message",
                    "Snackbar.show({pos: 'top-right',text: 'Landing Page details updated successfully.',actionTextColor: '#fff',backgroundColor: '#008a3d'});", true);
            }
        }
    }

    #region General Tab

    public void GetSeoDetails()
    {
        try
        {
            SeoMaster sm = SeoMaster.GetSeoMasterById(conSR, Convert.ToInt32(Request.QueryString["id"]));
            if (sm != null)
            {
                btnSave.Text = "Update";
                txtBannerTitle.Text = sm.BannerTitle;
                txtBannerShortDesc.Text = sm.BannerShortDesc;
                txtTitle.Text = sm.Title;
                txtDescription.Text = sm.Description;
                txtWhyChooseUsTitle.Text = sm.WhyChooseUsTitle;
                txtWhyChooseUsDesc.Text = sm.WhyChooseUsDesc;
                txtPTitle.Text = sm.PageTitle;
                txtMKeys.Text = sm.MetaKeywords;
                txtMetaDesc.Text = sm.MetaDesc;
                txtUrl.Text = sm.Url;
                txtSection3Title.Text = sm.Section3Title;
                txtSection3ShortDesc.Text = sm.Section3ShortDesc;


                //if (sm.BannerImage != "")
                //{
                //    lblImage.Text = sm.BannerImage;
                //    strBannerImage = "<img src='/" + sm.BannerImage + "' style='max-height:60px;margin-bottom:10px;' />";
                //    RequiredfuImage.Visible = false;
                //}

                if (sm.TitleImage != "")
                {
                    lblTitleImage.Text = sm.TitleImage;
                    strTitleImage = "<img src='/" + sm.TitleImage + "' style='max-height:60px;margin-bottom:10px;' />";
                    RequiredfuTitleImage.Visible = false;
                }

                if (sm.WhyChooseUsImage != "")
                {
                    lblWhyChooseUsImage.Text = sm.WhyChooseUsImage;
                    strWhyChooseUsImage = "<img src='/" + sm.WhyChooseUsImage + "' style='max-height:60px;margin-bottom:10px;' />";
                    RequiredfuWhyChooseUsImage.Visible = false;
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetSeoDetails", ex.Message);
        }
    }

    private string GenerateSlug(string input)
    {
        if (string.IsNullOrWhiteSpace(input)) return "";
        string str = input.ToLowerInvariant().Trim();
        str = System.Text.RegularExpressions.Regex.Replace(str, @"[^a-z0-9\s-]", "");
        str = System.Text.RegularExpressions.Regex.Replace(str, @"\s+", "-").Trim('-');
        str = System.Text.RegularExpressions.Regex.Replace(str, @"-+", "-");
        return str;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                //string img = UploadBannerImage();
               
                //if (img == "Format")
                //{
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Invalid Banner Image Format!',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                //    return;
                //}
                //if (img == "Size")
                //{
                //    return; 
                //}

                string timg = UploadTitleImage();
                if (timg == "Format")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Invalid Title Image Format!',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }
                if (timg == "Size")
                {
                    return;
                }

                string wimg = UploadWhyChooseUsImage();
                if (wimg == "Format")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Invalid Why Choose Us Image Format!',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }
                if (wimg == "Size")
                {
                    return;
                }

                SeoMaster sm = new SeoMaster();
                sm.BannerImage = "";
                sm.BannerTitle = txtBannerTitle.Text.Trim();
                sm.BannerShortDesc = txtBannerShortDesc.Text.Trim();
                sm.Title = txtTitle.Text.Trim();
                sm.Description = txtDescription.Text;
                sm.WhyChooseUsTitle = txtWhyChooseUsTitle.Text.Trim();
                sm.WhyChooseUsDesc = txtWhyChooseUsDesc.Text;
                sm.Status = "Draft";
                sm.AddedBy = Request.Cookies["hi_aid"].Value;
                sm.AddedIp = CommonModel.IPAddress();
                sm.PageTitle = txtPTitle.Text.Trim();
                sm.MetaKeywords = txtMKeys.Text.Trim();
                sm.MetaDesc = txtMetaDesc.Text.Trim();
                sm.BannerImage = "";
                sm.TitleImage = timg;
                sm.WhyChooseUsImage = wimg;
                sm.Url = string.IsNullOrWhiteSpace(txtUrl.Text)
                    ? GenerateSlug(txtTitle.Text)
                    : GenerateSlug(txtUrl.Text.Trim());
                sm.Section3Title = txtSection3Title.Text.Trim();
                sm.Section3ShortDesc = txtSection3ShortDesc.Text.Trim();

                if (btnSave.Text == "Update")
                {
                    sm.Id = Convert.ToInt32(Request.QueryString["id"]);
                    int result = SeoMaster.UpdateSeoMaster(conSR, sm);
                    if (result > 0)
                    {
                        Response.Redirect("Add-Seo.aspx?id=" + sm.Id + "&saved=2");
                        return;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Oops! Something went wrong. Please try after some time',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    }
                }

                else
                {
                    int result = SeoMaster.InsertSeoMaster(conSR, sm);
                    if (result > 0)
                    {
                        int lid = SeoMaster.GetSeoMasterLastId(conSR);
                        Response.Redirect("Add-Seo.aspx?id=" + lid + "&saved=1");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Oops! Something went wrong. Please try after some time',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    }
                }
            }
            GetSeoDetails();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Oops! Something went wrong. Please try after some time',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "btnSave_Click", ex.Message);
        }
    }

    #endregion

    #region Banner Image Upload


    public string UploadTitleImage()
    {
        string titleImage = "";
        string guid = Guid.NewGuid().ToString();
        if (fuTitleImage.HasFile)
        {
            string fileExtension = Path.GetExtension(fuTitleImage.PostedFile.FileName.ToLower());
            string ImageGuid1 = guid + "_titleimage".Replace(" ", "-").Replace(".", "");
            string iconPath = Server.MapPath(".") + "\\../UploadImages\\" + ImageGuid1 + "" + fileExtension;

            if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif" || fileExtension == ".webp"))
            {
                try
                {
                    if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblTitleImage.Text))))
                    {
                        File.Delete(Server.MapPath("~/" + Convert.ToString(lblTitleImage.Text)));
                    }
                }
                catch (Exception) { }

                if (fileExtension == ".webp")
                {
                    fuTitleImage.SaveAs(iconPath);
                }
                else
                {
                    System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(fuTitleImage.PostedFile.InputStream);
                    if (bmp.Width == 800 && bmp.Height == 500)
                    {
                        if (fileExtension == ".png")
                        {
                            System.Drawing.Image objImg = CommonModel.ScaleImageBig(bmp, bmp.Height, bmp.Width);
                            CommonModel.SavePNG(iconPath, objImg, 99);
                        }
                        else
                        {
                            System.Drawing.Image objImg = CommonModel.ScaleImageBig(bmp, bmp.Height, bmp.Width);
                            CommonModel.SaveJpeg(iconPath, objImg, 99);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Title Image size should be 800 W * 500 H Px',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                        return "Size";
                    }
                }
                titleImage = "UploadImages/" + ImageGuid1 + "" + fileExtension;
            }
            else
            {
                return "Format";
            }
        }
        else
        {
            titleImage = lblTitleImage.Text;
        }
        return titleImage;
    }

    public string UploadWhyChooseUsImage()
    {
        string whyImage = "";
        string guid = Guid.NewGuid().ToString();
        if (fuWhyChooseUsImage.HasFile)
        {
            string fileExtension = Path.GetExtension(fuWhyChooseUsImage.PostedFile.FileName.ToLower());
            string ImageGuid1 = guid + "_whychooseus".Replace(" ", "-").Replace(".", "");
            string iconPath = Server.MapPath(".") + "\\../UploadImages\\" + ImageGuid1 + "" + fileExtension;

            if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif" || fileExtension == ".webp"))
            {
                try
                {
                    if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblWhyChooseUsImage.Text))))
                    {
                        File.Delete(Server.MapPath("~/" + Convert.ToString(lblWhyChooseUsImage.Text)));
                    }
                }
                catch (Exception) { }

                if (fileExtension == ".webp")
                {
                    fuWhyChooseUsImage.SaveAs(iconPath);
                }
                else
                {
                    System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(fuWhyChooseUsImage.PostedFile.InputStream);
                    if (bmp.Width == 800 && bmp.Height == 500)
                    {
                        if (fileExtension == ".png")
                        {
                            System.Drawing.Image objImg = CommonModel.ScaleImageBig(bmp, bmp.Height, bmp.Width);
                            CommonModel.SavePNG(iconPath, objImg, 99);
                        }
                        else
                        {
                            System.Drawing.Image objImg = CommonModel.ScaleImageBig(bmp, bmp.Height, bmp.Width);
                            CommonModel.SaveJpeg(iconPath, objImg, 99);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Why Choose Us Image size should be 800 W * 500 H Px',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                        return "Size";
                    }
                }
                whyImage = "UploadImages/" + ImageGuid1 + "" + fileExtension;
            }
            else
            {
                return "Format";
            }
        }
        else
        {
            whyImage = lblWhyChooseUsImage.Text;
        }
        return whyImage;
    }


    #endregion

    #region FAQs Tab

    [WebMethod(EnableSession = true)]
    public static List<FAQs> GetEditedFaqs(string seoMasterId)
    {
        List<FAQs> lst = null;
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            lst = FAQs.GetFaqsBySeoMasterId(conSR, seoMasterId).OrderByDescending(s => s.Id).ToList();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetEditedFaqs", ex.Message);
        }
        return lst;
    }

    [WebMethod(EnableSession = true)]
    public static string AddFaq(string smid, string fid, string title, string desc)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            FAQs f = new FAQs();
            f.SeoMasterId = smid;
            f.Title = title;
            f.Desc = desc;

            if (fid != "")
            {
                f.Id = Convert.ToInt32(fid);
                int result = FAQs.UpdateFaq(conSR, f);
                if (result > 0) x = "Updated";
            }
            else
            {
                f.AddedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value;
                f.AddedIp = CommonModel.IPAddress();
                int result = FAQs.InsertFaq(conSR, f);
                if (result > 0) x = "Inserted";
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "AddFaq", ex.Message);
            return "";
        }
        return x;
    }

    [WebMethod(EnableSession = true)]
    public static string DeleteFaq(string id)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            FAQs f = new FAQs();
            f.Id = Convert.ToInt32(id);
            int exec = FAQs.DeleteFaq(conSR, f);
            if (exec > 0) x = "Success";
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteFaq", ex.Message);
        }
        return x;
    }

    #endregion


    #region Section3 Tab

    [WebMethod(EnableSession = true)]
    public static List<Section3Items> GetEditedSection3(string seoMasterId)
    {
        List<Section3Items> lst = null;
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            lst = Section3Items.GetSection3ItemsBySeoMasterId(conSR, seoMasterId).OrderByDescending(s => s.Id).ToList();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetEditedSection3", ex.Message);
        }
        return lst;
    }

    [WebMethod(EnableSession = true)]
    public static string AddSection3(string smid, string sid, string title, string desc)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            Section3Items s = new Section3Items();
            s.SeoMasterId = smid;
            s.Title = title;
            s.Desc = desc;

            if (sid != "")
            {
                s.Id = Convert.ToInt32(sid);
                int result = Section3Items.UpdateSection3Item(conSR, s);
                if (result > 0) x = "Updated";
            }
            else
            {
                s.AddedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value;
                s.AddedIp = CommonModel.IPAddress();
                int result = Section3Items.InsertSection3Item(conSR, s);
                if (result > 0) x = "Inserted";
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "AddSection3", ex.Message);
            return "";
        }
        return x;
    }

    [WebMethod(EnableSession = true)]
    public static string DeleteSection3(string id)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            Section3Items s = new Section3Items();
            s.Id = Convert.ToInt32(id);
            int exec = Section3Items.DeleteSection3Item(conSR, s);
            if (exec > 0) x = "Success";
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteSection3", ex.Message);
        }
        return x;
    }

    #endregion

    #region Map Blogs Tab

    [WebMethod(EnableSession = true)]
    public static List<Blogs> GetAllBlogsForDropdown()
    {
        List<Blogs> lst = null;
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            lst = Blogs.GetAllBlogsForLanding(conSR).OrderBy(b => b.BlogTitle).ToList();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogsForDropdown", ex.Message);
        }
        return lst;
    }

    [WebMethod(EnableSession = true)]
    public static List<SeoMasterBlogs> GetMappedBlogs(string seoMasterId)
    {
        List<SeoMasterBlogs> lst = null;
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            lst = SeoMasterBlogs.GetBySeoMasterId(conSR, seoMasterId);
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetMappedBlogs", ex.Message);
        }
        return lst;
    }

    [WebMethod(EnableSession = true)]
    public static string AddMappedBlog(string smid, string blogId)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);

            if (SeoMasterBlogs.IsBlogMapped(conSR, smid, blogId))
            {
                return "AlreadyAdded";
            }

            SeoMasterBlogs s = new SeoMasterBlogs();
            s.SeoMasterId = smid;
            s.BlogId = Convert.ToInt32(blogId);
            s.AddedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value;
            s.AddedIp = CommonModel.IPAddress();

            int result = SeoMasterBlogs.InsertMappedBlog(conSR, s);
            if (result > 0) x = "Inserted";
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "AddMappedBlog", ex.Message);
            return "";
        }
        return x;
    }

    [WebMethod(EnableSession = true)]
    public static string DeleteMappedBlog(string id)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            int exec = SeoMasterBlogs.DeleteMappedBlog(conSR, Convert.ToInt32(id));
            if (exec > 0) x = "Success";
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteMappedBlog", ex.Message);
        }
        return x;
    }

    #endregion

    #region Testimonials Tab

    [WebMethod(EnableSession = true)]
    public static List<Testimonials> GetEditedTestimonials()
    {
        List<Testimonials> lst = null;
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            lst = Testimonials.GetAllTestimonials(conSR).OrderByDescending(s => s.Id).ToList();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetEditedTestimonials", ex.Message);
        }
        return lst;
    }

    [WebMethod(EnableSession = true)]
    public static string AddTestimonial(string tid, string personname, string designation, string desc, string rating)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            Testimonials t = new Testimonials();
            t.PersonName = personname;
            t.Designation = designation;
            t.Desc = desc;
            t.Rating = rating;

            if (tid != "")
            {
                t.Id = Convert.ToInt32(tid);
                int result = Testimonials.UpdateTestimonial(conSR, t);
                if (result > 0) x = "Updated";
            }
            else
            {
                t.AddedBy = HttpContext.Current.Request.Cookies["hi_aid"].Value;
                t.AddedIp = CommonModel.IPAddress();
                int result = Testimonials.InsertTestimonial(conSR, t);
                if (result > 0) x = "Inserted";
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "AddTestimonial", ex.Message);
            return "";
        }
        return x;
    }

    [WebMethod(EnableSession = true)]
    public static string DeleteTestimonial(string id)
    {
        string x = "";
        try
        {
            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
            Testimonials t = new Testimonials();
            t.Id = Convert.ToInt32(id);
            int exec = Testimonials.DeleteTestimonial(conSR, t);
            if (exec > 0) x = "Success";
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteTestimonial", ex.Message);
        }
        return x;
    }

    #endregion

    protected void btnClear_Click1(object sender, EventArgs e)
    {
        Response.Redirect("/admin/Add-Seo.aspx");
    }
}