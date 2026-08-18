//using Ingenico.Connect.Sdk.Domain.Token.Definitions;
//using NLog.Fluent;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Blogs
/// </summary>
public class Blogs
{
    #region Blog Properties
    public int Id { set; get; }
    public string BlogTag { set; get; }
    public string BlogTitle { set; get; }
    public string BlogUrl { set; get; }
    public DateTime PostedOn { get; set; }
    public string PostedBy { get; set; }
    public string DisplayHome { set; get; }
    public string FullDesc { get; set; }
    public string BlogImg { set; get; }
    public string DetailImg { set; get; }
    public string BannerImg { set; get; }
    public string PageTitle { set; get; }
    public string MetaDesc { set; get; }
    public string MetaKey { set; get; }
    public DateTime AddedOn { set; get; }
    public string AddedIP { set; get; }
    public string AddedBy { set; get; }
    public DateTime UpdatedOn { set; get; }
    public string UpdatedIp { set; get; }
    public string UpdatedBy { set; get; }
    public string Status { set; get; }
    public int RowNumber { get; set; }
    public int TotalCount { get; set; }
    public string ShortDesc { get; set; }
    public string Category { set; get; }
    public int ReadingTime { set; get; }

    #endregion

    #region Blog Functions
    public static int DeleteBlog(SqlConnection conSR, Blogs blogs)
    {
        int result = 0;
        try
        {
            string query = "Update Blogs Set Status=@Status, UpdatedBy=@UpdatedBy,UpdatedOn=@UpdatedOn, UpdatedIP=@UpdatedIP Where Id=@Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = blogs.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                cmd.Parameters.AddWithValue("@UpdatedOn", SqlDbType.NVarChar).Value = blogs.UpdatedOn;
                cmd.Parameters.AddWithValue("@UpdatedIP", SqlDbType.NVarChar).Value = blogs.UpdatedIp;
                cmd.Parameters.AddWithValue("@UpdatedBy", SqlDbType.NVarChar).Value = blogs.UpdatedBy;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteBlog", ex.Message);
        }
        return result;
    }
    public static Blogs GetBlogById(SqlConnection conSR, int id)
    {
        var categories = new Blogs();
        try
        {
            string query = "Select * from Blogs where Status!='Deleted' and Id=@Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.Int).Value = id;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                categories = (from DataRow dr in dt.Rows
                              select new Blogs()
                              {
                                  Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                  BlogTag = Convert.ToString(dr["BlogTag"]),
                                  BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                  BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                  PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                  PostedBy = Convert.ToString(dr["PostedBy"]),
                                  DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                  FullDesc = Convert.ToString(dr["FullDesc"]),
                                  BlogImg = Convert.ToString(dr["BlogImg"]),
                                  DetailImg = Convert.ToString(dr["DetailImg"]),
                                  BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                  PageTitle = Convert.ToString(dr["PageTitle"]),
                                  MetaKey = Convert.ToString(dr["MetaKeys"]),
                                  MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                  AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                  AddedIP = Convert.ToString(dr["AddedIP"]),
                                  AddedBy = Convert.ToString(dr["AddedBy"]),
                                  UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                  UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                  UpdatedBy = Convert.ToString(dr["UpdatedBy"]),
                                  Status = Convert.ToString(dr["Status"]),
                                  ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                  Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                  ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                              }).FirstOrDefault();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogDetailsWithId", ex.Message);
        }
        return categories;
    }
    public static Blogs GetBlogDetailsWithUrl(SqlConnection conSR, string url)
    {
        var categories = new Blogs();
        try
        {
            string query = "Select * from Blogs where Status='Published' and BlogUrl=@BlogUrl ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@BlogUrl", SqlDbType.NVarChar).Value = url;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                categories = (from DataRow dr in dt.Rows
                              select new Blogs()
                              {
                                  Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                  BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                  BlogTag = Convert.ToString(dr["BlogTag"]),
                                  BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                  PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                  PostedBy = Convert.ToString(dr["PostedBy"]),
                                  DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                  FullDesc = Convert.ToString(dr["FullDesc"]),
                                  BlogImg = Convert.ToString(dr["BlogImg"]),
                                  DetailImg = Convert.ToString(dr["DetailImg"]),
                                  BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                  PageTitle = Convert.ToString(dr["PageTitle"]),
                                  MetaKey = Convert.ToString(dr["MetaKeys"]),
                                  MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                  AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                  AddedIP = Convert.ToString(dr["AddedIP"]),
                                  AddedBy = Convert.ToString(dr["AddedBy"]),
                                  UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                  UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                  UpdatedBy = Convert.ToString(dr["UpdatedBy"]),
                                  Status = Convert.ToString(dr["Status"]),
                                  ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                  Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                  ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                              }).FirstOrDefault();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetBlogDetailsWithUrl", ex.Message);
        }
        return categories;
    }
    public static List<Blogs> GetAllBlogs(SqlConnection conSR)
    {
        var ListOfBolgs = new List<Blogs>();
        try
        {
            string query = "Select *,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.AddedBy) AddedBy1,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.UpdatedBy) UpdatedBy1 from Blogs where Status!='Deleted' Order by Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListOfBolgs = (from DataRow dr in dt.Rows
                               select new Blogs()
                               {
                                   Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                   BlogTag = Convert.ToString(dr["BlogTag"]),
                                   BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                   BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                   PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                   PostedBy = Convert.ToString(dr["PostedBy"]),
                                   DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                   FullDesc = Convert.ToString(dr["FullDesc"]),
                                   BlogImg = Convert.ToString(dr["BlogImg"]),
                                   DetailImg = Convert.ToString(dr["DetailImg"]),
                                   BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                   PageTitle = Convert.ToString(dr["PageTitle"]),
                                   MetaKey = Convert.ToString(dr["MetaKeys"]),
                                   MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                   AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                   AddedIP = Convert.ToString(dr["AddedIP"]),
                                   AddedBy = Convert.ToString(dr["AddedBy1"]),
                                   UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                   UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                   UpdatedBy = Convert.ToString(dr["UpdatedBy1"]),
                                   Status = Convert.ToString(dr["Status"]),
                                   ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                   Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                   ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                               }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogs", ex.Message);
        }
        return ListOfBolgs;
    }



    public static List<Blogs> GetAllBlogsForLanding(SqlConnection conSR)
    {
        var ListOfBolgs = new List<Blogs>();
        try
        {
            string query = "Select *,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.AddedBy) AddedBy1,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.UpdatedBy) UpdatedBy1 from Blogs where Status='Published' Order by Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListOfBolgs = (from DataRow dr in dt.Rows
                               select new Blogs()
                               {
                                   Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                   BlogTag = Convert.ToString(dr["BlogTag"]),
                                   BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                   BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                   PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                   PostedBy = Convert.ToString(dr["PostedBy"]),
                                   DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                   FullDesc = Convert.ToString(dr["FullDesc"]),
                                   BlogImg = Convert.ToString(dr["BlogImg"]),
                                   DetailImg = Convert.ToString(dr["DetailImg"]),
                                   BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                   PageTitle = Convert.ToString(dr["PageTitle"]),
                                   MetaKey = Convert.ToString(dr["MetaKeys"]),
                                   MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                   AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                   AddedIP = Convert.ToString(dr["AddedIP"]),
                                   AddedBy = Convert.ToString(dr["AddedBy1"]),
                                   UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                   UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                   UpdatedBy = Convert.ToString(dr["UpdatedBy1"]),
                                   Status = Convert.ToString(dr["Status"]),
                                   ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                   Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                   ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                               }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogs", ex.Message);
        }
        return ListOfBolgs;
    }

    public static List<Blogs> Gettop4Blogs(SqlConnection conSR)
    {
        var ListOfBolgs = new List<Blogs>();
        try
        {
            string query = "Select top 4 *,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.AddedBy) AddedBy1,(Select Top 1 UserName From CreateUser Where UserGuid=Blogs.UpdatedBy) UpdatedBy1 from Blogs where Status!='Deleted' Order by Id desc ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListOfBolgs = (from DataRow dr in dt.Rows
                               select new Blogs()
                               {
                                   Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                   BlogTag = Convert.ToString(dr["BlogTag"]),
                                   BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                   BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                   PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                   PostedBy = Convert.ToString(dr["PostedBy"]),
                                   DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                   FullDesc = Convert.ToString(dr["FullDesc"]),
                                   BlogImg = Convert.ToString(dr["BlogImg"]),
                                   DetailImg = Convert.ToString(dr["DetailImg"]),
                                   BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                   PageTitle = Convert.ToString(dr["PageTitle"]),
                                   MetaKey = Convert.ToString(dr["MetaKeys"]),
                                   MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                   AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                   AddedIP = Convert.ToString(dr["AddedIP"]),
                                   AddedBy = Convert.ToString(dr["AddedBy1"]),
                                   UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                   UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                   UpdatedBy = Convert.ToString(dr["UpdatedBy1"]),
                                   Status = Convert.ToString(dr["Status"]),
                                   ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                   Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                   ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                               }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogs", ex.Message);
        }
        return ListOfBolgs;
    }
    public static List<Blogs> GetAllBlogsyouByUrl(SqlConnection conSR, string BlogUrl)
    {
        var ListOfBolgs = new List<Blogs>();
        try
        {
            string query = "Select Top 3 * from Blogs where BlogUrl!=@BlogUrl and status='Published' order by id";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@BlogUrl", SqlDbType.NVarChar).Value = BlogUrl;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ListOfBolgs = (from DataRow dr in dt.Rows
                               select new Blogs()
                               {
                                   Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                   BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                   BlogTag = Convert.ToString(dr["BlogTag"]),
                                   BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                   PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                   PostedBy = Convert.ToString(dr["PostedBy"]),
                                   DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                   FullDesc = Convert.ToString(dr["FullDesc"]),
                                   BlogImg = Convert.ToString(dr["BlogImg"]),
                                   DetailImg = Convert.ToString(dr["DetailImg"]),
                                   BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                   PageTitle = Convert.ToString(dr["PageTitle"]),
                                   MetaKey = Convert.ToString(dr["MetaKeys"]),
                                   MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                   Status = Convert.ToString(dr["Status"]),
                                   ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                   Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                   ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                               }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllBlogsyouByUrl", ex.Message);
        }
        return ListOfBolgs;
    }

    public static int UpdateBlog(SqlConnection conSR, Blogs blogs)
    {
        int result = 0;
        try
        {
            string query = "Update Blogs Set  BlogTag=@BlogTag,BlogTitle=@BlogTitle,BlogUrl=@BlogUrl,PostedOn=@PostedOn,PostedBy=@PostedBy,DisplayHome=@DisplayHome, FullDesc=@FullDesc, BlogImg=@BlogImg, DetailImg=@DetailImg, BannerImg=@BannerImg, MetaKeys=@MetaKeys, MetaDesc=@MetaDesc, PageTitle=@PageTitle, UpdatedOn=@UpdatedOn, UpdatedIp=@UpdatedIp, UpdatedBy=@UpdatedBy,ShortDesc=@ShortDesc, Category=@Category, ReadingTime=@ReadingTime Where Id=@Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = blogs.Id;
                cmd.Parameters.AddWithValue("@BlogTitle", SqlDbType.NVarChar).Value = blogs.BlogTitle;
                cmd.Parameters.AddWithValue("@BlogTag", SqlDbType.NVarChar).Value = blogs.BlogTag;
                cmd.Parameters.AddWithValue("@BlogUrl", SqlDbType.NVarChar).Value = blogs.BlogUrl;
                cmd.Parameters.AddWithValue("@PostedOn", SqlDbType.NVarChar).Value = blogs.PostedOn;
                cmd.Parameters.AddWithValue("@PostedBy", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.PostedBy) ? "" : blogs.PostedBy;
                cmd.Parameters.AddWithValue("@DisplayHome", SqlDbType.NVarChar).Value = blogs.DisplayHome;
                cmd.Parameters.AddWithValue("@FullDesc", SqlDbType.NVarChar).Value = blogs.FullDesc;
                cmd.Parameters.AddWithValue("@BlogImg", SqlDbType.NVarChar).Value = blogs.BlogImg;
                cmd.Parameters.AddWithValue("@DetailImg", SqlDbType.NVarChar).Value = blogs.DetailImg;
                cmd.Parameters.AddWithValue("@BannerImg", SqlDbType.NVarChar).Value = blogs.BannerImg;
                cmd.Parameters.AddWithValue("@MetaKeys", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.MetaKey) ? "" : blogs.MetaKey;
                cmd.Parameters.AddWithValue("@MetaDesc", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.MetaDesc) ? "" : blogs.MetaDesc;
                cmd.Parameters.AddWithValue("@PageTitle", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.PageTitle) ? "" : blogs.PageTitle;
                cmd.Parameters.AddWithValue("@UpdatedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@UpdatedIp", SqlDbType.NVarChar).Value = CommonModel.IPAddress();
                cmd.Parameters.AddWithValue("@UpdatedBy", SqlDbType.NVarChar).Value = blogs.UpdatedBy;
                cmd.Parameters.AddWithValue("@ShortDesc", SqlDbType.NVarChar).Value = blogs.ShortDesc;
                cmd.Parameters.AddWithValue("@Category", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.Category) ? "" : blogs.Category;
                cmd.Parameters.AddWithValue("@ReadingTime", SqlDbType.Int).Value = blogs.ReadingTime;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UpdateBlog", ex.Message);
        }
        return result;
    }
    public static int WriteBlog(SqlConnection conSR, Blogs blogs)
    {
        int result = 0;
        try
        {
            string query = "Insert Into Blogs (BlogTag,BlogTitle,BlogUrl,PostedOn,PostedBy,DisplayHome,FullDesc,BlogImg,DetailImg,BannerImg,MetaKeys,MetaDesc,PageTitle,AddedOn,AddedIP,AddedBy,UpdatedOn,UpdatedIP,UpdatedBy,Status,ShortDesc,Category,ReadingTime) " +
                                      "values(@BlogTag,@BlogTitle,@BlogUrl,@PostedOn,@PostedBy,@DisplayHome,@FullDesc,@BlogImg,@DetailImg,@BannerImg,@MetaKeys,@MetaDesc,@PageTitle,@AddedOn,@AddedIP,@AddedBy,@UpdatedOn,@UpdatedIP,@UpdatedBy,@Status,@ShortDesc,@Category,@ReadingTime) select SCOPE_IDENTITY()";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@BlogTitle", SqlDbType.NVarChar).Value = blogs.BlogTitle;
                cmd.Parameters.AddWithValue("@BlogTag", SqlDbType.NVarChar).Value = blogs.BlogTag;
                cmd.Parameters.AddWithValue("@BlogUrl", SqlDbType.NVarChar).Value = blogs.BlogUrl;
                cmd.Parameters.AddWithValue("@PostedOn", SqlDbType.NVarChar).Value = blogs.PostedOn;
                cmd.Parameters.AddWithValue("@PostedBy", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.PostedBy) ? "" : blogs.PostedBy;
                cmd.Parameters.AddWithValue("@DisplayHome", SqlDbType.NVarChar).Value = blogs.DisplayHome;
                cmd.Parameters.AddWithValue("@FullDesc", SqlDbType.NVarChar).Value = blogs.FullDesc;
                cmd.Parameters.AddWithValue("@BlogImg", SqlDbType.NVarChar).Value = blogs.BlogImg;
                cmd.Parameters.AddWithValue("@DetailImg", SqlDbType.NVarChar).Value = blogs.DetailImg;
                cmd.Parameters.AddWithValue("@BannerImg", SqlDbType.NVarChar).Value = blogs.BannerImg;
                cmd.Parameters.AddWithValue("@MetaKeys", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.MetaKey) ? "" : blogs.MetaKey;
                cmd.Parameters.AddWithValue("@MetaDesc", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.MetaDesc) ? "" : blogs.MetaDesc;
                cmd.Parameters.AddWithValue("@PageTitle", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.PageTitle) ? "" : blogs.PageTitle;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIP", SqlDbType.NVarChar).Value = CommonModel.IPAddress();
                cmd.Parameters.AddWithValue("@AddedBy", SqlDbType.NVarChar).Value = blogs.AddedBy;
                cmd.Parameters.AddWithValue("@UpdatedOn", SqlDbType.NVarChar).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@UpdatedIp", SqlDbType.NVarChar).Value = CommonModel.IPAddress();
                cmd.Parameters.AddWithValue("@UpdatedBy", SqlDbType.NVarChar).Value = blogs.AddedBy;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = blogs.Status;
                cmd.Parameters.AddWithValue("@ShortDesc", SqlDbType.NVarChar).Value = blogs.ShortDesc;
                cmd.Parameters.AddWithValue("@Category", SqlDbType.NVarChar).Value = string.IsNullOrEmpty(blogs.Category) ? "" : blogs.Category;
                cmd.Parameters.AddWithValue("@ReadingTime", SqlDbType.Int).Value = blogs.ReadingTime;


                conSR.Open();
                result = Convert.ToInt32(cmd.ExecuteScalar());
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "WriteBlog", ex.Message);
        }
        return result;
    }
    #endregion



    public static List<Blogs> GetAllListBlogs(SqlConnection conSR, int cPage)
    {
        List<Blogs> Blogs = new List<Blogs>();
        try
        {

            var qry = @"Select top 6 * from (Select ROW_NUMBER() OVER(Order by  PostedOn desc) AS RowNo,(select count(id) from blogs where status='Published' ) as TotalCount,*
  from Blogs where Status='Published') x where RowNo > " + (6 * (cPage - 1));
            using (SqlCommand cmd = new SqlCommand(qry, conSR))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                Blogs = (from DataRow dr in dt.Rows
                         select new Blogs()
                         {
                             Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                             BlogTag = Convert.ToString(dr["BlogTag"]),
                             BlogTitle = Convert.ToString(dr["BlogTitle"]),
                             BlogUrl = Convert.ToString(dr["BlogUrl"]),
                             PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                             PostedBy = Convert.ToString(dr["PostedBy"]),
                             DisplayHome = Convert.ToString(dr["DisplayHome"]),
                             FullDesc = Convert.ToString(dr["FullDesc"]),
                             BlogImg = Convert.ToString(dr["BlogImg"]),
                             DetailImg = Convert.ToString(dr["DetailImg"]),
                             BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                             PageTitle = Convert.ToString(dr["PageTitle"]),
                             MetaKey = Convert.ToString(dr["MetaKeys"]),
                             MetaDesc = Convert.ToString(dr["MetaDesc"]),
                             AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                             AddedIP = Convert.ToString(dr["AddedIP"]),
                             AddedBy = Convert.ToString(dr["AddedBy"]),
                             UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                             UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                             UpdatedBy = Convert.ToString(dr["UpdatedBy"]),
                             Status = Convert.ToString(dr["Status"]),
                             ShortDesc = Convert.ToString(dr["ShortDesc"]),
                             TotalCount = Convert.ToInt32(Convert.ToString(dr["TotalCount"])),
                             Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                             ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                         }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllListBlogs", ex.Message);
        }
        return Blogs;
    }
    public static Blogs GetNextRecord(SqlConnection conSR, int id)
    {
        var nextBlog = new Blogs();
        try
        {
            string query = "select top 1 * from Blogs WHERE Id > @id ORDER BY Id ASC";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                nextBlog = (from DataRow dr in dt.Rows
                            select new Blogs()
                            {
                                Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                BlogTitle = Convert.ToString(dr["BlogTitle"]),
                                BlogUrl = Convert.ToString(dr["BlogUrl"]),
                                PostedOn = Convert.ToDateTime(Convert.ToString(dr["PostedOn"])),
                                PostedBy = Convert.ToString(dr["PostedBy"]),
                                DisplayHome = Convert.ToString(dr["DisplayHome"]),
                                FullDesc = Convert.ToString(dr["FullDesc"]),
                                BlogImg = Convert.ToString(dr["BlogImg"]),
                                DetailImg = Convert.ToString(dr["DetailImg"]),
                                BannerImg = dt.Columns.Contains("BannerImg") ? Convert.ToString(dr["BannerImg"]) : "",
                                PageTitle = Convert.ToString(dr["PageTitle"]),
                                MetaKey = Convert.ToString(dr["MetaKeys"]),
                                MetaDesc = Convert.ToString(dr["MetaDesc"]),
                                AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                AddedIP = Convert.ToString(dr["AddedIP"]),
                                AddedBy = Convert.ToString(dr["AddedBy"]),
                                UpdatedOn = Convert.ToDateTime(dr["UpdatedOn"].ToString()),
                                UpdatedIp = Convert.ToString(dr["UpdatedIP"]),
                                UpdatedBy = Convert.ToString(dr["UpdatedBy"]),
                                ShortDesc = Convert.ToString(dr["ShortDesc"]),
                                Status = Convert.ToString(dr["Status"]),
                                Category = dt.Columns.Contains("Category") ? Convert.ToString(dr["Category"]) : "",
                                ReadingTime = dt.Columns.Contains("ReadingTime") && dr["ReadingTime"] != DBNull.Value ? Convert.ToInt32(dr["ReadingTime"]) : 0
                            }).FirstOrDefault();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetNextRecord", ex.Message);
        }
        return nextBlog;
    }


    public static int StatusBlog(SqlConnection conSR, Blogs blogs)
    {
        int result = 0;
        try
        {
            string query = "Update Blogs Set Status=@Status, UpdatedBy=@UpdatedBy,UpdatedOn=@UpdatedOn, UpdatedIP=@UpdatedIP Where Id=@Id ";
            using (SqlCommand cmd = new SqlCommand(query, conSR))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = blogs.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = blogs.Status;
                cmd.Parameters.AddWithValue("@UpdatedOn", SqlDbType.NVarChar).Value = blogs.UpdatedOn;
                cmd.Parameters.AddWithValue("@UpdatedIP", SqlDbType.NVarChar).Value = blogs.UpdatedIp;
                cmd.Parameters.AddWithValue("@UpdatedBy", SqlDbType.NVarChar).Value = blogs.UpdatedBy;
                conSR.Open();
                result = cmd.ExecuteNonQuery();
                conSR.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "StatusBlog", ex.Message);
        }
        return result;
    }


}