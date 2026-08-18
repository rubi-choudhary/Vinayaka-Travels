using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_add_blog : System.Web.UI.Page
{
    private const string V = "";
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);
    public string strThumbImage, strDetailImg, strBannerImg = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                GetBlogs();
            }
        }
    }


    private void GetBlogs()
    {
        try
        {
            var blogs = Blogs.GetBlogById(conSR, Convert.ToInt32(Request.QueryString["id"]));
            if (blogs != null)
            {
                btnSave.Text = "Update";
                txtBlogTitle.Text = blogs.BlogTitle;
                txtUrl.Text = blogs.BlogUrl;
                txtPostedOn.Text = Convert.ToString(blogs.PostedOn);
                txtpostedBy.Text = blogs.PostedBy;
                txtMetaDesc.Text = blogs.MetaDesc;
                txtMetakey.Text = blogs.MetaKey;
                txtPageTitle.Text = blogs.PageTitle;
                //txtBlogTag.Text = blogs.BlogTag;
                Txtfuldesc.Text = blogs.FullDesc;
                txtpostedBy.Text = blogs.PostedBy;
                txtShortDesc.Text = blogs.ShortDesc;
                txtCategory.Text = blogs.Category;
                //txtReadingTime.Text = blogs.ReadingTime > 0 ? blogs.ReadingTime.ToString() : "";
                txtPostedOn.Text = blogs.PostedOn.ToString("dd-MMM-yyyy");
                chkHome.Checked = blogs.DisplayHome == "Yes" ? true : false;
                if (blogs.BlogImg != "")
                {
                    strThumbImage = "<img src='/" + blogs.BlogImg + "' style='max-height:60px;' />";
                    lblThumb.Text = blogs.BlogImg;
                    ReqFileUpload1.Visible = false;
                }
                if (blogs.DetailImg != "")
                {
                    strDetailImg = "<img src='/" + blogs.DetailImg + "' style='max-height:60px;' />";
                    lblDetailImg.Text = blogs.DetailImg;
                    ReqFileUpload2.Visible = false;
                }
                //if (blogs.BannerImg != "")
                //{
                //    strBannerImg = "<img src='/" + blogs.BannerImg + "' style='max-height:60px;' />";
                //    lblBannerImg.Text = blogs.BannerImg;
                //    ReqFileUpload3.Visible = false;
                //}


            }

        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetBlogs", ex.Message);
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string pageName = Path.GetFileName(Request.Path);
            if (Page.IsValid)
            {
                //DateTime postedOnDate;
                //if (DateTime.TryParse(txtPostedOn.Text, out postedOnDate) && postedOnDate.Date > DateTime.Today)
                //{
                //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Posted On date cannot be in the future.',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                //    return;
                //}

                #region Image Upload
                var upload = CheckImageFormat();
                if (upload == "Format")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Invalid image format. Please upload .png, .jpeg, .jpg, .webp',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }
                if (upload == "Size")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Thumb Image size should be 600 W × 480 H px',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }

                var upload2 = UploadDetailImg();
                if (upload2 == "Not Found")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Please upload Blog Image.',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }
                if (upload2 == "Format")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Invalid blog image format. Please upload .png, .jpeg, .jpg, .webp',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }
                if (upload2 == "Size")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Blog Image size should be 1200 W × 800 H px',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    return;
                }

               
                #endregion
                string aid = Request.Cookies["hi_aid"].Value;
                Blogs blogs = new Blogs();
                blogs.BlogTitle = txtBlogTitle.Text.Trim();
                blogs.BlogUrl = txtUrl.Text.Trim();
                blogs.PostedOn = Convert.ToDateTime(txtPostedOn.Text);
                blogs.PostedBy = txtpostedBy.Text.Trim();
                blogs.BlogTag ="";
                blogs.FullDesc = Txtfuldesc.Text.Trim();
                blogs.BlogImg = UploadImage();
                blogs.DetailImg = UploadDetailImg();
                blogs.BannerImg = "";
                blogs.PageTitle = txtPageTitle.Text.Trim();
                blogs.MetaKey = txtMetakey.Text.Trim();
                blogs.DisplayHome = chkHome.Checked ? "Yes" : "No";
                blogs.MetaDesc = txtMetaDesc.Text.Trim();
                blogs.AddedBy = aid;
                blogs.UpdatedBy = aid;
                blogs.ShortDesc = txtShortDesc.Text.Trim();
                blogs.Category = txtCategory.Text.Trim();
                int readingTime;
                blogs.ReadingTime = 0;
                blogs.Status = "Draft";
                if (btnSave.Text == "Update")
                {
                    if (CreateUser.CheckAccess(conSR, pageName, "Edit", Request.Cookies["hi_aid"].Value))
                    {
                        blogs.Id = Convert.ToInt32(Request.QueryString["id"]);

                        int result = Blogs.UpdateBlog(conSR, blogs);
                        if (result > 0)
                        {

                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Blog details Updated successfully.',actionTextColor: '#fff',backgroundColor: '#008a3d'});", true);
                            GetBlogs();
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Oops! Something went wrong. Please try after some time',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Access denied. Contact to your administrator',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    }

                }
                else
                {
                    if (CreateUser.CheckAccess(conSR, pageName, "Add", Request.Cookies["hi_aid"].Value))
                    {

                        int result = Blogs.WriteBlog(conSR, blogs);
                        if (result > 0)
                        {
                            txtBlogTitle.Text = txtUrl.Text = txtPostedOn.Text = txtpostedBy.Text =  Txtfuldesc.Text = txtPageTitle.Text = txtMetakey.Text = txtMetaDesc.Text = txtCategory.Text = string.Empty;
                            strThumbImage = strDetailImg = strBannerImg = string.Empty;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Blog details added successfully.',actionTextColor: '#fff',backgroundColor: '#008a3d'});", true);
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Oops! Something went wrong. Please try after some time',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Access denied. Contact to your administrator',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
                    }
                }
            }
            GetBlogs();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "btnSave_Click", ex.Message);
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("add-blog.aspx");
    }


    public string UploadImage()
    {
        #region upload image
        string thumbImage = "";
        if (FileUpload1.HasFile)
        {
            string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName.ToLower()), ImageGuid1 = Guid.NewGuid().ToString() + "-blogThumb".Replace(" ", "-").Replace(".", "");
            string iconPath = Server.MapPath(".") + "\\../UploadImages\\" + ImageGuid1 + "" + fileExtension;
            try
            {
                if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblThumb.Text))))
                {
                    File.Delete(Server.MapPath("~/" + Convert.ToString(lblThumb.Text)));
                }
            }
            catch (Exception eeex)
            {
                ExceptionCapture.CaptureException(Request.Url.PathAndQuery, "UploadImage", eeex.Message);
                return lblThumb.Text;
            }

            if (fileExtension == ".webp")
            {
                FileUpload1.SaveAs(iconPath);

            }
            else if (fileExtension == ".gif")
            {
                FileUpload1.SaveAs(iconPath);
            }
            else
            {
                System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload1.PostedFile.InputStream);
                System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
                if (fileExtension == ".png")
                {
                    CommonModel.SavePNG(iconPath, objImagesmallBig, 99);

                }
                else
                {

                    CommonModel.SaveJpeg(iconPath, objImagesmallBig, 99);



                }
            }
            thumbImage = "UploadImages/" + ImageGuid1 + "" + fileExtension;
        }
        else
        {
            thumbImage = lblThumb.Text;
        }
        #endregion
        return thumbImage;
    }

    private string CheckImageFormat()
    {
        #region upload image
        string thumbImage = "";
        if (FileUpload1.HasFile)
        {
            string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName.ToLower());

            if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif" || fileExtension == ".webp"))
            {
                if (fileExtension == ".webp")
                {
                    return thumbImage;
                }
                else
                {
                    System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload1.PostedFile.InputStream);
                    System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
                    if (bmpPostedImageBig.Width != 600 || bmpPostedImageBig.Height != 480)
                    {
                        return "Size";
                    }
                }

            }
            else
            {
                return "Format";
            }
        }
        #endregion
        return thumbImage;
    }


    private string UploadDetailImg()
    {
        string DetailImage = "";
        string guid = Guid.NewGuid().ToString();
        if (FileUpload2.HasFile)
        {
            string fileExtension = Path.GetExtension(FileUpload2.PostedFile.FileName.ToLower()),
                   ImageGuid1 = guid + "_Detail".Replace(" ", "-").Replace(".", "");
            string iconPath = Server.MapPath(".") + "\\../UploadImages\\" + ImageGuid1 + "" + fileExtension;

            if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".webp"))
            {
                // *** Size validation — Blog Image must be 1200 W x 800 H ***
                if (fileExtension != ".webp")
                {
                    System.Drawing.Bitmap bmpCheck = new System.Drawing.Bitmap(FileUpload2.PostedFile.InputStream);
                    if (bmpCheck.Width != 1200 || bmpCheck.Height != 800)
                    {
                        bmpCheck.Dispose();
                        return "Size";
                    }
                    bmpCheck.Dispose();
                    // Reset stream position after reading for size check
                    FileUpload2.PostedFile.InputStream.Position = 0;
                }

                try
                {
                    if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblDetailImg.Text))))
                    {
                        File.Delete(Server.MapPath("~/" + Convert.ToString(lblDetailImg.Text)));
                    }
                }
                catch (Exception ex) { }

                if (fileExtension == ".png")
                {
                    System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload2.PostedFile.InputStream);
                    System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
                    CommonModel.SavePNG(iconPath, objImagesmallBig, 99);
                }
                else if (fileExtension == ".jpeg" || fileExtension == ".jpg")
                {
                    System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload2.PostedFile.InputStream);
                    System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
                    CommonModel.SaveJpeg(iconPath, objImagesmallBig, 99);
                }
                else
                {
                    FileUpload2.SaveAs(iconPath);
                }

                DetailImage = "UploadImages/" + ImageGuid1 + "" + fileExtension;
            }
            else
            {
                return "Format";
            }
        }
        else
        {
            if (lblDetailImg.Text != "")
                DetailImage = lblDetailImg.Text;
            else
                DetailImage = "Not Found";
        }
        return DetailImage;
    }

    //private string UploadBannerImg()
    //{
    //    string BannerImage = "";
    //    string guid = Guid.NewGuid().ToString();
    //    if (FileUpload3.HasFile)
    //    {
    //        string fileExtension = Path.GetExtension(FileUpload3.PostedFile.FileName.ToLower()),
    //               ImageGuid1 = guid + "_Banner".Replace(" ", "-").Replace(".", "");
    //        string iconPath = Server.MapPath(".") + "\\../UploadImages\\" + ImageGuid1 + "" + fileExtension;

    //        if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".webp"))
    //        {
    //            // *** Size validation — Banner Image must be 1600 W x 1067 H ***
    //            if (fileExtension != ".webp")
    //            {
    //                System.Drawing.Bitmap bmpCheck = new System.Drawing.Bitmap(FileUpload3.PostedFile.InputStream);
    //                if (bmpCheck.Width != 1600 || bmpCheck.Height != 1067)
    //                {
    //                    bmpCheck.Dispose();
    //                    return "Size";
    //                }
    //                bmpCheck.Dispose();
    //                // Reset stream position after reading for size check
    //                FileUpload3.PostedFile.InputStream.Position = 0;
    //            }

    //            try
    //            {
    //                if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblBannerImg.Text))))
    //                {
    //                    File.Delete(Server.MapPath("~/" + Convert.ToString(lblBannerImg.Text)));
    //                }
    //            }
    //            catch (Exception ex) { }

    //            if (fileExtension == ".png")
    //            {
    //                System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload3.PostedFile.InputStream);
    //                System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
    //                CommonModel.SavePNG(iconPath, objImagesmallBig, 99);
    //            }
    //            else if (fileExtension == ".jpeg" || fileExtension == ".jpg")
    //            {
    //                System.Drawing.Bitmap bmpPostedImageBig = new System.Drawing.Bitmap(FileUpload3.PostedFile.InputStream);
    //                System.Drawing.Image objImagesmallBig = CommonModel.ScaleImageBig(bmpPostedImageBig, bmpPostedImageBig.Height, bmpPostedImageBig.Width);
    //                CommonModel.SaveJpeg(iconPath, objImagesmallBig, 99);
    //            }
    //            else
    //            {
    //                FileUpload3.SaveAs(iconPath);
    //            }

    //            BannerImage = "UploadImages/" + ImageGuid1 + "" + fileExtension;
    //        }
    //        else
    //        {
    //            return "Format";
    //        }
    //    }
    //    else
    //    {
    //        if (lblBannerImg.Text != "")
    //            BannerImage = lblBannerImg.Text;
    //        else
    //            BannerImage = "Not Found";
    //    }
    //    return BannerImage;
    //}
}