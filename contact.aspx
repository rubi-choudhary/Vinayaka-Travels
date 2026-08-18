<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Contact Vinayaka Travels — Corporate Cab Services</title>
    <meta name="description" content="Reach out to Vinayaka Travels for employee transportation, airport transfer, outstation cab and car lease enquiries. We're here to help you get started." />
    <meta name="keywords" content="Corporate Cab Services; Corporate Taxi Services; Car Lease for Companies" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />
    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [

    {
      "@type": "ContactPage",
      "@id": "https://www.vinayakatravels.com/contact.aspx#contactpage",
      "url": "https://www.vinayakatravels.com/contact.aspx",
      "name": "Contact Vinayaka Travels",
      "description": "Contact Vinayaka Travels for employee transportation, corporate travel solutions, airport transfers, fleet services and mobility solutions.",
      "isPartOf": {
        "@id": "https://www.vinayakatravels.com/#website"
      },
      "about": {
        "@id": "https://www.vinayakatravels.com/#organization"
      }
    },

    {
      "@type": "LocalBusiness",
      "@id": "https://www.vinayakatravels.com/#organization",
      "name": "Vinayaka Travels",
      "url": "https://www.vinayakatravels.com/",
      "image": "https://www.vinayakatravels.com/images/logo.png",
      "description": "Vinayaka Travels provides employee transportation services, corporate mobility solutions, airport transfers, outstation cabs and fleet management services.",
      "telephone": "+91-8645322290",
      "email": "info@vinayakatravels.com",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "#509, Ground Floor, 7th Cross, 10th Main Road, HAL III Stage, Jeevan Bhima Nagar",
        "addressLocality": "Bangalore",
        "addressRegion": "Karnataka",
        "postalCode": "560075",
        "addressCountry": "IN"
      },

        "geo": {
  "@type": "GeoCoordinates",
  "latitude": "12.9646",
  "longitude": "77.6574"
},
      "areaServed": [
        "Bangalore",
        "Chennai",
        "Hyderabad"
      ],
      "contactPoint": [
        {
          "@type": "ContactPoint",
          "telephone": "+91-8645322290",
          "contactType": "customer support",
          "availableLanguage": [
            "English"
          ]
        },
        {
          "@type": "ContactPoint",
          "telephone": "080-25251188",
          "contactType": "customer support"
        }
      ]
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/contact.aspx#breadcrumb",
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
          "name": "Contact",
          "item": "https://www.vinayakatravels.com/contact.aspx"
        }
      ]
    }

  ]
}
</script>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Google tag (gtag.js) -->
    <link rel="canonical" href="https://www.vinayakatravels.com/contact.aspx" />
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

        .vt-contact-page .page-header {
            padding: 80px 0 64px;
        }

        .vt-contact-page .contact-page {
            padding: 40px 0 36px;
        }

        .vt-contact-page .contact-page__left {
            padding: 28px 24px;
            margin-bottom: 0;
        }

        .vt-contact-page .contact-page__list li {
            align-items: flex-start;
            gap: 14px;
            padding-bottom: 16px;
        }

        .vt-contact-page .contact-page__list li + li {
            margin-top: 16px;
        }

        .vt-contact-page .contact-page__list li .icon span {
            font-size: 28px;
        }

        .vt-contact-page .contact-page__list li .content span {
            display: block;
            font-size: 13px;
            line-height: 1.3;
            margin-bottom: 4px;
        }

        .vt-contact-page .contact-page__list li .content p {
            font-size: 16px;
            line-height: 1.45;
            margin: 0;
        }

        .vt-contact-page .contact-page__right {
            margin-left: 0;
            margin-top: 0;
        }

        .vt-contact-page .contact-page__right .section-title,
        .vt-contact-page .section-title {
            margin-bottom: 16px;
        }

        .vt-contact-page .section-title__title {
            font-size: 32px;
            line-height: 1.25;
        }

        .vt-contact-page .contact-page__input-box {
            margin-bottom: 12px;
        }

        .vt-contact-page .contact-page__input-box.text-message-box {
            height: auto;
            margin-bottom: 12px;
        }

        .vt-contact-page .contact-page__input-box input,
        .vt-contact-page .contact-page__input-box .custom-form,
        .vt-contact-page .custom-form {
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
        }

        .vt-contact-page .contact-page__input-box textarea {
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

        .vt-contact-page .vt-contact-captcha {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 4px;
            margin-bottom: 8px;
        }

        .vt-contact-page .vt-contact-captcha__img {
            display: flex;
            align-items: center;
            gap: 8px;
            flex: 0 0 auto;
        }

        .vt-contact-page .vt-contact-captcha__input {
            flex: 1 1 auto;
            min-width: 0;
            margin-bottom: 0;
        }

        .vt-contact-page .contact-page__btn-box {
            margin-top: 8px;
            display: flex;
            justify-content: center;
        }

        .vt-contact-page .contact-page__btn.thm-btn {
            padding: 8px 28px;
        }

        .vt-contact-page .google-map-two {
            padding: 0;
            margin: 0;
            line-height: 0;
        }

        .vt-contact-page .google-map-two .section-shape-1 {
            display: none;
        }

        .vt-contact-page .google-map-two iframe {
            display: block;
            width: 100%;
            height: 380px;
            border: 0;
        }

        @media (max-width: 1366px) {
            .vt-contact-page .page-header {
                padding: 72px 0 56px;
            }

            .vt-contact-page .page-header__inner h2 {
                font-size: 48px;
                line-height: 1.2;
                letter-spacing: -1px;
            }

            .vt-contact-page .section-title__title {
                font-size: 30px;
            }

            .vt-contact-page .google-map-two iframe {
                height: 360px;
            }
        }

        @media (max-width: 1200px) {
            .vt-contact-page .page-header__inner h2 {
                font-size: 42px;
            }

            .vt-contact-page .contact-page {
                padding: 36px 0 32px;
            }

            .vt-contact-page .contact-page__left {
                padding: 24px 20px;
            }

            .vt-contact-page .google-map-two iframe {
                height: 340px;
            }
        }

        @media (max-width: 1199.98px) {
            .vt-contact-page .contact-page__info,
            .vt-contact-page .contact-page__form-col {
                flex: 0 0 100%;
                max-width: 100%;
            }

            .vt-contact-page .contact-page__left {
                margin-bottom: 24px;
            }

            .vt-contact-page .contact-page__right {
                margin-top: 0;
            }

            .vt-contact-page .google-map-two iframe {
                height: 320px;
            }
        }

        @media (max-width: 991px) {
            .vt-contact-page .page-header {
                padding: 48px 0 40px;
            }

            .vt-contact-page .page-header__inner h2 {
                font-size: 34px;
                letter-spacing: 0;
                margin-bottom: 12px;
            }

            .vt-contact-page .contact-page {
                padding: 28px 0 24px;
            }

            .vt-contact-page .section-title__title {
                font-size: 26px;
            }

            .vt-contact-page .contact-page__left {
                padding: 20px 16px;
            }

            .vt-contact-page .google-map-two iframe {
                height: 280px;
            }
        }

        @media (max-width: 767px) {
            .vt-contact-page .page-header {
                padding: 40px 12px 32px;
            }

            .vt-contact-page .page-header__inner h2 {
                font-size: 28px;
            }

            .vt-contact-page .contact-page {
                padding: 24px 0 20px;
            }

            .vt-contact-page .section-title__title {
                font-size: 22px;
            }

            .vt-contact-page .contact-page__input-box {
                margin-bottom: 10px;
            }

            .vt-contact-page .contact-page__input-box textarea {
                height: 88px !important;
                min-height: 88px;
            }

            .vt-contact-page .contact-page__list li .content p {
                font-size: 15px;
            }

            .vt-contact-page .vt-contact-captcha {
                flex-direction: column;
                align-items: stretch;
            }

            .vt-contact-page .google-map-two iframe {
                height: 240px;
            }
        }

        @media (max-width: 567px) {
            .vt-contact-page .page-header {
                padding: 32px 10px 24px;
            }

            .vt-contact-page .page-header__inner h2 {
                font-size: 24px;
            }

            .vt-contact-page .contact-page {
                padding: 18px 0 16px;
            }

            .vt-contact-page .section-title__title {
                font-size: 20px;
            }

            .vt-contact-page .contact-page__left {
                padding: 16px 14px;
            }

            .vt-contact-page .contact-page__list li .icon span {
                font-size: 22px;
            }

            .vt-contact-page .contact-page__input-box input,
            .vt-contact-page .custom-form {
                height: 42px !important;
                min-height: 42px;
                font-size: 14px !important;
            }

            .vt-contact-page .google-map-two iframe {
                height: 200px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="vt-contact-page">
    <!--Page Header Start-->
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Contact Us</h2>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>Contact</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--Page Header End-->

    <!--Contact Page Start-->
    <section class="contact-page">
        <div class="container">
            <div class="row">
                <div class="col-12 col-xl-5 contact-page__info">
                    <div class="contact-page__left">
                        <ul class="contact-page__list list-unstyled">
                            <li>
                                <div class="icon">
                                    <span class="icon-call-2"></span>
                                </div>
                                <div class="content">
                                    <span>Any Questions? Call us</span>
                                    <p>
                                        <a href="tel:+918025251188">080-25251188 </a>
                                        <br />
                                        <a href="tel:+919741431354">+91 9741431354</a>

                                        <br />
                                        <a href="tel:+919901073647">+91 9901073647</a>
                                        <br />
                                        <a href="tel:+919845400849">+91 9845400849</a>
                                        <br />
                                        <a href="tel:+919845679192">+91 9845679192</a>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="icon">
                                    <span class="icon-email"></span>
                                </div>
                                <div class="content">
                                    <span>Any Questions? Email us</span>
                                    <p>
                                        <a href="mailto:info@vinayakatravels.com">info@vinayakatravels.com</a>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="icon">
                                    <span class="icon-location"></span>
                                </div>
                                <div class="content">
                                    <span>Our Location</span>
                                    <p>
                                        M/s. Vinayaka Travels<br />
                                        #509, Ground Floor,<br />
                                        7th Cross, 10th Main Road,
                                            HAL III Stage, Jeevan Bhima Nagar,
                                            Bangalore - 560075
                                       
                                    </p>
                                </div>
                            </li>
                        </ul>


                    </div>
                </div>
                <div class="col-12 col-xl-7 contact-page__form-col">
                    <div class="contact-page__right">
                        <div class="section-title text-left sec-title-animation animation-style2 mb-0">
                            <div class="section-title__tagline-box">
                                <span class="section-title__tagline">Need Any Help?</span>
                            </div>
                            <h2 class="section-title__title section-title__title-custom title-animation">Get in
                                    Touch With Us</h2>
                        </div>
                        <div class="contact-form-validated contact-page__form" action="#"
                            method="post" novalidate="novalidate">
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <div class="contact-page__input-box">
                                        <asp:TextBox ID="txtFName" placeholder="First Name" MaxLength="64" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtFName" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="contact-page__input-box">
                                        <asp:TextBox ID="txtLName" placeholder="Last Name" MaxLength="64" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtLName" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="contact-page__input-box">
                                        <asp:TextBox ID="TxtMNo" runat="server" placeholder="Phone" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtMNo" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" ValidationGroup="Contact" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Enter 10 digit valid MobileNo." ValidationExpression="^([0-9]{10})$" ControlToValidate="TxtMNo" ValidationGroup="Contact" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="contact-page__input-box">
                                        <asp:TextBox ID="txtEmail" placeholder="Email Address" MaxLength="64" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="tf1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Invalid E-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="contact-page__input-box text-message-box">
                                        <asp:TextBox ID="txtMessage" Rows="3" TextMode="MultiLine" placeholder="Enter your message..." runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="Reqmsg" runat="server" ControlToValidate="txtMessage" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12 vt-contact-captcha">
                                    <div class="vt-contact-captcha__img">
                                        <asp:Image ID="Image1" class="img-captcha" CssClass="border-width: 0px; captchImg" src="capchanum.aspx?637725949916051783" runat="server" />
                                        <asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" ImageUrl="/assets/images/captcha.png" CssClass="capcha-refreshbox refreshImg" formnovalidate="" runat="server" />
                                    </div>
                                    <div class="vt-contact-captcha__input contact-page__input-box">
                                        <asp:TextBox ID="txtCaptcha" placeholder="Please enter result here" onkeypress="return isNumber(event)" MaxLength="2" CssClass="custom-form" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCaptcha" Display="Dynamic" ValidationGroup="Contact" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Field can't be empty"></asp:RequiredFieldValidator>
                                        <asp:Label runat="server" Visible="false" class="text-danger" ID="lblCaptch"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="contact-page__btn-box">
                                        <asp:LinkButton ID="btnSubmit" CssClass="thm-btn contact-page__btn" OnClick="btn_submit_Click" ValidationGroup="Contact" runat="server"> Send Message<i class="icon-paper-plan"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="result"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Contact Page End-->

    <!--Google Map Start-->
    <section class="google-map-two">
        <div class="section-shape-1" style="background-image: url(assets/images/shapes/section-shape-1.html);"></div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d124411.81354809331!2d77.5648352437015!3d12.980218430647668!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1734431070928!5m2!1sen!2sin" width="100%" height="380" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>
    <!--Google Map End-->
    </div>
</asp:Content>

