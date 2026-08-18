<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Book a Corporate Cab or Outstation Trip | Vinayaka Travels</title>
    <meta name="description" content="Book employee transport, airport transfer, outstation cab or event transportation with Vinayaka Travels online. Quick confirmation, 24/7 support." />
    <meta name="keywords" content="Outstation Cab Booking; Airport Cab Booking Bangalore; Event Cab Booking Bangalore" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />
    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [

    {
      "@type": "WebPage",
      "@id": "https://www.vinayakatravels.com/booking.aspx#webpage",
      "url": "https://www.vinayakatravels.com/booking.aspx",
      "name": "Book Vehicle - Vinayaka Travels",
      "description": "Book reliable transportation services with Vinayaka Travels for local and outstation travel including luxury buses, cars, SUVs, cabs, coaches and electric vehicles.",
      "isPartOf": {
        "@id": "https://www.vinayakatravels.com/#website"
      }
    },

    {
      "@type": "Organization",
      "@id": "https://www.vinayakatravels.com/#organization",
      "name": "Vinayaka Travels",
      "url": "https://www.vinayakatravels.com/",
      "telephone": "+91-8645322290",
      "email": "info@vinayakatravels.com",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "#509, Ground Floor, 7th Cross, 10th Main Road, HAL III Stage, Jeevan Bhima Nagar",
        "addressLocality": "Bangalore",
        "addressRegion": "Karnataka",
        "postalCode": "560075",
        "addressCountry": "IN"
      }
    },

    {
      "@type": "Service",
      "@id": "https://www.vinayakatravels.com/booking.aspx#service",
      "name": "Vehicle Booking Services",
      "description": "Book luxury buses, cars, SUVs, cabs, coaches and electric vehicles for local and outstation travel requirements.",
      "provider": {
        "@id": "https://www.vinayakatravels.com/#organization"
      },
      "areaServed": {
        "@type": "Place",
        "name": "Bangalore"
      },
      "serviceType": [
        "Local Travel Booking",
        "Outstation Cab Booking",
        "Luxury Bus Booking",
        "Corporate Transportation Booking",
        "Vehicle Rental Services"
      ]
    },

    {
      "@type": "ReserveAction",
      "name": "Book Vehicle with Vinayaka Travels",
      "target": {
        "@type": "EntryPoint",
        "urlTemplate": "https://www.vinayakatravels.com/booking.aspx",
        "actionPlatform": [
          "http://schema.org/DesktopWebPlatform",
          "http://schema.org/MobileWebPlatform"
        ]
      },
      "result": {
        "@type": "Reservation",
        "name": "Transportation Booking Reservation"
      }
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/booking.aspx#breadcrumb",
      "itemListElement": [
        {
          "@type": "ListItem",
          "position": 1,
          "name": "Home",
          "item": "https://www.vinayakatravels.com/"
        },
        {
          "@type": "ListItem",
          "position": 2,
          "name": "Book Now",
          "item": "https://www.vinayakatravels.com/booking.aspx"
        }
      ]
    }

  ]
}
</script>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Google tag (gtag.js) -->
    <link rel="canonical" href="https://www.vinayakatravels.com/booking.aspx" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'G-T78GXY1Y17');
    </script>
    <style>
        .captchImg {
            vertical-align: middle;
            height: 44px;
            width: auto;
            max-width: 160px;
            object-fit: contain;
        }

        .refreshImg {
            height: 28px;
            width: 28px;
            margin-top: 0;
            cursor: pointer;
            transition: transform 0.3s ease-in-out;
        }

            .refreshImg:hover {
                transform: rotate(360deg);
            }

        .vt-booking-page .page-header {
            padding: 80px 0 64px;
        }

        .vt-booking-page .contact-page {
            padding: 40px 0 36px;
        }

        .vt-booking-page .contact-page__right {
            margin-left: 0;
            margin-top: 16px;
        }

        .vt-booking-page .section-title {
            margin-bottom: 16px;
        }

        .vt-booking-page .section-title__title {
            font-size: 32px;
            line-height: 1.25;
        }

        .vt-booking-page .contact-page__input-box {
            margin-bottom: 12px;
        }

        .vt-booking-page .contact-page__input-box label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            line-height: 1.3;
        }

        .vt-booking-page .contact-page__input-box input,
        .vt-booking-page .contact-page__input-box select,
        .vt-booking-page .contact-page__input-box .nice-select,
        .vt-booking-page .select-box .nice-select,
        .vt-booking-page .select-box select,
        .vt-booking-page .like-us__input-box .nice-select,
        .vt-booking-page .like-us__input-box select,
        .vt-booking-page .custom-form {
            height: 44px !important;
            min-height: 44px;
            width: 100% !important;
            max-width: 100%;
            line-height: 42px !important;
            padding: 0 14px !important;
            margin: 0;
            background-color: #fff !important;
            border: 1px solid #d7dde5 !important;
            border-radius: 8px !important;
            outline: none;
            font-size: 15px !important;
            font-weight: 400;
            color: #333 !important;
            display: block;
            box-sizing: border-box;
            float: none !important;
            appearance: none;
            -webkit-appearance: none;
        }

        .vt-booking-page .contact-page__input-box input[type="date"],
        .vt-booking-page .contact-page__input-box input[type="time"] {
            line-height: 42px !important;
            padding-right: 12px !important;
        }

        .vt-booking-page .contact-page__input-box textarea {
            height: 100px !important;
            min-height: 100px;
            width: 100%;
            padding: 10px 14px !important;
            line-height: 1.45 !important;
            background-color: #fff !important;
            border: 1px solid #d7dde5 !important;
            border-radius: 8px !important;
            font-size: 15px !important;
            color: #333 !important;
            box-sizing: border-box;
            resize: vertical;
        }

        .vt-booking-page .select-box,
        .vt-booking-page .nice-select.wide {
            width: 100%;
        }

        .vt-booking-page .nice-select:after {
            top: 50%;
            right: 14px;
            margin-top: -6px;
            width: 8px;
            height: 8px;
        }

        .vt-booking-page .vt-booking-captcha {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 4px;
            margin-bottom: 8px;
        }

        .vt-booking-page .vt-booking-captcha__img {
            display: flex;
            align-items: center;
            gap: 8px;
            flex: 0 0 auto;
        }

        .vt-booking-page .vt-booking-captcha__input {
            flex: 1 1 auto;
            min-width: 0;
            margin-bottom: 0;
        }

        .vt-booking-page .contact-page__btn-box {
            margin-top: 8px;
            display: flex;
            justify-content: center;
        }

        .vt-booking-page .contact-page__btn.thm-btn {
            padding: 8px 28px;
        }

        @media (max-width: 1366px) {
            .vt-booking-page .page-header {
                padding: 72px 0 56px;
            }

            .vt-booking-page .page-header__inner h2 {
                font-size: 48px;
                line-height: 1.2;
                letter-spacing: -1px;
            }

            .vt-booking-page .section-title__title {
                font-size: 30px;
            }
        }

        @media (max-width: 1200px) {
            .vt-booking-page .page-header__inner h2 {
                font-size: 42px;
            }

            .vt-booking-page .contact-page {
                padding: 36px 0 32px;
            }
        }

        @media (max-width: 1199.98px) {
            .vt-booking-page .contact-page__right {
                margin-top: 12px;
            }
        }

        @media (max-width: 991px) {
            .vt-booking-page .page-header {
                padding: 48px 0 40px;
            }

            .vt-booking-page .page-header__inner h2 {
                font-size: 34px;
                letter-spacing: 0;
                margin-bottom: 12px;
            }

            .vt-booking-page .contact-page {
                padding: 28px 0 24px;
            }

            .vt-booking-page .section-title__title {
                font-size: 26px;
            }
        }

        @media (max-width: 767px) {
            .vt-booking-page .page-header {
                padding: 40px 12px 32px;
            }

            .vt-booking-page .page-header__inner h2 {
                font-size: 28px;
            }

            .vt-booking-page .contact-page {
                padding: 24px 0 20px;
            }

            .vt-booking-page .section-title__title {
                font-size: 22px;
            }

            .vt-booking-page .contact-page__input-box {
                margin-bottom: 10px;
            }

            .vt-booking-page .contact-page__input-box textarea {
                height: 88px !important;
                min-height: 88px;
            }

            .vt-booking-page .vt-booking-captcha {
                flex-direction: column;
                align-items: stretch;
            }
        }

        @media (max-width: 567px) {
            .vt-booking-page .page-header {
                padding: 32px 10px 24px;
            }

            .vt-booking-page .page-header__inner h2 {
                font-size: 24px;
            }

            .vt-booking-page .contact-page {
                padding: 18px 0 16px;
            }

            .vt-booking-page .section-title__title {
                font-size: 20px;
            }

            .vt-booking-page .contact-page__input-box input,
            .vt-booking-page .contact-page__input-box select,
            .vt-booking-page .contact-page__input-box .nice-select,
            .vt-booking-page .select-box .nice-select,
            .vt-booking-page .custom-form {
                height: 42px !important;
                min-height: 42px;
                font-size: 14px !important;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="vt-booking-page">
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Book Now</h2>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>Book Now</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--Page Header End-->

    <!--Contact Page Start-->
    <section class="contact-page">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-12 col-xl-8 col-lg-8">
                    <div class="section-title text-left sec-title-animation animation-style2 mb-0">

                        <h2 class="section-title__title section-title__title-custom title-animation text-center">Book  With Us</h2>
                    </div>

                    <div class="contact-page__right like-us__inner">

                        <div class="contact-form-validated contact-page__form" action="#"
                            method="post" novalidate="novalidate">
                            <div class="row">
                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label><b>Name</b></label>
                                        <asp:TextBox ID="txtFName" placeholder="First Name" MaxLength="64" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtFName" Display="Dynamic" ValidationGroup="save" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label><b>Email </b></label>
                                        <asp:TextBox ID="txtEmail" placeholder="Email Address" MaxLength="64" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="save" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="tf1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="save" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label>
                                            <b>Contact no</b>
                                        </label>
                                        <asp:TextBox ID="TxtMNo" runat="server" placeholder="Phone" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtMNo" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Enter 10 digit valid MobileNo." ValidationExpression="^([0-9]{10})$" ControlToValidate="TxtMNo" ValidationGroup="save" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>

                                    </div>
                                </div>

                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label>
                                            <b>Travel Type</b>
                                        </label>
                                        <div class="select-box">
                                            <asp:DropDownList ID="ddltravelType" runat="server" CssClass="selectmenu wide ">
                                                <asp:ListItem Value="Local">Local</asp:ListItem>
                                                <asp:ListItem Value="Outstation">Outstation</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label><b>From Date</b></label>
                                        <asp:TextBox runat="server" ID="txtFromDate" CssClass="today_Datepicker" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFromDate" Display="Dynamic" ForeColor="Red" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label><b>To Date</b></label>
                                        <asp:TextBox runat="server" ID="txtTodate" CssClass="today_Datepicker" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTodate" Display="Dynamic" ForeColor="Red" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>

                                    </div>
                                </div>

                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label>
                                            <b>Vehicle Type</b>
                                        </label>
                                        <div class="select-box">
                                            <asp:DropDownList ID="ddlVehicleType" runat="server" CssClass="selectmenu wide ">
                                                <asp:ListItem Value="Luxury Bus">Luxury Bus</asp:ListItem>
                                                <asp:ListItem Value="Luxury Car">Luxury Car</asp:ListItem>
                                                <asp:ListItem Value="Luxury Van">Luxury SUV</asp:ListItem>
                                                <asp:ListItem Value="Cabs">Cabs</asp:ListItem>
                                                <asp:ListItem Value="Coaches">Coaches</asp:ListItem>
                                                <asp:ListItem Value="EV">EV</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-xl-6 col-lg-6">
                                    <div class="contact-page__input-box">
                                        <label><b>Pickup Time </b></label>
                                        <asp:TextBox runat="server" class="today_datepicker_with_time" ID="txtTime" TextMode="Time"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTime" Display="Dynamic" ForeColor="Red" ValidationGroup="Save" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="contact-page__input-box">
                                        <label><b>Place of pickup </b></label>
                                        <asp:TextBox ID="txtAddress" MaxLength="200" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ValidationGroup="save" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="contact-page__input-box">
                                        <label><b>Message </b></label>
                                        <asp:TextBox ID="txtMessage" Rows="5" TextMode="MultiLine" placeholder="Enter your message..." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12 vt-booking-captcha">
                                    <div class="vt-booking-captcha__img">
                                        <asp:Image ID="Image1" class="img-captcha" CssClass="border-width: 0px; captchImg" src="capchanum.aspx?637725949916051783" runat="server" />
                                        <asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" ImageUrl="/assets/images/captcha.png" CssClass="capcha-refreshbox refreshImg" formnovalidate="" runat="server" />
                                    </div>
                                    <div class="vt-booking-captcha__input contact-page__input-box">
                                        <asp:TextBox ID="txtCaptcha" placeholder="Please enter result here" onkeypress="return isNumber(event)" MaxLength="2" CssClass="custom-form" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCaptcha" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:Label runat="server" Visible="false" class="text-danger" ID="lblCaptch"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="contact-page__btn-box">
                                        <asp:LinkButton ID="btnSubmit" CssClass="thm-btn contact-page__btn" OnClick="btn_submit_Click" ValidationGroup="save" runat="server"> Send Message<i class="icon-paper-plan"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="result"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</asp:Content>

