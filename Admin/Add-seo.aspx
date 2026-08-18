<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add-Seo.aspx.cs" Inherits="Admin_Add_Seo" ValidateRequest="false" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="assets/libs/dropzone/dropzone.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="sc1" runat="server"></asp:ToolkitScriptManager>
    <div class="page-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-3">Add Landing Page</h4>
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                                <li class="breadcrumb-item active"><%=Request.QueryString["id"] == null ? "Add" : "Update" %> Add Landing Page</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <ul class="nav nav-pills nav-danger mb-3" role="tablist">
                        <li class="nav-item" id="tabGeneral" runat="server">
                            <a class="nav-link active tabGeneral" data-bs-toggle="tab" href="#tabsNavigationSimple1" aria-selected="false">General Info</a>
                        </li>
                        <li class="nav-item" id="tabFaqs" runat="server" visible="false">
                            <a class="nav-link tabFaqs" data-bs-toggle="tab" href="#tabsNavigationSimple2" aria-selected="false">FAQs</a>
                        </li>
                        <li class="nav-item" id="tabTestimonials" runat="server" visible="false">
                            <a class="nav-link tabTestimonials" data-bs-toggle="tab" href="#tabsNavigationSimple3" aria-selected="true">Testimonials</a>
                        </li>

                        <li class="nav-item" id="tabSection3" runat="server" visible="false">
                            <a class="nav-link tabSection3" data-bs-toggle="tab" href="#tabsNavigationSimple4" aria-selected="false">Section 3</a>
                        </li>

                        <li class="nav-item" id="tabMapBlogs" runat="server" visible="false">
                            <a class="nav-link tabMapBlogs" data-bs-toggle="tab" href="#tabsNavigationSimple5" aria-selected="false">Map Blogs</a>
                        </li>
                    </ul>

                    <div class="tab-content text-muted">

                        <!-- ============ TAB 1: GENERAL INFO ============ -->
                        <div class="tab-pane active" id="tabsNavigationSimple1">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">Banner &amp; Content</h4>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Title <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Banner Title" class="form-control mb-2 mr-sm-2" MaxLength="150" ID="txtBannerTitle" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtBannerTitle" runat="server" ControlToValidate="txtBannerTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="col-lg-12 mt-2">
                                                            <label>URL <sup class="valstarclr">*</sup></label>
                                                            <div class="input-group">
                                                                <span class="input-group-text">/</span>
                                                                <asp:TextBox runat="server" PlaceHolder="auto-generated-from-title" class="form-control mb-2 mr-sm-2" MaxLength="255" ID="txtUrl" />
                                                            </div>
                                                         <%--   <small>Auto-generated from Title. You can edit it if needed.</small>--%>
                                                            <asp:RequiredFieldValidator ID="RequiredtxtUrl" runat="server" ControlToValidate="txtUrl" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Short Description <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Banner Short Description" Rows="3" TextMode="MultiLine" class="form-control mb-2 mr-sm-2" MaxLength="500" ID="txtBannerShortDesc" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtBannerShortDesc" runat="server" ControlToValidate="txtBannerShortDesc" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 1 Title <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Title" class="form-control mb-2 mr-sm-2" MaxLength="255" ID="txtTitle" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtTitle" runat="server" ControlToValidate="txtTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>



                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 1 Description <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" TextMode="MultiLine" class="form-control mb-2 mr-sm-2 summernote" ID="txtDescription" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtDescription" runat="server" ControlToValidate="txtDescription" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 2 Title <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Section 2 Title" class="form-control mb-2 mr-sm-2" MaxLength="255" ID="txtWhyChooseUsTitle" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtWhyChooseUsTitle" runat="server" ControlToValidate="txtWhyChooseUsTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 2 Description <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" TextMode="MultiLine" class="form-control mb-2 mr-sm-2 summernote" ID="txtWhyChooseUsDesc" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtWhyChooseUsDesc" runat="server" ControlToValidate="txtWhyChooseUsDesc" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>

                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 3 Title <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Section 3 Title" class="form-control mb-2 mr-sm-2" MaxLength="255" ID="txtSection3Title" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtSection3Title" runat="server" ControlToValidate="txtSection3Title" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Section 3 Short Description <sup class="valstarclr">*</sup></label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Section 3 Short Description" Rows="3" TextMode="MultiLine" class="form-control mb-2 mr-sm-2" MaxLength="500" ID="txtSection3ShortDesc" />
                                                            <asp:RequiredFieldValidator ID="RequiredtxtSection3ShortDesc" runat="server" ControlToValidate="txtSection3ShortDesc" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <%--<div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">Status</h4>
                                                </div>
                                                <div class="card-body">
                                                    <input class="form-check-input" type="checkbox" id="chkStatus" runat="server" checked="checked" />
                                                    <label class="form-check-label" for="<%=chkStatus.ClientID %>">Active</label>
                                                </div>
                                            </div>--%>

                                           <%-- <div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">Banner Image</h4>
                                                </div>
                                                <div class="card-body">
                                                    <label>Banner Image <sup class="valstarclr">*</sup></label>
                                                    <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="fuImage" />
                                                    <small>Image format .png, .jpeg, .jpg, .webp</small><br />
                                                    <%=strBannerImage %>
                                                    <asp:RequiredFieldValidator ID="RequiredfuImage" runat="server" ControlToValidate="fuImage" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblImage" runat="server" Visible="false"></asp:Label>
                                                </div>
                                            </div>--%>

                                            <div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">Title Image</h4>
                                                </div>
                                                <div class="card-body">
                                                    <label>Section 1 Image <sup class="valstarclr">*</sup></label>
                                                    <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="fuTitleImage" />
                                                    <small>Image format .png, .jpeg, .jpg, .webp with 800 W X 500 H px</small><br />
                                                    <%=strTitleImage %>
                                                    <asp:RequiredFieldValidator ID="RequiredfuTitleImage" runat="server" ControlToValidate="fuTitleImage" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblTitleImage" runat="server" Visible="false"></asp:Label>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">Section 2 Image</h4>
                                                </div>
                                                <div class="card-body">
                                                    <label>Section 2 Image <sup class="valstarclr">*</sup></label>
                                                    <asp:FileUpload runat="server" class="form-control mb-2 mr-sm-2" ID="fuWhyChooseUsImage" />
                                                    <small>Image format .png, .jpeg, .jpg, .webp with 800 W X 500 H px</small><br />
                                                    <%=strWhyChooseUsImage %>
                                                    <asp:RequiredFieldValidator ID="RequiredfuWhyChooseUsImage" runat="server" ControlToValidate="fuWhyChooseUsImage" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                    <asp:Label ID="lblWhyChooseUsImage" runat="server" Visible="false"></asp:Label>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-header align-items-center d-flex">
                                                    <h4 class="card-title mb-0 flex-grow-1">SEO Details</h4>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Page Title</label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Page Title" TextMode="MultiLine" class="form-control mb-2 mr-sm-2" ID="txtPTitle" />
                                                        </div>
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Meta Keywords</label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Meta Keywords" TextMode="MultiLine" class="form-control mb-2 mr-sm-2" ID="txtMKeys" />
                                                        </div>
                                                        <div class="col-lg-12 mt-2">
                                                            <label>Meta Description</label>
                                                            <asp:TextBox runat="server" PlaceHolder="Enter Meta Description" TextMode="MultiLine" class="form-control mb-2 mr-sm-2" ID="txtMetaDesc" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="text-start mb-1">
                                            <p style="color: red; font-weight: bold;">Note: Fields marked with <sup>*</sup> are required</p>
                                        </div>
                                        <div class="col-xxl-3 col-md-12">
                                            <input type="hidden" id="idSid" runat="server" />
                                            <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="Save" CssClass="btn btn-info waves-effect waves-light" OnClick="btnSave_Click" />
                                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-outline-danger waves-effect waves-light" OnClick="btnClear_Click1" />
                                        </div>
                                    </div>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="btnSave" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>

                        <!-- ============ TAB 2: FAQS ============ -->
                        <div class="tab-pane" id="tabsNavigationSimple2">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <label id="lblFaqMsg" style="width: 100%;" class="d-none"></label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-5">
                                                    <label>FAQ Title <sup class="valstarclr">*</sup></label>
                                                    <input type="text" id="txtFaqTitle" maxlength="255" placeholder="Enter FAQ Title" class="form-control mb-2 mr-sm-2" />
                                                    <span id="reqFaqTitle" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-5">
                                                    <label>FAQ Description <sup class="valstarclr">*</sup></label>
                                                    <textarea id="txtFaqDesc" rows="2" placeholder="Enter FAQ Answer/Description" class="form-control mb-2 mr-sm-2"></textarea>
                                                    <span id="reqFaqDesc" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-2 mt-4">
                                                    <a id="idBtnFaq" class="btn btn-info">Save</a>
                                                    <a id="cancelFaq" class="btn btn-danger faqccls" style="display: none;">Cancel</a>
                                                    <input type="hidden" id="hdFaqId" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <p style="color: red; font-weight: bold;">Note: Fields marked with <sup>*</sup> are required</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header align-items-center d-flex">
                                            <h4 class="card-title mb-0 flex-grow-1">Manage FAQs</h4>
                                        </div>
                                        <div class="card-body">
                                            <table id="faqTable" class="table table-striped align-middle table-nowrap mb-0" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Title</th>
                                                        <th scope="col">Description</th>
                                                        <th scope="col">Added On</th>
                                                        <th class="text-center">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbdyFaq"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- ============ TAB 3: TESTIMONIALS ============ -->
                        <div class="tab-pane" id="tabsNavigationSimple3">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <label id="lblTestiMsg" style="width: 100%;" class="d-none"></label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <label>Person Name <sup class="valstarclr">*</sup></label>
                                                    <input type="text" id="txtPersonName" maxlength="150" placeholder="Enter Person Name" class="form-control mb-2 mr-sm-2" />
                                                    <span id="reqPersonName" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-3">
                                                    <label>Designation <sup class="valstarclr">*</sup></label>
                                                    <input type="text" id="txtDesignation" maxlength="150" placeholder="Enter Designation" class="form-control mb-2 mr-sm-2" />
                                                    <span id="reqDesignation" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Rating <sup class="valstarclr">*</sup></label>
                                                    <input type="text" id="txtRating" maxlength="2" placeholder="1-5" onkeypress="return isNumber(event)" class="form-control mb-2 mr-sm-2" />
                                                    <span id="reqRating" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-4">
                                                    <label>Description <sup class="valstarclr">*</sup></label>
                                                    <textarea id="txtTestiDesc" rows="2" placeholder="Enter Testimonial Text" class="form-control mb-2 mr-sm-2"></textarea>
                                                    <span id="reqTestiDesc" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-12 mt-4">
                                                    <a id="idBtnTesti" class="btn btn-info">Save</a>
                                                    <a id="cancelTesti" class="btn btn-danger testiccls" style="display: none;">Cancel</a>
                                                    <input type="hidden" id="hdTestiId" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <p style="color: red; font-weight: bold;">Note: Fields marked with <sup>*</sup> are required</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header align-items-center d-flex">
                                            <h4 class="card-title mb-0 flex-grow-1">Manage Testimonials</h4>
                                        </div>
                                        <div class="card-body">
                                            <table id="testiTable" class="table table-striped align-middle table-nowrap mb-0" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Person Name</th>
                                                        <th scope="col">Designation</th>
                                                        <th scope="col">Rating</th>
                                                        <th scope="col">Description</th>
                                                        <th scope="col">Added On</th>
                                                        <th class="text-center">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbdyTesti"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <!-- ============ TAB 4: SECTION 3 ============ -->
                        <div class="tab-pane" id="tabsNavigationSimple4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <label id="lblSection3Msg" style="width: 100%;" class="d-none"></label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-5">
                                                    <label>Title <sup class="valstarclr">*</sup></label>
                                                    <input type="text" id="txtSec3ItemTitle" maxlength="255" placeholder="Enter Title" class="form-control mb-2 mr-sm-2" />
                                                    <span id="reqSec3Title" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-5">
                                                    <label>Description <sup class="valstarclr">*</sup></label>
                                                    <textarea id="txtSec3ItemDesc" rows="2" placeholder="Enter Description" class="form-control mb-2 mr-sm-2"></textarea>
                                                    <span id="reqSec3Desc" style="color: Red; visibility: hidden;">Field can't be empty</span>
                                                </div>
                                                <div class="col-lg-2 mt-4">
                                                    <a id="idBtnSection3" class="btn btn-info">Save</a>
                                                    <a id="cancelSection3" class="btn btn-danger section3ccls" style="display: none;">Cancel</a>
                                                    <input type="hidden" id="hdSection3Id" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <p style="color: red; font-weight: bold;">Note: Fields marked with <sup>*</sup> are required</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header align-items-center d-flex">
                                            <h4 class="card-title mb-0 flex-grow-1">Manage Section 3</h4>
                                        </div>
                                        <div class="card-body">
                                            <table id="section3Table" class="table table-striped align-middle table-nowrap mb-0" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Title</th>
                                                        <th scope="col">Description</th>
                                                        <th scope="col">Added On</th>
                                                        <th class="text-center">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbdySection3"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- ============ TAB 5: MAP BLOGS ============ -->
                        <div class="tab-pane" id="tabsNavigationSimple5">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <label id="lblBlogMsg" style="width: 100%;" class="d-none"></label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <label>Select Blog <sup class="valstarclr">*</sup></label>
                                                    <select id="ddlBlogSelect" class="form-control mb-2 mr-sm-2">
                                                        <option value="">-- Select Blog --</option>
                                                    </select>
                                                    <span id="reqBlogSelect" style="color: Red; visibility: hidden;">Please select a blog</span>
                                                </div>
                                                <div class="col-lg-4 mt-4">
                                                    <a id="idBtnAddBlog" class="btn btn-info">Add</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header align-items-center d-flex">
                                            <h4 class="card-title mb-0 flex-grow-1">Mapped Blogs</h4>
                                        </div>
                                        <div class="card-body">
                                            <table id="mapBlogsTable" class="table table-striped align-middle table-nowrap mb-0" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">Blog Title</th>
                                                        <th scope="col">Added On</th>
                                                        <th class="text-center">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbdyMapBlogs"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function () {

            $(document.body).on("click", ".tabFaqs", function () {
                BindAllFaqs($('#<%=idSid.ClientID %>').val());
            });

            $(document.body).on("click", ".tabTestimonials", function () {
                BindAllTestimonials();
            });
            $(document.body).on("click", ".tabSection3", function () {
                BindAllSection3($('#<%=idSid.ClientID %>').val());
            });

            $(document.body).on("click", ".tabMapBlogs", function () {
                BindBlogDropdown();
                BindMappedBlogs($('#<%=idSid.ClientID %>').val());
            });

            // ---------- FAQ SAVE ----------
            $(document.body).on('click', '#idBtnFaq', function () {
                var elem = $(this);
                var err = "";
                var title = $('#txtFaqTitle').val().trim();
                var desc = $('#txtFaqDesc').val().trim();

                if (title === "") {
                    err = "E";
                    $('#reqFaqTitle').attr('style', 'color:Red;');
                } else {
                    $('#reqFaqTitle').attr('style', 'color:Red;visibility:hidden;');
                }

                if (desc === "") {
                    err = "E";
                    $('#reqFaqDesc').attr('style', 'color:Red;');
                } else {
                    $('#reqFaqDesc').attr('style', 'color:Red;visibility:hidden;');
                }

                if (err != "") { return false; }

                var txt = elem.text();
                elem.empty();
                elem.append("Please Wait...");

                var smid = $('#<%=idSid.ClientID %>').val();
                var fid = $('#hdFaqId').val();

                $.ajax({
                    type: 'POST',
                    url: "Add-Seo.aspx/AddFaq",
                    data: JSON.stringify({ smid: smid, fid: fid, title: title, desc: desc }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function (data2) {
                        if (data2.d.toString() == "Inserted") {
                            $('#txtFaqTitle').val('');
                            $('#txtFaqDesc').val('');
                            elem.empty(); elem.append("Save");
                            Snackbar.show({ pos: 'top-right', text: 'FAQ added successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                            BindAllFaqs(smid);
                        } else if (data2.d.toString() == "Updated") {
                            elem.empty(); elem.append("Update");
                            Snackbar.show({ pos: 'top-right', text: 'FAQ updated successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                            BindAllFaqs(smid);
                        } else {
                            elem.empty(); elem.append(txt);
                            Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                        }
                    },
                    error: function () {
                        elem.empty(); elem.append(txt);
                        Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                    }
                });
            });

            $(document.body).on('click', '.EditFaq', function () {
                $('#hdFaqId').val($(this).attr('data-id'));
                $('#txtFaqTitle').val($(this).attr('data-title'));
                $('#txtFaqDesc').val($(this).attr('data-desc'));
                $('#idBtnFaq').text("Update");
                $('#cancelFaq').removeAttr('style');
            });

            $(document.body).on('click', '#cancelFaq', function () {
                $('#hdFaqId').val('');
                $('#txtFaqTitle').val('');
                $('#txtFaqDesc').val('');
                $('#idBtnFaq').text("Save");
                $(this).attr('style', 'display:none;');
            });

            $(document.body).on('click', '.deleteFaqItem', function () {
                var elem = $(this);
                var id = $(this).attr('data-id');
                var smid = $('#<%=idSid.ClientID %>').val();
                Swal.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn btn-info w-xs me-2 mt-2",
                    cancelButtonClass: "btn btn-danger w-xs mt-2",
                    confirmButtonText: "Yes, delete it!",
                    buttonsStyling: false,
                    showCloseButton: true
                }).then(function (result) {
                    if (result.value) {
                        $.ajax({
                            type: 'POST',
                            url: "Add-Seo.aspx/DeleteFaq",
                            data: JSON.stringify({ id: id }),
                            contentType: 'application/json; charset=utf-8',
                            dataType: "json",
                            success: function (data2) {
                                if (data2.d.toString() == "Success") {
                                    Swal.fire({ title: "Deleted!", text: "FAQ has been deleted.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                    BindAllFaqs(smid);
                                } else {
                                    Swal.fire({ title: "Oops...", text: "Something went wrong!", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                }
                            }
                        });
                    }
                });
            });

            // ---------- TESTIMONIAL SAVE ----------
            $(document.body).on('click', '#idBtnTesti', function () {
                var elem = $(this);
                var err = "";
                var pname = $('#txtPersonName').val().trim();
                var desig = $('#txtDesignation').val().trim();
                var rating = $('#txtRating').val().trim();
                var desc = $('#txtTestiDesc').val().trim();

                if (pname === "") { err = "E"; $('#reqPersonName').attr('style', 'color:Red;'); } else { $('#reqPersonName').attr('style', 'color:Red;visibility:hidden;'); }
                if (desig === "") { err = "E"; $('#reqDesignation').attr('style', 'color:Red;'); } else { $('#reqDesignation').attr('style', 'color:Red;visibility:hidden;'); }
                if (rating === "") { err = "E"; $('#reqRating').attr('style', 'color:Red;'); } else { $('#reqRating').attr('style', 'color:Red;visibility:hidden;'); }
                if (desc === "") { err = "E"; $('#reqTestiDesc').attr('style', 'color:Red;'); } else { $('#reqTestiDesc').attr('style', 'color:Red;visibility:hidden;'); }

                if (err != "") { return false; }

                var txt = elem.text();
                elem.empty();
                elem.append("Please Wait...");

                var tid = $('#hdTestiId').val();

                $.ajax({
                    type: 'POST',
                    url: "Add-Seo.aspx/AddTestimonial",
                    data: JSON.stringify({ tid: tid, personname: pname, designation: desig, desc: desc, rating: rating }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: "json",
                    success: function (data2) {
                        if (data2.d.toString() == "Inserted") {
                            $('#txtPersonName').val('');
                            $('#txtDesignation').val('');
                            $('#txtRating').val('');
                            $('#txtTestiDesc').val('');
                            elem.empty(); elem.append("Save");
                            Snackbar.show({ pos: 'top-right', text: 'Testimonial added successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                            BindAllTestimonials();
                        } else if (data2.d.toString() == "Updated") {
                            elem.empty(); elem.append("Update");
                            Snackbar.show({ pos: 'top-right', text: 'Testimonial updated successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                            BindAllTestimonials();
                        } else {
                            elem.empty(); elem.append(txt);
                            Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                        }
                    },
                    error: function () {
                        elem.empty(); elem.append(txt);
                        Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                    }
                });
            });

            $(document.body).on('click', '.EditTesti', function () {
                $('#hdTestiId').val($(this).attr('data-id'));
                $('#txtPersonName').val($(this).attr('data-pname'));
                $('#txtDesignation').val($(this).attr('data-desig'));
                $('#txtRating').val($(this).attr('data-rating'));
                $('#txtTestiDesc').val($(this).attr('data-desc'));
                $('#idBtnTesti').text("Update");
                $('#cancelTesti').removeAttr('style');
            });

            $(document.body).on('click', '#cancelTesti', function () {
                $('#hdTestiId').val('');
                $('#txtPersonName').val('');
                $('#txtDesignation').val('');
                $('#txtRating').val('');
                $('#txtTestiDesc').val('');
                $('#idBtnTesti').text("Save");
                $(this).attr('style', 'display:none;');
            });

            $(document.body).on('click', '.deleteTestiItem', function () {
                var elem = $(this);
                var id = $(this).attr('data-id');
                Swal.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn btn-info w-xs me-2 mt-2",
                    cancelButtonClass: "btn btn-danger w-xs mt-2",
                    confirmButtonText: "Yes, delete it!",
                    buttonsStyling: false,
                    showCloseButton: true
                }).then(function (result) {
                    if (result.value) {
                        $.ajax({
                            type: 'POST',
                            url: "Add-Seo.aspx/DeleteTestimonial",
                            data: JSON.stringify({ id: id }),
                            contentType: 'application/json; charset=utf-8',
                            dataType: "json",
                            success: function (data2) {
                                if (data2.d.toString() == "Success") {
                                    Swal.fire({ title: "Deleted!", text: "Testimonial has been deleted.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                    BindAllTestimonials();
                                } else {
                                    Swal.fire({ title: "Oops...", text: "Something went wrong!", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                }
                            }
                        });
                    }
                });
            });

            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
                $('.summernote').summernote({ height: 200 });
            });
        });

        function BindAllFaqs(smid) {
            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/GetEditedFaqs",
                data: JSON.stringify({ seoMasterId: smid }),
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    var lnt = data2.d;
                    var loop = "";
                    var x = 1;
                    if (lnt && lnt.length > 0) {
                        for (var i = 0; i < lnt.length; i++) {
                            var re = /-?\d+/;
                            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            var pOn = re.exec(lnt[i].AddedOn);
                            var addedOn = new Date(parseInt(pOn[0]));
                            var addedOn2 = addedOn.getDate() + "/" + months[addedOn.getMonth()] + "/" + addedOn.getFullYear();

                            // loop += "<tr><td>" + x + "</td><td>" + escHtml(lnt[i].Title) + "</td><td>" + escHtml(lnt[i].Desc) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                            loop += "<tr><td>" + x + "</td><td>" + escHtml(truncateWords(lnt[i].Title, 5)) + "</td><td>" + escHtml(truncateWords(lnt[i].Desc, 5)) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                                "<a href='javascript:void(0);' class='bs-tooltip EditFaq' data-id='" + lnt[i].Id + "' data-title='" + escAttr(lnt[i].Title) + "' data-desc='" + escAttr(lnt[i].Desc) + "' title='Edit'><i class='mdi mdi-pencil fs-18'></i></a> " +
                                "<a href='javascript:void(0);' class='bs-tooltip deleteFaqItem' data-id='" + lnt[i].Id + "' style='color:red;' title='Delete'><i class='mdi mdi-trash-can-outline fs-18'></i></a>" +
                                "</td></tr>";
                            x++;
                        }
                        $("#tbdyFaq").html(loop);
                    } else {
                        $("#tbdyFaq").empty();
                        $("#tbdyFaq").append("<tr class='text-center'><td colspan='5' class='dataTables_empty'>No data available in table</td></tr>");
                    }
                }
            });
        }

        function BindAllTestimonials() {
            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/GetEditedTestimonials",
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    var lnt = data2.d;
                    var loop = "";
                    var x = 1;
                    if (lnt && lnt.length > 0) {
                        for (var i = 0; i < lnt.length; i++) {
                            var re = /-?\d+/;
                            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            var pOn = re.exec(lnt[i].AddedOn);
                            var addedOn = new Date(parseInt(pOn[0]));
                            var addedOn2 = addedOn.getDate() + "/" + months[addedOn.getMonth()] + "/" + addedOn.getFullYear();

                            //loop += "<tr><td>" + x + "</td><td>" + escHtml(lnt[i].PersonName) + "</td><td>" + escHtml(lnt[i].Designation) + "</td><td>" + escHtml(lnt[i].Rating) + "</td><td>" + escHtml(lnt[i].Desc) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                            loop += "<tr><td>" + x + "</td><td>" + escHtml(lnt[i].PersonName) + "</td><td>" + escHtml(lnt[i].Designation) + "</td><td>" + escHtml(lnt[i].Rating) + "</td><td>" + escHtml(truncateWords(lnt[i].Desc, 5)) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                                "<a href='javascript:void(0);' class='bs-tooltip EditTesti' data-id='" + lnt[i].Id + "' data-pname='" + escAttr(lnt[i].PersonName) + "' data-desig='" + escAttr(lnt[i].Designation) + "' data-rating='" + escAttr(lnt[i].Rating) + "' data-desc='" + escAttr(lnt[i].Desc) + "' title='Edit'><i class='mdi mdi-pencil fs-18'></i></a> " +
                                "<a href='javascript:void(0);' class='bs-tooltip deleteTestiItem' data-id='" + lnt[i].Id + "' style='color:red;' title='Delete'><i class='mdi mdi-trash-can-outline fs-18'></i></a>" +
                                "</td></tr>";
                            x++;
                        }
                        $("#tbdyTesti").html(loop);
                    } else {
                        $("#tbdyTesti").empty();
                        $("#tbdyTesti").append("<tr class='text-center'><td colspan='7' class='dataTables_empty'>No data available in table</td></tr>");
                    }
                }
            });
        }

        // Simple HTML-escape helpers to avoid XSS from injected DB text into innerHTML
        function escHtml(s) {
            if (s === null || s === undefined) return "";
            return String(s).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
        }
        function escAttr(s) {
            if (s === null || s === undefined) return "";
            return String(s).replace(/&/g, "&amp;").replace(/"/g, "&quot;").replace(/'/g, "&#39;");
        }


        function truncateWords(s, wordLimit) {
            if (s === null || s === undefined) return "";
            var str = String(s);
            var words = str.trim().split(/\s+/);
            if (words.length <= wordLimit) {
                return str;
            }
            return words.slice(0, wordLimit).join(" ") + "...";
        }

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            switch (charCode < 48 || charCode > 57) {
                case true: return false; break;
                case false: return true; break;
            }
        };
    </script>


    <script>
        var urlManuallyEdited = false;

        $('#<%=txtUrl.ClientID %>').on('input', function () {
            urlManuallyEdited = true;
        });

        <%--$('#<%=txtTitle.ClientID %>').on('keyup blur', function () {
            if (!urlManuallyEdited) {
                $('#<%=txtUrl.ClientID %>').val(slugify($(this).val()));
            }
        });--%>

        $('#<%=txtBannerTitle.ClientID %>').on('keyup blur', function () {
            if (!urlManuallyEdited) {
                $('#<%=txtUrl.ClientID %>').val(slugify($(this).val()));
            }
        });

        function slugify(text) {
            return text.toString().toLowerCase()
                .trim()
                .replace(/[^a-z0-9\s-]/g, '')
                .replace(/\s+/g, '-')
                .replace(/-+/g, '-');
        }
    </script>

    <script>
        // ---------- SECTION 3 SAVE ----------
        $(document.body).on('click', '#idBtnSection3', function () {
            var elem = $(this);
            var err = "";
            var title = $('#txtSec3ItemTitle').val().trim();
            var desc = $('#txtSec3ItemDesc').val().trim();

            if (title === "") {
                err = "E";
                $('#reqSec3Title').attr('style', 'color:Red;');
            } else {
                $('#reqSec3Title').attr('style', 'color:Red;visibility:hidden;');
            }

            if (desc === "") {
                err = "E";
                $('#reqSec3Desc').attr('style', 'color:Red;');
            } else {
                $('#reqSec3Desc').attr('style', 'color:Red;visibility:hidden;');
            }

            if (err != "") { return false; }

            var txt = elem.text();
            elem.empty();
            elem.append("Please Wait...");

            var smid = $('#<%=idSid.ClientID %>').val();
            var sid = $('#hdSection3Id').val();

            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/AddSection3",
                data: JSON.stringify({ smid: smid, sid: sid, title: title, desc: desc }),
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    if (data2.d.toString() == "Inserted") {
                        $('#txtSec3ItemTitle').val('');
                        $('#txtSec3ItemDesc').val('');
                        elem.empty(); elem.append("Save");
                        Snackbar.show({ pos: 'top-right', text: 'Section added successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                        BindAllSection3(smid);
                    } else if (data2.d.toString() == "Updated") {
                        elem.empty(); elem.append("Update");
                        Snackbar.show({ pos: 'top-right', text: 'Section updated successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                        BindAllSection3(smid);
                    } else {
                        elem.empty(); elem.append(txt);
                        Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                    }
                },
                error: function () {
                    elem.empty(); elem.append(txt);
                    Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                }
            });
        });

        $(document.body).on('click', '.EditSection3', function () {
            $('#hdSection3Id').val($(this).attr('data-id'));
            $('#txtSec3ItemTitle').val($(this).attr('data-title'));
            $('#txtSec3ItemDesc').val($(this).attr('data-desc'));
            $('#idBtnSection3').text("Update");
            $('#cancelSection3').removeAttr('style');
        });

        $(document.body).on('click', '#cancelSection3', function () {
            $('#hdSection3Id').val('');
            $('#txtSec3ItemTitle').val('');
            $('#txtSec3ItemDesc').val('');
            $('#idBtnSection3').text("Save");
            $(this).attr('style', 'display:none;');
        });

        $(document.body).on('click', '.deleteSection3Item', function () {
            var elem = $(this);
            var id = $(this).attr('data-id');
            var smid = $('#<%=idSid.ClientID %>').val();
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn btn-info w-xs me-2 mt-2",
                cancelButtonClass: "btn btn-danger w-xs mt-2",
                confirmButtonText: "Yes, delete it!",
                buttonsStyling: false,
                showCloseButton: true
            }).then(function (result) {
                if (result.value) {
                    $.ajax({
                        type: 'POST',
                        url: "Add-Seo.aspx/DeleteSection3",
                        data: JSON.stringify({ id: id }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: "json",
                        success: function (data2) {
                            if (data2.d.toString() == "Success") {
                                Swal.fire({ title: "Deleted!", text: "Section item has been deleted.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                BindAllSection3(smid);
                            } else {
                                Swal.fire({ title: "Oops...", text: "Something went wrong!", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                            }
                        }
                    });
                }
            });
        });
    </script>
    <script>
        function BindAllSection3(smid) {
            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/GetEditedSection3",
                data: JSON.stringify({ seoMasterId: smid }),
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    var lnt = data2.d;
                    var loop = "";
                    var x = 1;
                    if (lnt && lnt.length > 0) {
                        for (var i = 0; i < lnt.length; i++) {
                            var re = /-?\d+/;
                            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            var pOn = re.exec(lnt[i].AddedOn);
                            var addedOn = new Date(parseInt(pOn[0]));
                            var addedOn2 = addedOn.getDate() + "/" + months[addedOn.getMonth()] + "/" + addedOn.getFullYear();

                            loop += "<tr><td>" + x + "</td><td>" + escHtml(truncateWords(lnt[i].Title, 5)) + "</td><td>" + escHtml(truncateWords(lnt[i].Desc, 5)) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                                "<a href='javascript:void(0);' class='bs-tooltip EditSection3' data-id='" + lnt[i].Id + "' data-title='" + escAttr(lnt[i].Title) + "' data-desc='" + escAttr(lnt[i].Desc) + "' title='Edit'><i class='mdi mdi-pencil fs-18'></i></a> " +
                                "<a href='javascript:void(0);' class='bs-tooltip deleteSection3Item' data-id='" + lnt[i].Id + "' style='color:red;' title='Delete'><i class='mdi mdi-trash-can-outline fs-18'></i></a>" +
                                "</td></tr>";
                            x++;
                        }
                        $("#tbdySection3").html(loop);
                    } else {
                        $("#tbdySection3").empty();
                        $("#tbdySection3").append("<tr class='text-center'><td colspan='5' class='dataTables_empty'>No data available in table</td></tr>");
                    }
                }
            });
        }
    </script>


    <script>
        // ---------- MAP BLOGS ADD ----------
        $(document.body).on('click', '#idBtnAddBlog', function () {
            var elem = $(this);
            var blogId = $('#ddlBlogSelect').val();

            if (!blogId) {
                $('#reqBlogSelect').attr('style', 'color:Red;');
                return false;
            } else {
                $('#reqBlogSelect').attr('style', 'color:Red;visibility:hidden;');
            }

            var txt = elem.text();
            elem.empty();
            elem.append("Please Wait...");

            var smid = $('#<%=idSid.ClientID %>').val();

            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/AddMappedBlog",
                data: JSON.stringify({ smid: smid, blogId: blogId }),
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    elem.empty(); elem.append(txt);
                    if (data2.d.toString() == "Inserted") {
                        $('#ddlBlogSelect').val('');
                        Snackbar.show({ pos: 'top-right', text: 'Blog added successfully.', actionTextColor: '#fff', backgroundColor: '#008a3d' });
                        BindMappedBlogs(smid);
                    } else if (data2.d.toString() == "AlreadyAdded") {
                        Snackbar.show({ pos: 'top-right', text: 'This blog is already added.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                    } else {
                        Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                    }
                },
                error: function () {
                    elem.empty(); elem.append(txt);
                    Snackbar.show({ pos: 'top-right', text: 'Oops! Something went wrong.', actionTextColor: '#fff', backgroundColor: '#ea1c1c' });
                }
            });
        });

        $(document.body).on('click', '.deleteMapBlogItem', function () {
            var id = $(this).attr('data-id');
            var smid = $('#<%=idSid.ClientID %>').val();
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn btn-info w-xs me-2 mt-2",
                cancelButtonClass: "btn btn-danger w-xs mt-2",
                confirmButtonText: "Yes, delete it!",
                buttonsStyling: false,
                showCloseButton: true
            }).then(function (result) {
                if (result.value) {
                    $.ajax({
                        type: 'POST',
                        url: "Add-Seo.aspx/DeleteMappedBlog",
                        data: JSON.stringify({ id: id }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: "json",
                        success: function (data2) {
                            if (data2.d.toString() == "Success") {
                                Swal.fire({ title: "Deleted!", text: "Blog has been removed.", icon: "success", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                                BindMappedBlogs(smid);
                            } else {
                                Swal.fire({ title: "Oops...", text: "Something went wrong!", icon: "error", confirmButtonClass: "btn btn-info w-xs mt-2", buttonsStyling: false });
                            }
                        }
                    });
                }
            });
        });

        function BindBlogDropdown() {
            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/GetAllBlogsForDropdown",
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    var lnt = data2.d;
                    var opts = "<option value=''>-- Select Blog --</option>";
                    if (lnt && lnt.length > 0) {
                        for (var i = 0; i < lnt.length; i++) {
                            opts += "<option value='" + lnt[i].Id + "'>" + escHtml(lnt[i].BlogTitle) + "</option>";
                        }
                    }
                    $('#ddlBlogSelect').html(opts);
                }
            });
        }

        function BindMappedBlogs(smid) {
            $.ajax({
                type: 'POST',
                url: "Add-Seo.aspx/GetMappedBlogs",
                data: JSON.stringify({ seoMasterId: smid }),
                contentType: 'application/json; charset=utf-8',
                dataType: "json",
                success: function (data2) {
                    var lnt = data2.d;
                    var loop = "";
                    var x = 1;
                    if (lnt && lnt.length > 0) {
                        for (var i = 0; i < lnt.length; i++) {
                            var re = /-?\d+/;
                            var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            var pOn = re.exec(lnt[i].AddedOn);
                            var addedOn = new Date(parseInt(pOn[0]));
                            var addedOn2 = addedOn.getDate() + "/" + months[addedOn.getMonth()] + "/" + addedOn.getFullYear();

                            loop += "<tr><td>" + x + "</td><td>" + escHtml(lnt[i].BlogTitle) + "</td><td>" + addedOn2 + "</td><td class='text-center'>" +
                                "<a href='javascript:void(0);' class='bs-tooltip deleteMapBlogItem' data-id='" + lnt[i].Id + "' style='color:red;' title='Delete'><i class='mdi mdi-trash-can-outline fs-18'></i></a>" +
                                "</td></tr>";
                            x++;
                        }
                        $("#tbdyMapBlogs").html(loop);
                    } else {
                        $("#tbdyMapBlogs").empty();
                        $("#tbdyMapBlogs").append("<tr class='text-center'><td colspan='4' class='dataTables_empty'>No data available in table</td></tr>");
                    }
                }
            });
        }
    </script>
</asp:Content>
