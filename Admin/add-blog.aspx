<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="add-blog.aspx.cs" Inherits="Admin_add_blog" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Add New Blog</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="/Admin/">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Blogs</a></li>
                                <li class="breadcrumb-item active"><%=Request.QueryString["id"] == null ? "Add" : "Update" %>  Blog</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header align-items-center d-flex">
                            <h4 class="card-title mb-0 flex-grow-1"><%=Request.QueryString["id"] != null ? "Update" : "Add" %> Blog Info</h4>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12 mb-3">
                                    <label class="form-label" for="project-title-input">Blog Title <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" MaxLength="150" class="form-control mb-2 mr-sm-2  txtName" ID="txtBlogTitle" placeholder="Enter Blog title" />
                                    <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtBlogTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
<%--                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtBlogTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ValidationExpression="^[a-zA-Z0-9 .,-]+$" ErrorMessage="Special characters are not allowed in Blog Title"></asp:RegularExpressionValidator>--%>
                                </div>
                                <div class="col-lg-12 mb-3">
                                    <label class="form-label" for="project-title-input">Blog Url <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" ID="txtUrl" CssClass="form-control txtUrl" PlaceHolder="Blog Url"></asp:TextBox>

                                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="txtUrl" ForeColor="Red" ErrorMessage="Field can't be empty" ID="RequiredFieldValidator1" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtUrl" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ValidationExpression="^[a-zA-Z0-9-]+$" ErrorMessage="Only letters, numbers and - are allowed in Blog Url"></asp:RegularExpressionValidator>
                                </div>

                            </div>
                            <div class="row">
                                <%--<div class="col-lg-3 mb-3">
                                    <label class="form-label" for="project-title-input">Blog Tag <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" MaxLength="30" class="form-control mb-2 mr-sm-2 alphaonly" ID="txtBlogTag" placeholder="Enter Blog Tag" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBlogTag" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                </div>--%>
                                <div class="col-lg-6 mb-3">
                                    <label for="datepicker-postedOn-input" class="form-label">PostedOn <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" ID="txtPostedOn" CssClass="form-control datepickernew" PlaceHolder="Posted On" autocomplete="off"></asp:TextBox>

                                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="txtPostedOn" ForeColor="Red" ErrorMessage="Field can't be empty" ID="RequiredFieldValidator2" ValidationGroup="Save"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-6 mb-3">
                                    <label class="form-label" for="project-PostedBy-input">Posted By <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" MaxLength="30" class="form-control mb-2 mr-sm-2 alphaonly" ID="txtpostedBy" placeholder="Enter Posted By" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpostedBy" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                </div>
                              <%--  <div class="col-lg-3 mb-3">
                                    <label class="form-label" for="project-ReadingTime-input">Reading Time (minutes) <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" MaxLength="2" class="form-control mb-2 mr-sm-2 readingtime-input" ID="txtReadingTime" placeholder="e.g. 5" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtReadingTime" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtReadingTime" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ValidationExpression="^[1-9][0-9]?$" ErrorMessage="Enter a valid number of minutes (1-99)"></asp:RegularExpressionValidator>
                                </div>--%>
                            </div>

                            <div class="row">
                                <div class="col-lg-12 mb-3">
                                    <label class="form-label">Short Description <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server"
                                        ID="txtShortDesc"
                                        TextMode="MultiLine"
                                        Rows="3"
                                        MaxLength="300"
                                        CssClass="form-control shortdesc-count"
                                        placeholder="Enter short description (max 300 characters)" />
                                    <small><span class="shortdesc-chars">0</span>/300 characters</small>
                                    <asp:RequiredFieldValidator
                                        ID="rfvShortDesc"
                                        runat="server"
                                        ControlToValidate="txtShortDesc"
                                        Display="Dynamic"
                                        ForeColor="Red"
                                        SetFocusOnError="true"
                                        ValidationGroup="Save"
                                        ErrorMessage="Field can't be empty">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-lg-12 mb-3">
                                    <label>Full Description <sup class="valstarclr">*</sup></label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" class="form-control mb-2 mr-sm-2 summernote" ID="Txtfuldesc" />
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtfuldesc" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                        </div>

                        <!-- end card body -->
                    </div>

                    <div class="row mb-3">
                        <div class="text-start mb-1">
                            <p style="color: red; font-weight: bold;">Note: Fields marked with <sup>*</sup> are required</p>
                        </div>
                        <div class="text-start mb-4">
                            <div>
                                <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="Save" CssClass="btn btn-info waves-effect waves-light " OnClientClick="tinyMCE.triggerSave(false,true);" OnClick="btnSave_Click" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-outline-danger waves-effect waves-light" OnClick="btnClear_Click" />
                                <asp:Label ID="lblThumb" runat="server" Visible="false"></asp:Label>
                                <asp:Label ID="lblDetailImg" runat="server" Visible="false"></asp:Label>
                                <asp:Label ID="lblBannerImg" runat="server" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-lg-4">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0">SEO</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-3">
                                <label for="choices-Category-input" class="form-label">Category <sup class="valstarclr">*</sup></label>
                                <div class="col-lg-12">
                                    <asp:TextBox runat="server" ID="txtCategory" CssClass="form-control" PlaceHolder="Enter Category"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCategory" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="choices-PageTitle-input" class="form-label">Page Title</label>
                                <div class="col-lg-12">
                                    <asp:TextBox runat="server" data-id="Title" ID="txtPageTitle" CssClass="form-control textcount1" Placeholder="Page Title"></asp:TextBox>
                                    <span class="mt-2"></span>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="choices-MetaKey-input" class="form-label">Meta Key</label>
                                <div class="col-lg-12">
                                    <asp:TextBox runat="server" ID="txtMetakey" data-id="MetaKey" CssClass="form-control " PlaceHolder="Meta Key"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="choices-Metadesc-input" class="form-label">Meta Description</label>
                                <div class="col-lg-12">
                                    <asp:TextBox runat="server" ID="txtMetaDesc" data-id="MetaDesc" CssClass="form-control textcount1" TextMode="MultiLine" Placeholder="Meta Description"></asp:TextBox>
                                    <span class="mt-2"></span>
                                </div>
                            </div>
                            <div class="col-lg-12 mb-3">
                                <input class="form-check-input" type="checkbox" id="chkHome" runat="server" />
                                <label class="form-check-label" for="<%=chkHome.ClientID %>">
                                    Display Home
                                </label>
                            </div>
                        </div>
                        <!-- end card body -->
                    </div>
                    <!-- end card -->

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0">Upload Images</h5>
                        </div>
                        <div class="card-body">
                            <div class="mb-4">
                                <label class="form-label" for="project-thumbnail-img">Thumb Image <sup class="valstarclr">*</sup></label>
                                <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="FileUpload1" />
                                <small style="color: red;">Image format .png, .jpeg, .jpg, .webp with 600 W × 480 H px </small><small style="color: forestgreen;"><b>(Limit the size of the image.)</b></small>

                                <%=strThumbImage %>
                                <asp:RequiredFieldValidator ID="ReqFileUpload1" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Please select a file to upload"></asp:RequiredFieldValidator>

                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="project-blogimg-img">Blog Image <sup class="valstarclr">*</sup></label>
                                <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="FileUpload2" />
                                <small style="color: red;">Image format .png, .jpeg, .jpg, .webp with 1200 W × 800 H px</small>

                                <%=strDetailImg %>
                                <asp:RequiredFieldValidator ID="ReqFileUpload2" runat="server" ControlToValidate="FileUpload2" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Please select a file to upload"></asp:RequiredFieldValidator>

                            </div>
                           <%-- <div class="mb-4">
                                <label class="form-label" for="project-banner-img">Banner Image <sup class="valstarclr">*</sup></label>
                                <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="FileUpload3" />
                                <small style="color: red;">Image format .png, .jpeg, .jpg, .webp with 1600 W × 1067 H px</small>

                                <%=strBannerImg %>
                                <asp:RequiredFieldValidator ID="ReqFileUpload3" runat="server" ControlToValidate="FileUpload3" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Please select a file to upload"></asp:RequiredFieldValidator>

                            </div>--%>
                        </div>
                        <!-- end card body -->
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
    </div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {

            // Calendar-only date field: typing disabled, future dates blocked.
            if (typeof flatpickr !== 'undefined') {
                flatpickr(".datepickernew", {
                    dateFormat: "d-M-Y",
                    maxDate: "today",
                    allowInput: false,
                    disableMobile: true
                });
            }

            // Blog Title: strip anything that isn't a letter, number, space, comma, period or hyphen.
            //$(".txtName").on('input', function () {
            //    var cleaned = this.value.replace(/[^a-zA-Z0-9 .,-]/g, '');
            //    if (cleaned !== this.value) { this.value = cleaned; }
            //});

            // Blog Url: strip anything that isn't a letter, number or hyphen.
            $(".txtUrl").on('input', function () {
                var cleaned = this.value.replace(/[^a-zA-Z0-9-]/g, '');
                if (cleaned !== this.value) { this.value = cleaned; }
            });

            // Reading Time: digits only, max 2 characters.
            $(".readingtime-input").on('input', function () {
                var cleaned = this.value.replace(/[^0-9]/g, '').substring(0, 2);
                if (cleaned !== this.value) { this.value = cleaned; }
            });

            $(".txtName").change(function () {
                $(".txtUrl").val($(".txtName").val().toLowerCase().replace(/\./g, '').replace(/\:/g, '-').replace(/\//g, '').replace(/\\/g, '').replace(/\*/g, '').replace(/\?/g, '').replace(/\~/g, '').replace(/\ /g, '-').replace(/\@/g, '-').replace(/\#/g, '-').replace(/\$/g, '-').replace(/\%/g, '-').replace(/\&/g, '-').replace(/\'/g, '-').replace(/\:/g, '-').replace(/\;/g, '-').replace(/[^a-zA-Z0-9-]/g, ''));

            });
            $(".textcount1").on('keyup', function (event) {
                var elem = $(this);
                var tps = elem.attr("data-id");
                var len = elem.val().length;
                elem.siblings('span').text("Character count : " + len);
                if (tps === "Title") {
                    if (len > 60) {
                        elem.siblings('span').css("color", "red");
                    }
                    else {
                        elem.siblings('span').css("color", "green");
                    }
                }
                else if (tps === "MetaDesc") {
                    if (len > 160) {
                        elem.siblings('span').css("color", "red");
                    }
                    else {
                        elem.siblings('span').css("color", "green");
                    }
                }
            });

        });
    </script>
</asp:Content>
