<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-T78GXY1Y17');
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="section-404 section-lg-space pt-5 pp-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4">
                <div class="image-404">
                    <img src="/assets/images/Thank-You.gif" class="img-fluid    " alt="">
                </div>
            </div>

            <div class="col-lg-12 text-center">
                <div class="contain-404">
                    <h3 class="text-content">Your query has been posted successfully. We will get back to you soon.</h3>
                    <button onclick="window.location.href = '/';" type="button"
                        class="btn btn-primary mb-5 mt-5">
                        Back To Home</button>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>

