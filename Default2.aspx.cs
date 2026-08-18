using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack)
    //    {
    //        BindSeoMasterData();
    //        BindTestimonials();
    //    }
    //}

    protected void Page_Load(object sender, EventArgs e)
    {
        btnQuoteSubmit.Attributes.Add("onclick",
            "this.disabled='true';this.value='Please Wait...'; " +
            ClientScript.GetPostBackEventReference(btnQuoteSubmit, null) + ";");

        if (!IsPostBack)
        {
            BindSeoMasterData();
            BindTestimonials();
        }
    }



    private void BindSeoMasterData()
    {
        try
        {
            string slug = Page.RouteData.Values["surl"] as string;

            if (string.IsNullOrEmpty(slug))
            {
                Response.Redirect("~/Default.aspx", true);
                return;
            }

            SeoMaster seo = SeoMaster.GetSeoMasterByUrl(conSR, slug);

            if (seo == null)
            {
                Response.Redirect("~/404.aspx", true);
                return;
            }


            Page.Title = string.IsNullOrEmpty(seo.PageTitle) ? seo.BannerTitle : seo.PageTitle;
            if (!string.IsNullOrEmpty(seo.MetaDesc))
            {
                Page.MetaDescription = seo.MetaDesc;
            }
            if (!string.IsNullOrEmpty(seo.MetaKeywords))
            {
                Page.MetaKeywords = seo.MetaKeywords;
            }

            //bannerSection.Attributes["style"] =
            //    "background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('" +
            //    ResolveUrl("~/" + seo.BannerImage) +
            //    "'); background-size: cover; background-position: center;";
            litBannerTitle.Text = seo.BannerTitle;
            litBannerDesc.Text = seo.BannerShortDesc;
            imgTitleSection.Attributes["style"] =
                "background-image:url('" + ResolveUrl("~/" + seo.TitleImage) + "');";
            litTitle.Text = seo.Title;
            litDescription.Text = seo.Description;
            imgWhyChooseUs.Attributes["style"] =
                "background-image:url('" + ResolveUrl("~/" + seo.WhyChooseUsImage) + "');";
            litWhyChooseUsTitle.Text = seo.WhyChooseUsTitle;
            litWhyChooseUsDesc.Text = seo.WhyChooseUsDesc;

            litSection3Title.Text = seo.Section3Title;
            litSection3Desc.Text = seo.Section3ShortDesc;
            BindSection3Items(seo.Id.ToString());

            BindMapBlogs(seo.Id.ToString());

            BindFaqs(seo.Id.ToString());
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindSeoMasterData", ex.Message);
        }
    }

    private void BindMapBlogs(string seoMasterId)
    {
        try
        {
            var blogs = SeoMasterBlogs.GetBySeoMasterId(conSR, seoMasterId);
            rptMapBlogs.DataSource = blogs;
            rptMapBlogs.DataBind();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindMapBlogs", ex.Message);
        }
    }

    private void BindFaqs(string seoMasterId)
    {
        try
        {
            var faqs = FAQs.GetFaqsBySeoMasterId(conSR, seoMasterId);
            rptFaqs.DataSource = faqs;
            rptFaqs.DataBind();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindFaqs", ex.Message);
        }
    }

    private void BindSection3Items(string seoMasterId)
    {
        try
        {
            var items = Section3Items.GetSection3ItemsBySeoMasterId(conSR, seoMasterId);
            rptSection3.DataSource = items;
            rptSection3.DataBind();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindSection3Items", ex.Message);
        }
    }

    private void BindTestimonials()
    {
        try
        {
            var list = Testimonials.GetAllTestimonials(conSR);
            rptTestimonials.DataSource = list;
            rptTestimonials.DataBind();
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindTestimonials", ex.Message);
        }
    }

    protected void rptFaqs_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (e.Item.ItemIndex == 0)
            {
                HtmlGenericControl faqItem = (HtmlGenericControl)e.Item.FindControl("faqItem");
                if (faqItem != null)
                {
                    faqItem.Attributes["open"] = "open";
                }
            }
        }
    }

    protected string GetStars(object rating)
    {
        int r;
        int.TryParse(Convert.ToString(rating), out r);
        if (r < 0) r = 0;
        if (r > 5) r = 5;

        string stars = "";
        for (int i = 0; i < r; i++) stars += "&#9733;";
        for (int i = r; i < 5; i++) stars += "&#9734;";
        return stars;
    }

    protected string GetInitial(object personName)
    {
        string name = Convert.ToString(personName);
        return string.IsNullOrEmpty(name) ? "" : name.Substring(0, 1).ToUpper();
    }







    protected void btnQuoteSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string name = txtQuoteName.Text.Trim();
            string phone = txtQuotePhone.Text.Trim();
            string email = txtQuoteEmail.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(phone))
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                lblQuoteMsg.Text = "Please enter your name and phone number.";
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(name, @"^[a-zA-Z\s]+$"))
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                lblQuoteMsg.Text = "Name should contain only letters.";
                return;
            }

            if (!System.Text.RegularExpressions.Regex.IsMatch(phone, @"^\d{10}$"))
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                lblQuoteMsg.Text = "Phone number must be exactly 10 digits.";
                return;
            }

            if (!string.IsNullOrEmpty(email) &&
                !System.Text.RegularExpressions.Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                lblQuoteMsg.Text = "Please enter a valid email address.";
                return;
            }
            //string dateText = txtQuoteDate.Text.Trim();
            //if (!string.IsNullOrEmpty(dateText))
            //{
            //    DateTime parsedDate;
            //    if (!DateTime.TryParseExact(dateText, "dd-MMM-yyyy",
            //            System.Globalization.CultureInfo.InvariantCulture,
            //            System.Globalization.DateTimeStyles.None, out parsedDate))
            //    {
            //        lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
            //        lblQuoteMsg.Text = "Please select a valid date (dd-mmm-yyyy).";
            //        return;
            //    }
            //}

            string dateText = txtQuoteDate.Text.Trim();
            if (string.IsNullOrEmpty(dateText))
            {
                dateText = Request.Form[txtQuoteDate.UniqueID];
                if (!string.IsNullOrEmpty(dateText))
                    dateText = dateText.Trim();
            }

            if (!string.IsNullOrEmpty(dateText))
            {
                //DateTime parsedDate;
                //if (!DateTime.TryParseExact(dateText, "dd-MMM-yyyy",
                //        System.Globalization.CultureInfo.InvariantCulture,
                //        System.Globalization.DateTimeStyles.None, out parsedDate))
                //{
                //    lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                //    lblQuoteMsg.Text = "Please select a valid date (dd-mmm-yyyy).";
                //    return;
                //}

                DateTime parsedDate;
                string[] allowedFormats = { "yyyy-MM-dd HH:mm", "dd-MMM-yyyy HH:mm", "dd-MMM-yyyy" };
                if (!DateTime.TryParseExact(dateText, allowedFormats,
                        System.Globalization.CultureInfo.InvariantCulture,
                        System.Globalization.DateTimeStyles.None, out parsedDate))
                {
                    lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                    lblQuoteMsg.Text = "Please select a valid date and time.";
                    return;
                }
            }

            SqlConnection conSR = new SqlConnection(ConfigurationManager.ConnectionStrings["conSR"].ConnectionString);

            ContactUs c = new ContactUs();
            c.Name = name;
            c.EmailId = email;
            c.ContactNo = phone;
            c.PickupLocation = txtQuotePickup.Text.Trim();
            //c.TravelDate = txtQuoteDate.Text.Trim();
            c.TravelDate = dateText;
            c.VehicleType = ddlQuoteVehicle.SelectedValue;
            c.AddedBy = "Website";
            c.AddedIp = CommonModel.IPAddress();

            int result = ContactUs.InsertContactUs(conSR, c);

            if (result > 0)
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.LightGreen;
                lblQuoteMsg.Text = "Thanks! We'll get back to you shortly.";

                // Send admin notification email
                try
                {
                    Task.Run(() => ContactUs.ContactRequest(c)).GetAwaiter().GetResult();
                }
                catch (Exception mailEx)
                {
                    ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "AdminMailSend", mailEx.Message);
                }

                // Send user acknowledgement email (only if they provided one)
                if (!string.IsNullOrEmpty(email))
                {
                    try
                    {
                        Task.Run(() => Emails.SendContactUsUserAck(name, email)).GetAwaiter().GetResult();
                    }
                    catch (Exception mailEx)
                    {
                        ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UserMailSend", mailEx.Message);
                        
                    }
                }

                txtQuoteName.Text = "";
                txtQuotePhone.Text = "";
                txtQuoteEmail.Text = "";
                txtQuotePickup.Text = "";
                txtQuoteDate.Text = "";
                ddlQuoteVehicle.SelectedIndex = 0;
            }
            else
            {
                lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
                lblQuoteMsg.Text = "Something went wrong. Please try again.";
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "btnQuoteSubmit_Click", ex.Message);
            lblQuoteMsg.ForeColor = System.Drawing.Color.OrangeRed;
            lblQuoteMsg.Text = "Something went wrong. Please try again.";
           
        }
    }
}