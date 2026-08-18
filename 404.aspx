<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <section class="section-404 section-lg-space pt-5 pp-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4">
                        <div class="image-404">
                            <img src="/assets/images/404.jpg" class="img-fluid    " alt="">
                        </div>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div class="contain-404">
                            <h3 class="text-content">The page you are looking for could not be found. The link to this
                            address may be outdated or we may have moved the since you last bookmarked it.</h3>
                            <button onclick="window.location.href = '/';" type="button"
                                class="btn btn-primary mb-5 mt-5">
                                Back To Home</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>


