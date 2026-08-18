using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", " this.disabled = 'true';this.value='Please Wait...'; " + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
    }
    void FillCapctha()
    {
        try
        {
            Image1.ImageUrl = "capcha.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch
        {
            throw;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        txtCaptcha.Focus();
        FillCapctha();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                if (Convert.ToString(Session["captchanum"]) != txtCaptcha.Text.Trim())
                {
                    lblCaptch.Visible = true;
                    lblCaptch.Text = "Invalid captcha input.";
                    txtCaptcha.Focus();
                    return;
                }
                else
                {
                    int var = ContactRequestToAdmin(txtFName.Text, txtEmail.Text, TxtMNo.Text, txtFromDate.Text, txtTodate.Text, txtTime.Text, txtAddress.Text, ddltravelType.SelectedValue, ddlVehicleType.SelectedValue, txtMessage.Text);
                    ContactRequestToCustomer(txtEmail.Text, txtFName.Text);
                    if (var > 0)
                    {
                        Response.Redirect("/thankyou.aspx");
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'Booking Confirm',actionTextColor: '#fff',backgroundColor: '#008a3d'});", true);
                        txtEmail.Text = "";
                        TxtMNo.Text = "";
                        txtFromDate.Text = "";
                        txtTodate.Text = "";
                        txtFName.Text = "";
                        txtTime.Text = "";
                        txtAddress.Text = "";
                        txtMessage.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'There is some problem now. Please try after some time.',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);

                    }

                }
            }

        }

        catch (Exception ee)

        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "Snackbar.show({pos: 'top-right',text: 'There is some problem now. Please try after some time.',actionTextColor: '#fff',backgroundColor: '#ea1c1c'});", true);
        }
    }

    public static int ContactRequestToAdmin(string name, string email, string mobile, string FromDate, string Todate, string Time, string Address, string travelType, string VehicleType,string message)
    {
        try
        {


            MailMessage mail = new MailMessage();
            mail.To.Add(ConfigurationManager.AppSettings["ToMail"]);
            if (ConfigurationManager.AppSettings["CCMail"] != "")
            {
                mail.CC.Add(ConfigurationManager.AppSettings["CCMail"]);
            }
            if (ConfigurationManager.AppSettings["BCCMail"] != "")
            {
                mail.Bcc.Add(ConfigurationManager.AppSettings["BCCMail"]);
            }
            mail.From = new MailAddress(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["fromName"]);
            mail.Subject = "Vinayaka travels Booking Mail";

            string Body = "Hello Admin," + "<br/>" + "<br/>You have received a Cab Booking Request from " + name + " " + "<br/>" + "<br/>" + "<br/>" + "Details:" + "<br/>" + "Name: " + name + "<br/>" + "Email Address : " + email + "<br/>" + "Mobile : " + mobile + "<br />" + "Address : " + Address + "<br/>" + "From Date : " + FromDate + "<br/>" + "To Date : " + Todate + "<br/>" + "Time : " + Time + "<br/>" + "Type of vehicle : " + VehicleType + "<br/>" + "Type of travel : " + travelType +"<br/>" + "Message : " + message +  "<br/><br/><br/>" + "Best Regards" + "<br/><br/>" + "Vinayaka travels" + "<br/>" + "";

            mail.Body = Body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["host"];
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
            smtp.Credentials = new System.Net.NetworkCredential
                   (ConfigurationManager.AppSettings["userName"], ConfigurationManager.AppSettings["password"]);
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSsl"]);
            smtp.Send(mail);
            return 1;
        }
        catch (Exception exx)
        {

            return 0;

        }
    }


    public static int ContactRequestToCustomer(string email, string name)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);

            mail.From = new MailAddress(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["fromName"]);
            mail.Subject = "Confirmation of Your Cab Booking with Vinayaka Travels";

            string Body = "Dear " + name + ",<br/><br/><br/>Thank you for choosing Vinayaka travels. We will connect with you shortly.<br/><br/><br/>Thanks & Regards<br/>Vinayaka travels<br/>";

            mail.Body = Body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["host"];
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
            smtp.Credentials = new System.Net.NetworkCredential
            (ConfigurationManager.AppSettings["userName"], ConfigurationManager.AppSettings["password"]);
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSsl"]);
            smtp.Send(mail);
            return 1;
        }
        catch (Exception exx)
        {

            return 0;

        }
    }


}