using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class SeoMaster
{
    public int Id { get; set; }
    public string BannerImage { get; set; }
    public string BannerTitle { get; set; }
    public string BannerShortDesc { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string WhyChooseUsTitle { get; set; }
    public string WhyChooseUsDesc { get; set; }
    public string Status { get; set; }
    public string AddedBy { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedIp { get; set; }
    public string PageTitle { get; set; }
    public string MetaKeywords { get; set; }
    public string MetaDesc { get; set; }
    
    public string TitleImage { get; set; }          
    public string WhyChooseUsImage { get; set; }
    public string Url { get; set; }
    public string Section3Title { get; set; }
    public string Section3ShortDesc { get; set; }





    #region Admin SeoMaster region

    public static List<SeoMaster> GetAllSeoMasterAdmin(SqlConnection conSR)
    {
        List<SeoMaster> lst = new List<SeoMaster>();
        try
        {
            string query = "Select * from SeoMaster where Status!='Deleted' Order by Id Desc";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new SeoMaster()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           BannerImage = Convert.ToString(dr["BannerImage"]),
                           BannerTitle = Convert.ToString(dr["BannerTitle"]),
                           BannerShortDesc = Convert.ToString(dr["BannerShortDesc"]),
                           Title = Convert.ToString(dr["Title"]),
                           Description = Convert.ToString(dr["Description"]),
                           WhyChooseUsTitle = Convert.ToString(dr["WhyChooseUsTitle"]),
                           WhyChooseUsDesc = Convert.ToString(dr["WhyChooseUsDesc"]),
                           Status = Convert.ToString(dr["Status"]),
                           AddedBy = Convert.ToString(dr["AddedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           AddedIp = Convert.ToString(dr["AddedIp"]),
                           PageTitle = Convert.ToString(dr["PageTitle"]),
                           MetaKeywords = Convert.ToString(dr["MetaKeywords"]),
                           Url = Convert.ToString(dr["Url"]),
                           MetaDesc = Convert.ToString(dr["MetaDesc"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllSeoMasterAdmin", ex.Message);
        }
        return lst;
    }

    public static SeoMaster GetSeoMasterById(SqlConnection conSR, int id)
    {
        SeoMaster pro = null;
        try
        {
            string query = "Select * from SeoMaster where Status!='Deleted' and Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = id;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    pro = new SeoMaster();
                    pro.Id = Convert.ToInt32(Convert.ToString(dt.Rows[0]["Id"]));
                    pro.BannerImage = Convert.ToString(dt.Rows[0]["BannerImage"]);
                    pro.BannerTitle = Convert.ToString(dt.Rows[0]["BannerTitle"]);
                    pro.BannerShortDesc = Convert.ToString(dt.Rows[0]["BannerShortDesc"]);
                    pro.Title = Convert.ToString(dt.Rows[0]["Title"]);
                    pro.Description = Convert.ToString(dt.Rows[0]["Description"]);
                    pro.WhyChooseUsTitle = Convert.ToString(dt.Rows[0]["WhyChooseUsTitle"]);
                    pro.WhyChooseUsDesc = Convert.ToString(dt.Rows[0]["WhyChooseUsDesc"]);
                    pro.Status = Convert.ToString(dt.Rows[0]["Status"]);
                    pro.AddedBy = Convert.ToString(dt.Rows[0]["AddedBy"]);
                    pro.AddedOn = Convert.ToDateTime(Convert.ToString(dt.Rows[0]["AddedOn"]));
                    pro.AddedIp = Convert.ToString(dt.Rows[0]["AddedIp"]);
                    pro.PageTitle = Convert.ToString(dt.Rows[0]["PageTitle"]);
                    pro.MetaKeywords = Convert.ToString(dt.Rows[0]["MetaKeywords"]);
                    pro.MetaDesc = Convert.ToString(dt.Rows[0]["MetaDesc"]);
                    pro.TitleImage = Convert.ToString(dt.Rows[0]["TitleImage"]);           
                    pro.WhyChooseUsImage = Convert.ToString(dt.Rows[0]["WhyChooseUsImage"]);
                    pro.Url = Convert.ToString(dt.Rows[0]["Url"]);
                    pro.Section3Title = Convert.ToString(dt.Rows[0]["Section3Title"]);
                    pro.Section3ShortDesc = Convert.ToString(dt.Rows[0]["Section3ShortDesc"]);
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetSeoMasterById", ex.Message);
        }
        return pro;
    }

    public static int InsertSeoMaster(SqlConnection conSR, SeoMaster pro)
    {
        int result = 0;
        try
        {


            string query = "Insert Into SeoMaster (BannerImage,TitleImage,WhyChooseUsImage,BannerTitle,BannerShortDesc,Title,Description,WhyChooseUsTitle,WhyChooseUsDesc,Status,AddedBy,AddedOn,AddedIp,PageTitle,MetaKeywords,MetaDesc,Url,Section3Title,Section3ShortDesc) values (@BannerImage,@TitleImage,@WhyChooseUsImage,@BannerTitle,@BannerShortDesc,@Title,@Description,@WhyChooseUsTitle,@WhyChooseUsDesc,@Status,@AddedBy,@AddedOn,@AddedIp,@PageTitle,@MetaKeywords,@MetaDesc,@Url,@Section3Title,@Section3ShortDesc); SELECT SCOPE_IDENTITY();";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@BannerImage", SqlDbType.NVarChar).Value = pro.BannerImage;
                cmd.Parameters.AddWithValue("@BannerTitle", SqlDbType.NVarChar).Value = pro.BannerTitle;
                cmd.Parameters.AddWithValue("@BannerShortDesc", SqlDbType.NVarChar).Value = pro.BannerShortDesc;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = pro.Title;
                cmd.Parameters.AddWithValue("@Description", SqlDbType.NVarChar).Value = pro.Description;
                cmd.Parameters.AddWithValue("@WhyChooseUsTitle", SqlDbType.NVarChar).Value = pro.WhyChooseUsTitle;
                cmd.Parameters.AddWithValue("@WhyChooseUsDesc", SqlDbType.NVarChar).Value = pro.WhyChooseUsDesc;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = pro.Status;
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = pro.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = pro.AddedIp;
                cmd.Parameters.AddWithValue("@PageTitle", SqlDbType.NVarChar).Value = pro.PageTitle;
                cmd.Parameters.AddWithValue("@MetaKeywords", SqlDbType.NVarChar).Value = pro.MetaKeywords;
                cmd.Parameters.AddWithValue("@MetaDesc", SqlDbType.NVarChar).Value = pro.MetaDesc;
                cmd.Parameters.AddWithValue("@TitleImage", SqlDbType.NVarChar).Value = pro.TitleImage;
                cmd.Parameters.AddWithValue("@WhyChooseUsImage", SqlDbType.NVarChar).Value = pro.WhyChooseUsImage;
                cmd.Parameters.AddWithValue("@Url", SqlDbType.NVarChar).Value = pro.Url;
                cmd.Parameters.AddWithValue("@Section3Title", SqlDbType.NVarChar).Value = pro.Section3Title;
                cmd.Parameters.AddWithValue("@Section3ShortDesc", SqlDbType.NVarChar).Value = pro.Section3ShortDesc;
                conSR.Open();
                object obj = cmd.ExecuteScalar();
                result = obj != null ? Convert.ToInt32(obj) : 0;
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertSeoMaster", ex.Message);
        }
        return result;
    }

    public static int UpdateSeoMaster(SqlConnection conSR, SeoMaster pro)
    {
        int result = 0;
        try
        {
         

            string query = "Update SeoMaster Set BannerImage=@BannerImage, TitleImage=@TitleImage, WhyChooseUsImage=@WhyChooseUsImage, BannerTitle=@BannerTitle, BannerShortDesc=@BannerShortDesc, Title=@Title, Description=@Description, WhyChooseUsTitle=@WhyChooseUsTitle, WhyChooseUsDesc=@WhyChooseUsDesc, Status=@Status, PageTitle=@PageTitle, MetaKeywords=@MetaKeywords, MetaDesc=@MetaDesc, Url=@Url, Section3Title=@Section3Title, Section3ShortDesc=@Section3ShortDesc Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = pro.Id;
                cmd.Parameters.AddWithValue("@BannerImage", SqlDbType.NVarChar).Value = pro.BannerImage;
                cmd.Parameters.AddWithValue("@BannerTitle", SqlDbType.NVarChar).Value = pro.BannerTitle;
                cmd.Parameters.AddWithValue("@BannerShortDesc", SqlDbType.NVarChar).Value = pro.BannerShortDesc;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = pro.Title;
                cmd.Parameters.AddWithValue("@Description", SqlDbType.NVarChar).Value = pro.Description;
                cmd.Parameters.AddWithValue("@WhyChooseUsTitle", SqlDbType.NVarChar).Value = pro.WhyChooseUsTitle;
                cmd.Parameters.AddWithValue("@WhyChooseUsDesc", SqlDbType.NVarChar).Value = pro.WhyChooseUsDesc;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = pro.Status;
                cmd.Parameters.AddWithValue("@PageTitle", SqlDbType.NVarChar).Value = pro.PageTitle;
                cmd.Parameters.AddWithValue("@MetaKeywords", SqlDbType.NVarChar).Value = pro.MetaKeywords;
                cmd.Parameters.AddWithValue("@MetaDesc", SqlDbType.NVarChar).Value = pro.MetaDesc;
                cmd.Parameters.AddWithValue("@TitleImage", SqlDbType.NVarChar).Value = pro.TitleImage;
                cmd.Parameters.AddWithValue("@WhyChooseUsImage", SqlDbType.NVarChar).Value = pro.WhyChooseUsImage;
                cmd.Parameters.AddWithValue("@Url", SqlDbType.NVarChar).Value = pro.Url;
                cmd.Parameters.AddWithValue("@Section3Title", SqlDbType.NVarChar).Value = pro.Section3Title;
                cmd.Parameters.AddWithValue("@Section3ShortDesc", SqlDbType.NVarChar).Value = pro.Section3ShortDesc;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateSeoMaster", ex.Message);
        }
        return result;
    }


    public static SeoMaster GetSeoMasterByUrl(SqlConnection conSR, string url)
    {
        SeoMaster pro = null;
        try
        {
            string query = "Select * from SeoMaster where Status='Active' and Url=@Url";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Url", SqlDbType.NVarChar).Value = url;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    pro = new SeoMaster();
                    pro.Id = Convert.ToInt32(Convert.ToString(dt.Rows[0]["Id"]));
                    pro.BannerImage = Convert.ToString(dt.Rows[0]["BannerImage"]);
                    pro.BannerTitle = Convert.ToString(dt.Rows[0]["BannerTitle"]);
                    pro.BannerShortDesc = Convert.ToString(dt.Rows[0]["BannerShortDesc"]);
                    pro.Title = Convert.ToString(dt.Rows[0]["Title"]);
                    pro.Description = Convert.ToString(dt.Rows[0]["Description"]);
                    pro.WhyChooseUsTitle = Convert.ToString(dt.Rows[0]["WhyChooseUsTitle"]);
                    pro.WhyChooseUsDesc = Convert.ToString(dt.Rows[0]["WhyChooseUsDesc"]);
                    pro.Status = Convert.ToString(dt.Rows[0]["Status"]);
                    pro.AddedBy = Convert.ToString(dt.Rows[0]["AddedBy"]);
                    pro.AddedOn = Convert.ToDateTime(Convert.ToString(dt.Rows[0]["AddedOn"]));
                    pro.AddedIp = Convert.ToString(dt.Rows[0]["AddedIp"]);
                    pro.PageTitle = Convert.ToString(dt.Rows[0]["PageTitle"]);
                    pro.MetaKeywords = Convert.ToString(dt.Rows[0]["MetaKeywords"]);
                    pro.MetaDesc = Convert.ToString(dt.Rows[0]["MetaDesc"]);
                    pro.TitleImage = Convert.ToString(dt.Rows[0]["TitleImage"]);
                    pro.WhyChooseUsImage = Convert.ToString(dt.Rows[0]["WhyChooseUsImage"]);
                    pro.Url = Convert.ToString(dt.Rows[0]["Url"]);
                    pro.Section3Title = Convert.ToString(dt.Rows[0]["Section3Title"]);
                    pro.Section3ShortDesc = Convert.ToString(dt.Rows[0]["Section3ShortDesc"]);
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetSeoMasterByUrl", ex.Message);
        }
        return pro;
    }

    public static int GetSeoMasterLastId(SqlConnection conSR)
    {
        int x = 0;
        try
        {
            string query = "Select Max(id) as mid from SeoMaster";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    int mid = 0;
                    int.TryParse(Convert.ToString(dt.Rows[0]["mid"]), out mid);
                    x = mid;
                }
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetSeoMasterLastId", ex.Message);
        }
        return x;
    }

    public static int statusSeoMaster(SqlConnection conSR, SeoMaster pro)
    {
        int result = 0;
        try
        {
            string query = "Update SeoMaster Set Status=@Status Where Id=@Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = pro.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = pro.Status;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "statusSeoMaster", ex.Message);
        }
        return result;
    }
    #endregion
}


public class FAQs
{
    public int Id { get; set; }
    public string SeoMasterId { get; set; }
    public string Title { get; set; }
    public string Desc { get; set; }
    public string AddedBy { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedIp { get; set; }
    public string Status { get; set; }

    #region Admin FAQs region

    public static List<FAQs> GetFaqsBySeoMasterId(SqlConnection conSR, string seoMasterId)
    {
        List<FAQs> lst = new List<FAQs>();
        try
        {
            string query = "Select * from FAQs where Status='Active' and SeoMasterId=@SeoMasterId Order by Id Desc";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = seoMasterId;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new FAQs()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           SeoMasterId = Convert.ToString(dr["SeoMasterId"]),
                           Title = Convert.ToString(dr["Title"]),
                           Desc = Convert.ToString(dr["Desc_"]),
                           AddedBy = Convert.ToString(dr["AddedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           AddedIp = Convert.ToString(dr["AddedIp"]),
                           Status = Convert.ToString(dr["Status"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetFaqsBySeoMasterId", ex.Message);
        }
        return lst;
    }

    public static int InsertFaq(SqlConnection conSR, FAQs f)
    {
        int result = 0;
        try
        {
            string query = "Insert Into FAQs (SeoMasterId,Title,Desc_,AddedBy,AddedOn,AddedIp,Status) values (@SeoMasterId,@Title,@Desc_,@AddedBy,@AddedOn,@AddedIp,@Status)";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = f.SeoMasterId;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = f.Title;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = f.Desc;
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = f.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = f.AddedIp;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertFaq", ex.Message);
        }
        return result;
    }

    public static int UpdateFaq(SqlConnection conSR, FAQs f)
    {
        int result = 0;
        try
        {
            string query = "Update FAQs Set Title=@Title, Desc_=@Desc_ Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = f.Id;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = f.Title;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = f.Desc;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateFaq", ex.Message);
        }
        return result;
    }

    public static int DeleteFaq(SqlConnection conSR, FAQs f)
    {
        int result = 0;
        try
        {
            string query = "Update FAQs Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = f.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteFaq", ex.Message);
        }
        return result;
    }

    #endregion
}


public class Testimonials
{
    public int Id { get; set; }
    public string PersonName { get; set; }
    public string Designation { get; set; }
    public string Desc { get; set; }
    public string Rating { get; set; }
    public string Status { get; set; }
    public string AddedBy { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedIp { get; set; }

    #region Admin Testimonials region

    public static List<Testimonials> GetAllTestimonials(SqlConnection conSR)
    {
        List<Testimonials> lst = new List<Testimonials>();
        try
        {
            string query = "Select * from Testimonials where Status='Active' Order by Id Desc";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new Testimonials()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           PersonName = Convert.ToString(dr["PersonName"]),
                           Designation = Convert.ToString(dr["Designation"]),
                           Desc = Convert.ToString(dr["Desc_"]),
                           Rating = Convert.ToString(dr["Rating"]),
                           Status = Convert.ToString(dr["Status"]),
                           AddedBy = Convert.ToString(dr["AddedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           AddedIp = Convert.ToString(dr["AddedIp"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllTestimonials", ex.Message);
        }
        return lst;
    }

    public static int InsertTestimonial(SqlConnection conSR, Testimonials t)
    {
        int result = 0;
        try
        {
            string query = "Insert Into Testimonials (PersonName,Designation,Desc_,Rating,Status,AddedBy,AddedOn,AddedIp) values (@PersonName,@Designation,@Desc_,@Rating,@Status,@AddedBy,@AddedOn,@AddedIp)";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@PersonName", SqlDbType.NVarChar).Value = t.PersonName;
                cmd.Parameters.AddWithValue("@Designation", SqlDbType.NVarChar).Value = t.Designation;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = t.Desc;
                cmd.Parameters.AddWithValue("@Rating", SqlDbType.NVarChar).Value = t.Rating;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = t.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = t.AddedIp;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertTestimonial", ex.Message);
        }
        return result;
    }

    public static int UpdateTestimonial(SqlConnection conSR, Testimonials t)
    {
        int result = 0;
        try
        {
            string query = "Update Testimonials Set PersonName=@PersonName, Designation=@Designation, Desc_=@Desc_, Rating=@Rating Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = t.Id;
                cmd.Parameters.AddWithValue("@PersonName", SqlDbType.NVarChar).Value = t.PersonName;
                cmd.Parameters.AddWithValue("@Designation", SqlDbType.NVarChar).Value = t.Designation;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = t.Desc;
                cmd.Parameters.AddWithValue("@Rating", SqlDbType.NVarChar).Value = t.Rating;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateTestimonial", ex.Message);
        }
        return result;
    }

    public static int DeleteTestimonial(SqlConnection conSR, Testimonials t)
    {
        int result = 0;
        try
        {
            string query = "Update Testimonials Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = t.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteTestimonial", ex.Message);
        }
        return result;
    }

    #endregion
}


public class Section3Items
{
    public int Id { get; set; }
    public string SeoMasterId { get; set; }
    public string Title { get; set; }
    public string Desc { get; set; }
    public string AddedBy { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedIp { get; set; }
    public string Status { get; set; }

    #region Admin Section3Items region

    public static List<Section3Items> GetSection3ItemsBySeoMasterId(SqlConnection conSR, string seoMasterId)
    {
        List<Section3Items> lst = new List<Section3Items>();
        try
        {
            string query = "Select * from Section3Items where Status='Active' and SeoMasterId=@SeoMasterId Order by Id Desc";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = seoMasterId;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new Section3Items()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           SeoMasterId = Convert.ToString(dr["SeoMasterId"]),
                           Title = Convert.ToString(dr["Title"]),
                           Desc = Convert.ToString(dr["Desc_"]),
                           AddedBy = Convert.ToString(dr["AddedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           AddedIp = Convert.ToString(dr["AddedIp"]),
                           Status = Convert.ToString(dr["Status"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetSection3ItemsBySeoMasterId", ex.Message);
        }
        return lst;
    }

    public static int InsertSection3Item(SqlConnection conSR, Section3Items s)
    {
        int result = 0;
        try
        {
            string query = "Insert Into Section3Items (SeoMasterId,Title,Desc_,AddedBy,AddedOn,AddedIp,Status) values (@SeoMasterId,@Title,@Desc_,@AddedBy,@AddedOn,@AddedIp,@Status)";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = s.SeoMasterId;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = s.Title;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = s.Desc;
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = s.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = s.AddedIp;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertSection3Item", ex.Message);
        }
        return result;
    }

    public static int UpdateSection3Item(SqlConnection conSR, Section3Items s)
    {
        int result = 0;
        try
        {
            string query = "Update Section3Items Set Title=@Title, Desc_=@Desc_ Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = s.Id;
                cmd.Parameters.AddWithValue("@Title", SqlDbType.NVarChar).Value = s.Title;
                cmd.Parameters.AddWithValue("@Desc_", SqlDbType.NVarChar).Value = s.Desc;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateSection3Item", ex.Message);
        }
        return result;
    }

    public static int DeleteSection3Item(SqlConnection conSR, Section3Items s)
    {
        int result = 0;
        try
        {
            string query = "Update Section3Items Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = s.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteSection3Item", ex.Message);
        }
        return result;
    }

    #endregion
}


public class SeoMasterBlogs
{
    public int Id { get; set; }
    public string SeoMasterId { get; set; }
    public int BlogId { get; set; }
    public string BlogTitle { get; set; }
    public string BlogImg { get; set; }
    public string BlogUrl { get; set; }
    public DateTime AddedOn { get; set; }
    public string AddedBy { get; set; }
    public string AddedIp { get; set; }
    public string Status { get; set; }
    public string Category { get; set; }
    public DateTime PostedOn { get; set; }
    public string PostedBy { get; set; }

    #region Admin SeoMasterBlogs region

    public static List<SeoMasterBlogs> GetBySeoMasterId(SqlConnection conSR, string seoMasterId)
    {
        List<SeoMasterBlogs> lst = new List<SeoMasterBlogs>();
        try
        {
            string query = @"Select smb.Id, smb.SeoMasterId, smb.BlogId, smb.AddedOn, smb.Status, 
                      b.BlogTitle, b.BlogImg, b.BlogUrl, b.Category, b.PostedOn, b.PostedBy
                      from SeoMasterBlogs smb
                      inner join Blogs b on smb.BlogId = b.Id
                      where smb.Status='Active' 
                        and b.Status='Published'
                        and smb.SeoMasterId=@SeoMasterId
                      Order by smb.Id Desc";
            
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = seoMasterId;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                lst = (from DataRow dr in dt.Rows
                       select new SeoMasterBlogs()
                       {
                           Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                           SeoMasterId = Convert.ToString(dr["SeoMasterId"]),
                           BlogId = Convert.ToInt32(Convert.ToString(dr["BlogId"])),
                           BlogTitle = Convert.ToString(dr["BlogTitle"]),
                           BlogImg = Convert.ToString(dr["BlogImg"]),
                           BlogUrl = Convert.ToString(dr["BlogUrl"]),
                           Category = Convert.ToString(dr["Category"]),
                           PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                           PostedBy = Convert.ToString(dr["PostedBy"]),
                           AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                           Status = Convert.ToString(dr["Status"])
                       }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetBySeoMasterId", ex.Message);
        }
        return lst;
    }

    public static bool IsBlogMapped(SqlConnection conSR, string seoMasterId, string blogId)
    {
        bool exists = false;
        try
        {
            string query = "Select Count(*) from SeoMasterBlogs where Status='Active' and SeoMasterId=@SeoMasterId and BlogId=@BlogId";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = seoMasterId;
                cmd.Parameters.AddWithValue("@BlogId", SqlDbType.Int).Value = Convert.ToInt32(blogId);
                conSR.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                conSR.Close();
                exists = count > 0;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "IsBlogMapped", ex.Message);
        }
        return exists;
    }

    public static int InsertMappedBlog(SqlConnection conSR, SeoMasterBlogs s)
    {
        int result = 0;
        try
        {
            string query = "Insert Into SeoMasterBlogs (SeoMasterId,BlogId,AddedBy,AddedOn,AddedIp,Status) values (@SeoMasterId,@BlogId,@AddedBy,@AddedOn,@AddedIp,@Status)";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@SeoMasterId", SqlDbType.NVarChar).Value = s.SeoMasterId;
                cmd.Parameters.AddWithValue("@BlogId", SqlDbType.Int).Value = s.BlogId;
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = s.AddedBy;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = s.AddedIp;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InsertMappedBlog", ex.Message);
        }
        return result;
    }

    public static int DeleteMappedBlog(SqlConnection conSR, int id)
    {
        int result = 0;
        try
        {
            string query = "Update SeoMasterBlogs Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteMappedBlog", ex.Message);
        }
        return result;
    }

    #endregion
}