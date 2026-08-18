<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        span.clsord {
            text-align: center !important;
        }

        .filterRev.selected {
            background: #3577f1 !important;
            color: #fff !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-content">
        <div class="container-fluid">

            <!-- Page Title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Dashboard</h4>
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-3 pb-1">
                <div class="col-12">
                    <h4 class="fs-16 mb-1">Hello, <%=Strusername %>!</h4>
                    <p class="text-muted mb-0">Here's what's happening today.</p>
                </div>
            </div>

            <!-- 4 Count Cards -->
            <div class="row">

                <!-- Enquiries -->
               <%-- <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body bg-soft-info">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Total Enquiries</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4">
                                        <span class="counter-value" data-target="<%=StrEnquiryCount %>"><%=StrEnquiryCount %></span>
                                    </h4>
                                    <a href="view-enquiry.aspx" class="text-decoration-underline">View All Enquiries</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-info rounded fs-3">
                                        <i class="mdi mdi-email-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

                <!-- Applications -->
                <%--<div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body bg-soft-primary">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Total Applications</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4">
                                        <span class="counter-value" data-target="<%=StrApplicationCount %>"><%=StrApplicationCount %></span>
                                    </h4>
                                    <a href="view-application.aspx" class="text-decoration-underline">View All Applications</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-primary rounded fs-3">
                                        <i class="mdi mdi-file-document-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

                <!-- Dealers -->
              <%--  <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body bg-soft-success">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Total Dealers</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4">
                                        <span class="counter-value" data-target="<%=StrDealerCount %>"><%=StrDealerCount %></span>
                                    </h4>
                                    <a href="view-dealers.aspx" class="text-decoration-underline">View All Dealers</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-success rounded fs-3">
                                        <i class="mdi mdi-account-group-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

                <!-- Products -->
               <%-- <div class="col-xl-3 col-md-6">
                    <div class="card card-animate">
                        <div class="card-body bg-soft-danger">
                            <div class="d-flex align-items-center">
                                <div class="flex-grow-1 overflow-hidden">
                                    <p class="text-uppercase fw-medium text-muted text-truncate mb-0">Total Products</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-end justify-content-between mt-4">
                                <div>
                                    <h4 class="fs-22 fw-semibold ff-secondary mb-4">
                                        <span class="counter-value" data-target="<%=StrProductCount %>"><%=StrProductCount %></span>
                                    </h4>
                                    <a href="view-product.aspx" class="text-decoration-underline">View All Products</a>
                                </div>
                                <div class="avatar-sm flex-shrink-0">
                                    <span class="avatar-title bg-danger rounded fs-3">
                                        <i class="mdi mdi-shopping-outline"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>

            </div>
            <!-- end cards -->

            <!-- Recent Enquiries Table -->
            <%--<div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header align-items-center d-flex">
                            <h4 class="card-title mb-0 flex-grow-1">Recent Enquiries</h4>
                            <div class="flex-shrink-0">
                                <a href="view-enquiry.aspx" class="btn btn-soft-info btn-sm shadow-none">
                                    <i class="ri-file-list-3-line align-middle me-1"></i>View All
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-nowrap align-middle table-striped table-bordered">
                                    <thead class="bg-info text-white">
                                        <tr>
                                            <th  class="text-center">#</th>
                                            <th  class="text-center">Name</th>
                                            <th  class="text-center">Email</th>
                                            <th  class="text-center">Phone</th>
                                            <th  class="text-center">Message</th>
                                            <th  class="text-center">Date</th>
                                        </tr>
                                    </thead>
                                    <tbody  class="text-center">
                                        <%=strEnquiries %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>

        </div>

       <%-- Message Modal--%>
        <div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="messageModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="messageModalLabel">
                            <i class="mdi mdi-message-text-outline me-2 text-info"></i>Enquiry Message
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p id="modalMessageText" class="mb-0" style="white-space: pre-wrap; word-break: break-word;"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {

            // View Message
            $(document.body).on('click', '.viewMessage', function () {
                var message = $(this).attr('data-message');
                $('#modalMessageText').text(message);
                $('#messageModal').modal('show');
            });

        });

    </script>
</asp:Content>
