using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;

public class ContactUs
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string EmailId { get; set; }
    public string ContactNo { get; set; }
    public string PickupLocation { get; set; }
    public string TravelDate { get; set; }
    public string VehicleType { get; set; }
    public string Message { get; set; }
    public string Status { get; set; }
    public string AddedBy { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedIp { get; set; }

    #region Public - Insert Enquiry

    public static int InsertContactUs(SqlConnection conSR, ContactUs c)
    {
        int result = 0;
        try
        {
            string query = "Insert Into ContactUs (Name,EmailId,ContactNo,PickupLocation,TravelDate,VehicleType,Message,Status,AddedBy,AddedOn,AddedIp) " +
                            "values (@Name,@EmailId,@ContactNo,@PickupLocation,@TravelDate,@VehicleType,@Message,@Status,@AddedBy,@AddedOn,@AddedIp); SELECT SCOPE_IDENTITY();";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Name", SqlDbType.NVarChar).Value = c.Name;
                cmd.Parameters.AddWithValue("@EmailId", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.EmailId) ? (object)DBNull.Value : c.EmailId;
                cmd.Parameters.AddWithValue("@ContactNo", SqlDbType.NVarChar).Value = c.ContactNo;
                cmd.Parameters.AddWithValue("@PickupLocation", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.PickupLocation) ? (object)DBNull.Value : c.PickupLocation;
                cmd.Parameters.AddWithValue("@TravelDate", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.TravelDate) ? (object)DBNull.Value : c.TravelDate;
                cmd.Parameters.AddWithValue("@VehicleType", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.VehicleType) ? (object)DBNull.Value : c.VehicleType;
                cmd.Parameters.AddWithValue("@Message", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.Message) ? (object)DBNull.Value : c.Message;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "New";
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(c.AddedBy) ? "Website" : c.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = c.AddedIp;

                conSR.Open();
                object obj = cmd.ExecuteScalar();
                result = obj != null ? Convert.ToInt32(obj) : 0;
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertContactUs", ex.Message);
        }
        return result;
    }

    #endregion

    #region Admin - Manage Enquiries

    public static List<ContactUs> GetAllContactUs(SqlConnection conSR)
    {
        List<ContactUs> lst = new List<ContactUs>();
        try
        {
            string query = "Select * from ContactUs where Status!='Deleted' Order by Id Desc";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new ContactUs()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           Name = Convert.ToString(dr["Name"]),
                           EmailId = Convert.ToString(dr["EmailId"]),
                           ContactNo = Convert.ToString(dr["ContactNo"]),
                           PickupLocation = Convert.ToString(dr["PickupLocation"]),
                           TravelDate = Convert.ToString(dr["TravelDate"]),
                           VehicleType = Convert.ToString(dr["VehicleType"]),
                           Message = Convert.ToString(dr["Message"]),
                           Status = Convert.ToString(dr["Status"]),
                           AddedBy = Convert.ToString(dr["AddedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           AddedIp = Convert.ToString(dr["AddedIp"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllContactUs", ex.Message);
        }
        return lst;
    }

    public static ContactUs GetContactUsById(SqlConnection conSR, int id)
    {
        ContactUs c = null;
        try
        {
            string query = "Select * from ContactUs where Status!='Deleted' and Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = id;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    c = new ContactUs();
                    c.Id = Convert.ToInt32(Convert.ToString(dt.Rows[0]["Id"]));
                    c.Name = Convert.ToString(dt.Rows[0]["Name"]);
                    c.EmailId = Convert.ToString(dt.Rows[0]["EmailId"]);
                    c.ContactNo = Convert.ToString(dt.Rows[0]["ContactNo"]);
                    c.PickupLocation = Convert.ToString(dt.Rows[0]["PickupLocation"]);
                    c.TravelDate = Convert.ToString(dt.Rows[0]["TravelDate"]);
                    c.VehicleType = Convert.ToString(dt.Rows[0]["VehicleType"]);
                    c.Message = Convert.ToString(dt.Rows[0]["Message"]);
                    c.Status = Convert.ToString(dt.Rows[0]["Status"]);
                    c.AddedBy = Convert.ToString(dt.Rows[0]["AddedBy"]);
                    c.AddedOn = Convert.ToDateTime(Convert.ToString(dt.Rows[0]["AddedOn"]));
                    c.AddedIp = Convert.ToString(dt.Rows[0]["AddedIp"]);
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetContactUsById", ex.Message);
        }
        return c;
    }

    public static int UpdateContactUsStatus(SqlConnection conSR, ContactUs c)
    {
        int result = 0;
        try
        {
            string query = "Update ContactUs Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = c.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = c.Status;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateContactUsStatus", ex.Message);
        }
        return result;
    }

    public static int DeleteContactUs(SqlConnection conSR, ContactUs c)
    {
        int result = 0;
        try
        {
            string query = "Update ContactUs Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = c.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteContactUs", ex.Message);
        }
        return result;
    }

    #endregion

    #region Email Notification

    public static async Task<int> ContactRequest(ContactUs con)
    {
        try
        {
            using (MailMessage mail = new MailMessage())
            {
                mail.To.Add(ConfigurationManager.AppSettings["ToMail"]);
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["CCMail"]))
                {
                    mail.CC.Add(ConfigurationManager.AppSettings["CCMail"]);
                }
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["BCCMail"]))
                {
                    mail.Bcc.Add(ConfigurationManager.AppSettings["BCCMail"]);
                }
                mail.From = new MailAddress(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["fromName"]);
                mail.Subject = "ContactUs Request - Vinayaka Travels";
                mail.Body = "Hi Admin, <br><br>You have received a contactus request from " + con.Name + ".<br><br>" +
                    "Name : " + con.Name + "<br>" +
                    "Email-Id : " + con.EmailId + "<br>" +
                    "Mobile : " + con.ContactNo + "<br>" +
                    "Pickup Location : " + con.PickupLocation + "<br>" +
                    "Travel Date : " + con.TravelDate + "<br>" +
                    "Vehicle Type : " + con.VehicleType + "<br><br><br>" +
                    "Regards,<br>Vinayaka Travels";
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(ConfigurationManager.AppSettings["host"], Convert.ToInt32(ConfigurationManager.AppSettings["port"])))
                {
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential(
                        ConfigurationManager.AppSettings["userName"],
                        ConfigurationManager.AppSettings["password"]);
                    smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSsl"]);
                    smtp.Timeout = 20000;

                    await Task.Run(() => smtp.Send(mail));
                }
            }
            return 1;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "ContactRequest", ex.ToString());
            return 0;
        }
    }
    #endregion
}