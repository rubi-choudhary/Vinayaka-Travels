<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>About Vinayaka Travels — Employee Transport Company</title>
    <meta name="description" content="Established in 2002, Vinayaka Travels is a trusted staff transportation company with GPS-tracked fleet, automated rostering and 8,500+ employees transported daily across India." />
    <meta name="keywords" content="Staff Transportation Services; Corporate Employee Transportation" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />

    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "AboutPage",
      "@id": "https://www.vinayakatravels.com/about.aspx#aboutpage",
      "url": "https://www.vinayakatravels.com/about.aspx",
      "name": "About Vinayaka Travels",
      "description": "Vinayaka Travels is a Bengaluru-based employee transportation and corporate mobility solutions provider established in 2002, offering reliable staff transport services with advanced technology and fleet management solutions.",
      "isPartOf": {
        "@id": "https://www.vinayakatravels.com/#website"
      },
      "about": {
        "@id": "https://www.vinayakatravels.com/about.aspx#organization"
      }
    },

    {
      "@type": "Organization",
      "@id": "https://www.vinayakatravels.com/about.aspx#organization",
      "name": "Vinayaka Travels",
      "url": "https://www.vinayakatravels.com/",
      "foundingDate": "2002",
      "description": "Vinayaka Travels provides employee transportation, corporate travel solutions, ground transport services, and mobility solutions across Bengaluru, Chennai, Hyderabad and other locations.",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "#509, Ground Floor, 7th Cross, 10th Main Road, HAL III Stage, Jeevan Bhima Nagar",
        "addressLocality": "Bangalore",
        "addressRegion": "Karnataka",
        "postalCode": "560075",
        "addressCountry": "IN"
      },
      "contactPoint": {
        "@type": "ContactPoint",
        "telephone": "+91-8645322290",
        "contactType": "customer service",
        "email": "info@vinayakatravels.com",
        "areaServed": "IN",
        "availableLanguage": [
          "English"
        ]
      },
      "knowsAbout": [
        "Employee Transportation Services",
        "Corporate Transportation",
        "Staff Transport Services",
        "Fleet Management",
        "Ground Transport Solutions",
        "Corporate Mobility Solutions"
      ]
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/about.aspx#breadcrumb",
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
          "name": "About Us",
          "item": "https://www.vinayakatravels.com/about.aspx"
        }
      ]
    }
  ]
}
</script>

    
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="canonical" href="https://www.vinayakatravels.com/about.aspx" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'G-T78GXY1Y17');
    </script>
    <style>
        .vt-about-page .page-header {
            padding: 90px 0 80px;
        }

        .vt-about-page .about-one.about-page {
            padding: 70px 0 50px;
        }

        .vt-about-page .testimonial-one {
            padding: 40px 0 36px;
        }

        .vt-about-page .like-us-two {
            padding: 60px 0 48px;
        }

        .vt-about-page .faq-one {
            padding: 40px 0 50px;
        }

        .vt-about-page .team-details {
            padding: 40px 0 50px !important;
        }

        .vt-about-page .section-title,
        .vt-about-page .section-title-three {
            margin-bottom: 20px;
        }

        .vt-about-page .section-title-three__title {
            font-size: 36px;
            line-height: 1.3;
            margin-top: 0;
        }

        .vt-about-page .about-one__left,
        .vt-about-page .about-one__right {
            margin-left: 0;
            margin-right: 0;
        }

        .vt-about-page .about-one__right {
            margin-top: 0;
        }

        .vt-about-page .about-one__img img {
            width: 100%;
            height: 650px;
            display: block;
        }

        .vt-about-page .testimonial-one__single-one-img img {
            width: 100%;
            height: auto;
            display: block;
            object-fit: cover;
        }

        .vt-about-page .faq-one__left {
            padding: 48px 40px;
        }

        .vt-about-page .testimonial-one__single-one-text ul,
        .vt-about-page .like-us-two.about-objectives ul,
        .vt-about-page .faq-one .accrodion-content ul {
            padding-left: 18px;
            margin: 0;
        }

        .vt-about-page .testimonial-one__single-one-text li {
            margin-bottom: 6px;
            padding-left: 0;
        }

        @media (max-width: 1366px) {
            .vt-about-page .page-header {
                padding: 80px 0 70px;
            }

            .vt-about-page .page-header__inner h2 {
                font-size: 48px;
                line-height: 1.2;
                letter-spacing: -1px;
            }

            .vt-about-page .about-one.about-page {
                padding: 60px 0 40px;
            }

            .vt-about-page .section-title-three__title {
                font-size: 32px;
            }
        }

        @media (max-width: 1200px) {
            .vt-about-page .page-header__inner h2 {
                font-size: 42px;
            }

            .vt-about-page .about-one.about-page {
                padding: 52px 0 36px;
            }

            .vt-about-page .testimonial-one {
                padding: 36px 0 28px;
            }

            .vt-about-page .like-us-two {
                padding: 52px 0 40px;
            }

            .vt-about-page .faq-one__left {
                padding: 40px 32px;
            }

            .vt-about-page .section-title-three__title {
                font-size: 30px;
            }
        }

        @media (max-width: 1199.98px) {
            .vt-about-page .about-one__left,
            .vt-about-page .about-one__img-box,
            .vt-about-page .about-one__right {
                height: auto !important;
                min-height: 0 !important;
                max-width: 100%;
            }

            .vt-about-page .about-one__right {
                margin-top: 28px;
            }

            .vt-about-page .about-one__experience-box {
                position: relative !important;
                bottom: auto !important;
                left: auto !important;
                right: auto !important;
                margin-top: 16px;
                max-width: 100%;
            }

            .vt-about-page .about-one__img img {
                border-radius: 12px;
            }

            .vt-about-page .testimonial-one__single-one-img-box {
                display: flex;
                flex-direction: column;
            }

            .vt-about-page .testimonial-one__single-one-img {
                height: auto;
            }

            .vt-about-page .testimonial-one__single-one-content {
                position: static !important;
                left: auto;
                bottom: auto;
                background: #fff;
                padding: 18px 16px 8px;
            }

            .vt-about-page .testimonial-one__single-one-title {
                font-size: 20px;
                line-height: 1.35;
            }

            .vt-about-page .testimonial-one__single-one-content h3 a {
                color: #0b2b4c !important;
            }

            .vt-about-page .testimonial-one__single-one-text,
            .vt-about-page .testimonial-one__single-one-text li,
            .vt-about-page .testimonial-one__single-one-sub-title {
                color: #333 !important;
            }

            .vt-about-page .testimonial-one__single-one-3 .testimonial-one__single-one-img::before {
                display: none;
            }

            .vt-about-page .team-details__client-info-inner {
                gap: 28px;
            }
        }

        @media (max-width: 991px) {
            .vt-about-page .page-header {
                padding: 80px 0 80px;
            }

            .vt-about-page .page-header__inner h2 {
                font-size: 34px;
                line-height: 1.25;
                letter-spacing: 0;
                margin-bottom: 12px;
            }

            .vt-about-page .about-one.about-page {
                padding: 36px 0 24px;
            }

            .vt-about-page .testimonial-one {
                padding: 28px 0 20px;
            }

            .vt-about-page .like-us-two {
                padding: 40px 0 28px;
            }

            .vt-about-page .faq-one {
                padding: 28px 0 36px;
            }

            .vt-about-page .faq-one__left {
                padding: 28px 20px;
            }

            .vt-about-page .section-title-three__title {
                font-size: 26px;
            }

            .vt-about-page .team-details__client-info-inner {
                flex-direction: column;
                align-items: stretch;
                gap: 20px;
            }

            .vt-about-page .team-details__client-img,
            .vt-about-page .team-details__client-info {
                max-width: 100%;
            }

            .vt-about-page .team-one.team-carousel-page {
                padding: 40px 0 !important;
            }
        }

        @media (max-width: 767px) {
            .vt-about-page .page-header {
                padding: 80px 12px 80px;
            }

            .vt-about-page .page-header__inner h2 {
                font-size: 28px;
            }

            .vt-about-page .about-one.about-page,
            .vt-about-page .testimonial-one,
            .vt-about-page .like-us-two,
            .vt-about-page .faq-one,
            .vt-about-page .team-details {
                padding-left: 0;
                padding-right: 0;
            }

            .vt-about-page .about-one.about-page {
                padding-top: 28px;
                padding-bottom: 16px;
            }

            .vt-about-page .testimonial-one {
                padding-top: 20px;
                padding-bottom: 12px;
            }

            .vt-about-page .section-title {
                margin-bottom: 12px;
            }

            .vt-about-page .section-title-three__title {
                font-size: 22px;
                line-height: 1.3;
            }

            .vt-about-page .testimonial-one__single-one-content {
                padding: 16px 12px 4px;
            }

            .vt-about-page .testimonial-one__single-one-title {
                font-size: 18px;
            }

            .vt-about-page .faq-one__left {
                padding: 22px 16px;
            }

            .vt-about-page .faq-one__left .section-title-three__title {
                font-size: 22px;
            }

            .vt-about-page .like-us-two__title {
                font-size: 20px;
                padding-bottom: 14px;
            }

            .vt-about-page .team-details__client-name {
                font-size: 22px;
                margin-bottom: 12px;
            }

            .vt-about-page .gallery-one__carousel.owl-carousel .owl-item img {
                height: 220px;
            }
            .faq-one .faq-one-accrodion .accrodion-content {
    position: relative;
    padding-bottom: 23px;
    padding-left: 10px;
    padding-right: 10px;
    margin-top: -9px;
}

        }


        @media (max-width: 992px) {
    .vt-about-page .about-one.about-page .row {
        display: flex;
        flex-direction: column;
    }

    .vt-about-page .about-one.about-page .row > div:first-child {
        order: 2; /* Image */
    }

    .vt-about-page .about-one.about-page .row > div:nth-child(2) {
        order: 1; /* Content */
    }

    .vt-about-page .about-one__img img {
    width: 100%;
    height: 450px;
    display: block;
}
                .like-us-two__single {
    position: relative;
    display: flex;
    align-items: flex-start;
    flex-direction:column;
    gap: 15px;
    margin-bottom: 24px;
    -webkit-transition: all 500ms ease;
    transition: all 500ms ease;
}

}

        @media (max-width: 567px) {
            .vt-about-page .page-header {
                padding: 80px 10px 80px;
            }

            .vt-about-page .page-header__inner h2 {
                font-size: 24px;
            }

            .vt-about-page .about-one__img img {
                width: 100%;
                height: 450px;
                display: block;
            }



            .vt-about-page .about-one.about-page {
                padding-top: 22px;
                padding-bottom: 12px;
            }

            .vt-about-page .testimonial-one {
                padding-top: 16px;
                padding-bottom: 8px;
            }

            .vt-about-page .section-title-three__title {
                font-size: 20px;
            }

            .vt-about-page .about-one.about-page p,
            .vt-about-page .testimonial-one p {
                font-size: 14px;
                line-height: 1.55;
            }

            .vt-about-page .testimonial-one__single-one-text li {
                font-size: 14px;
                line-height: 1.45;
            }

            .vt-about-page .faq-one__left {
                padding: 18px 12px;
            }
            .faq-one .faq-one-accrodion .accrodion-content {
    position: relative;
    padding-bottom: 23px;
    padding-left: 10px;
    padding-right: 10px;
    margin-top: -9px;
}

            .like-us-two__single {
    position: relative;
    display: flex;
    align-items: flex-start;
    flex-direction:column;
    gap: 15px;
    margin-bottom: 24px;
    -webkit-transition: all 500ms ease;
    transition: all 500ms ease;
}

        }


        /* FIX OBJECTIVES & VALUES ICON POSITION */
.like-us-two.about-objectives .like-us-two__single {
    display: flex !important;
    flex-direction: row !important;
    align-items: flex-start !important;
    gap: 16px !important;
    position: relative !important;
    padding-top: 0 !important;
}

.like-us-two.about-objectives .like-us-two__single-shape {
    position: static !important;
    top: auto !important;
    left: auto !important;
    flex: 0 0 48px !important;
    width: 48px !important;
    height: 48px !important;
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    border-radius: 50% !important;
    z-index: 2 !important;
}

.like-us-two.about-objectives .like-us-two__single-shape i {
    position: relative !important;
    top: auto !important;
    left: auto !important;
    transform: none !important;
    display: block !important;
    margin: 0 !important;
    padding: 0 !important;
    font-size: 19px !important;
    line-height: 1 !important;
}

.like-us-two.about-objectives .like-us-two__content {
    flex: 1 1 auto !important;
    min-width: 0 !important;
    padding-top: 0 !important;
}

.like-us-two.about-objectives .like-us-two__title {
    min-height: 48px !important;
    display: flex !important;
    align-items: center !important;
    padding-left: 0 !important;
    margin-bottom: 20px !important;
}

.like-us-two.about-objectives .like-us-two__title::after {
    left: 0 !important;
}

@media (max-width: 992px) {
    .like-us-two.about-objectives .like-us-two__single {
        flex-direction: column !important;
        align-items: flex-start !important;
        gap: 12px !important;
    }

    .like-us-two.about-objectives .like-us-two__title {
        padding-left: 0 !important;
        margin-bottom: 16px !important;
    }

    .vt-row,
    .vt-row.reverse {
        flex-direction: column;
    }

    .vt-row-img {
        width: 100%;
        min-height: 300px;
        order: 2 !important;   /* image second on mobile */
    }

    .vt-row-text {
        order: 1 !important;   /* content first on mobile */
    }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="vt-about-page">
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(/assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h1 class="text-white">About Company</h1>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>About Company</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--Page Header End-->
    <!--About One Start -->
    <section class="about-one about-page">
        <div class="container">
            <div class="row">
                <div class="col-12 col-xl-6  wow slideInLeft" data-wow-delay="100ms" data-wow-duration="2500ms">
                    <div class="about-one__left">
                        <div class="about-one__img-box">
                            <div class="about-one__img">
                                <img src="assets/images/about-us.jpg" alt="">
                            </div>
                            <div class="about-one__experience-box">
                                <div class="about-one__count-and-text">
                                    <div class="about-one__count-shape-1">
                                        <img src="assets/images/shapes/about-one-count-shape-1.png" alt="">
                                    </div>
                                    <div class="about-one__count count-box">
                                        <h3 class="count-text" data-stop="25" data-speed="1500">00</h3>
                                        <span>+</span>
                                    </div>
                                    <p class="about-one__count-text">Years Of Experience</p>
                                </div>
                                <div class="about-one__ratting-and-text">
                                    <div class="about-one__ratting">
                                        <span class="icon-star"></span>
                                        <span class="icon-star"></span>
                                        <span class="icon-star"></span>
                                        <span class="icon-star"></span>
                                        <span class="icon-star"></span>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-6 wow fadeInRight" data-wow-delay="100ms">
                    <div class="about-one__right">
                        <div class="section-title-two text-left sec-title-animation animation-style2">
                            <div class="section-title-two__tagline-box">
                                <span class="section-title-two__tagline">ABOUT US</span>
                            </div>
                            <!--<h2 class="section-title-two__title title-animation">Experience freedom<br> on four
                            wheels</h2>-->
                        </div>
                        <p class="mb-3"><b>Vinayaka Travels</b>   is based out of Bengaluru - the silicon city of India & we have extended our services at Chennai, Hyderabad and also expanding on a Pan India level.</p>
                        <p class="mb-3"><b>In the Year 2002,</b> the Company started a Staff transport services (People Logistics) operating to cater the demand of professional transport service provider.</p>
                        <p class="mb-3"><b>Vinayaka Travels </b>with the expertise of providing Ground Transport Services having a niche in the market is the market leader in terms of Services, After Sales Service, Strict Compliance Adherence and above all value for money to customers and esteemed shareholders. Our services are at par with National Transport Services considering the people behind us.</p>
                        <p class="mb-3"><b>Vinayaka Travels</b>   provides an end-to-end solution for employee transportation through the combination of Automated and Manual process. It carries an advantage of very less human intervention in day to day activities and results into accurate data and transparent operations.</p>
                        <p class="mb-3">
                            <b>Vinayaka Travels</b>   today transports around <b>8500+ employees with 400+ Vehicles</b> daily and operates across metro cities and satellite towns in India and plans to expand to various cities in the near future.
                           
                        </p>
                        <p class="mb-3"><b>Vinayaka Travels </b>team has close to <b>260-Employees </b>consisting of Thorough Professionals with more than two to Three decades of experience in Employee Transport Services. </p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--About One End -->
    <!--Testimonial One Start -->
    <section class="testimonial-one">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="section-title text-center sec-title-animation animation-style1">

                        <h2 class="section-title-three__title title-animation text-dark mb-2">Our Automation Salient Features:</h2>
                        <p class="mb-3">As a logistic service provider we have made substantial investments in technology related to employee transportation and have the below mentioned solutions which can be demonstrated to you.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <!--Testimonial One Single One Start-->
                <div class="col-12 col-xl-6 col-lg-6 wow fadeInLeft" data-wow-delay="100ms">
                    <div class="testimonial-one__single-one testimonial-one__single-one-3">
                        <div class="testimonial-one__single-one-img-box">
                            <div class="testimonial-one__single-one-img">
                                <img src="assets/images/vehicle-tracking.jpg" alt="">
                            </div>
                            <div class="testimonial-one__single-one-content">
                                <h3 class="testimonial-one__single-one-title mb-3 text-white">
                                    GPS - based vehicle tracking solution.
                                    
                                </h3>

                                <div class="testimonial-one__single-one-text">
                                    <ul>
                                        <li>Panic Button for Employee Safety and Security</li>
                                        <li>HID/RFID Card Reader for capturing online attendance from the vehicle</li>
                                        <li>Employee attendance capturing based on QR code</li>
                                        <li>Employee attendance capturing based on OTP</li>
                                        <li>Employee attendance capturing based on 4 digit pin</li>
                                        <li>Employee attendance blue tooth based.</li>
                                        <li>Safe home reach button for female employees.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-xl-6 col-lg-6 wow fadeInRight" data-wow-delay="600ms">
                    <div class="testimonial-one__single-one testimonial-one__single-one-3">
                        <div class="testimonial-one__single-one-img-box">
                            <div class="testimonial-one__single-one-img">
                                <img src="assets/images/employee-tracking.jpg" alt="">
                            </div>
                            <div class="testimonial-one__single-one-content">
                                <h3 class="testimonial-one__single-one-title mb-3 text-white">
                                    Employee Apps
                                   
                                </h3>
                                <div class="testimonial-one__single-one-text">
                                    <ul>
                                        <li>To receive the details of the vehicle routed</li>
                                        <li>To know the exact location of the vehicle with ETA (Expected Time of Arrival)</li>
                                        <li>To press the safe home button on reaching the employee residence </li>
                                        <li>To press the panic button in case of emergency situations</li>
                                        <li>To initiate a call to the Transport help desk at the press of the button</li>
                                        <li>To generate a tracking link and send it to relatives such that they can track the vehicles if needed.</li>
                                        <li>To Roster/DE roster & Driver Rating.</li>

                                    </ul>


                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-xl-6 col-lg-6 wow fadeInRight" data-wow-delay="600ms">
                    <div class="testimonial-one__single-one testimonial-one__single-one-3">
                        <div class="testimonial-one__single-one-img-box">
                            <div class="testimonial-one__single-one-img">
                                <img src="assets/images/web-rostering.jpg" alt="">
                            </div>
                            <div class="testimonial-one__single-one-content">
                                <h3 class="testimonial-one__single-one-title mb-3 text-white">
                                    Web based Rostering and Auto Routing with MIS.
                                    
                                </h3>
                                <div class="testimonial-one__single-one-text">
                                    <ul>
                                        <li>Rostering</li>
                                        <li>Trip sheet generation</li>
                                        <li>MIS</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-12 col-xl-6 col-lg-6 wow fadeInRight" data-wow-delay="600ms">
                    <div class="testimonial-one__single-one testimonial-one__single-one-3">
                        <div class="testimonial-one__single-one-img-box">
                            <div class="testimonial-one__single-one-img">
                                <img src="assets/images/driver-app.jpg" alt="">
                            </div>
                            <div class="testimonial-one__single-one-content">
                                <h3 class="testimonial-one__single-one-title mb-3 text-white">
                                    Driver Apps.
                                    
                                </h3>

                                <div class="testimonial-one__single-one-text">
                                    <ul>
                                        <li>To receive the electronic trip sheets on Android Phone</li>
                                        <li>To capture drive attendance</li>
                                        <li>To capture employee attendance</li>
                                        <li>To navigate to the employee location.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


                <!--Testimonial One Single One End-->


            </div>
        </div>
    </section>
    <!--Testimonial One End -->
    <section class="like-us-two about-objectives">
        <div class="like-us-two__bg" style="background-image: url(assets/images/shapes/like-us-two-bg-shape.png);">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <!--Like Us Single Start-->
                <div class="col-12 col-xl-5 col-lg-6 wow fadeInLeft" data-wow-delay="100ms">
                    <div class="like-us-two__single">
                        <div class="like-us-two__single-shape"> 
 <i class="fas fa-bullseye"></i>
                         </div>
                        <div class="like-us-two__content">
                            
                            <h3 class="like-us-two__title"><a href="#">Our Objectives</a></h3>
                                    
                               
                            <ul>
                                <li>To be Market Leader in the field of Employees Transportation through continuous innovations and value added services.</li>
                                <li>To provide Total Solutions to the Customer at cost effective Prices.</li>
                                <li>To become the most respectable Transport Management Services outfit in India by combining help desk Management, Transport Operations Management and also project execution on turnkey basis.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--Like Us Single End-->
                <!--Like Us Single Start-->
                <div class="col-12 col-xl-5 col-lg-6 wow fadeInUp" data-wow-delay="300ms">
                    <div class="like-us-two__single">
                        <div class="like-us-two__single-shape">
                            <i class="fas fa-bullseye"></i>
                        </div>
                        <div class="like-us-two__content">
                            <h3 class="like-us-two__title"><a href="#">Our Values</a></h3>
                            <ul>
                                <li>To provide TCS (Total Customer satisfaction) through continuous innovations and process improvement.</li>

                                <li>We believe that the most important asset of this Company is its employee’s integrity, respect, dignity, fairness & empathy shall how we treat each other within working together in harmony.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--Like Us Single End-->
                <!--Like Us Single Start-->

            </div>
        </div>
    </section>


    <section class="faq-one">
        <div class="faq-one__bg"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-xl-11">
                    <div class="faq-one__left bg-white">
                        <div class="section-title-three text-left sec-title-animation animation-style1">

                            <h3 class="section-title-three__title title-animation text-dark">Our Mission &amp; Our Strengths</h3>
                        </div>

                        <div class="accrodion-grp faq-one-accrodion faq-one-accrodion-1 bg-white" data-grp-name="faq-one-accrodion-1">

                            <div class="accrodion  active">
                                <div class="accrodion-title">
                                    <h3 class="fs-4">Our Mission</h3>
                                </div>
                                <div class="accrodion-content" style="">
                                    <div class="inner">
                                        <p class="mb-3">To deliver cutting edge Transport Management solutions to our end customers and improve their bottom lines in business.</p>
                                        <p>Our prime mission is to become one of the most chosen service provider in the industry by pro-active thinking, astute planning with dynamic visions from relentless pursuit for excellence.</p>
                                        <p>We establish ourselves as a leader in Ground Transportation Business, through wide network, state of art technology, strict quality assurance processes, highly motivated and experienced manpower, to achieve the larger market share, higher revenues, higher profitability and most reliable service delivery status thus creating value for our Customers, Shareholders and Employees.</p>
                                        <ul>
                                            <li>Provide an efficient transport system at a competent pricing.</li>
                                            <li>Work hand in glove with the client to ensure satisfaction and safety of the commuters.</li>
                                            <li>Converge technology with transport services to provide futuristic services.</li>
                                            <li>In House Developed Transport Automation tool with value added features as per client requirement</li>
                                            <li>Providing an End to End Transport service which includes deploying Man power & Technology for Vehicles.</li>

                                        </ul>
                                        <p class="mb-3">We Vinayaka Travels plan to achieve the above mission by adhering to the industry standards and the following parameters.</p>
                                        <p><span>Quality:</span> By maintaining high standards of quality work on the operational front, culture & service that provide immense satisfaction to our customers.</p>
                                        <p><span>Cost:</span> By always remaining competitive by world standards and maintain service levels that achieve customer satisfaction.</p>
                                        <p><span>Delivery:</span> By always being on time with excellent planning &execution by curbing down unnecessary delays, not hampering the productivity of the company.</p>
                                        <p><span>Standards:</span> By always maintaining the industry standards with respect to Staff, Quality of vehicles, maintenance & periodical check-up’s, well trained & educated chauffeurs.</p>
                                        <p><span>Development:</span> In developing cost effective & innovative service standards that give an edge over the others in the market.</p>
                                        <p><span>Safety:</span> By providing a world class, safe & hazard free work environment to our employees and back up facilities.</p>
                                        <p><span>Moral:</span> By always keeping our moral standards high and conducting our business in high dignity, according to the rules & regulations by being dedicated to the welfare of the employees.</p>
                                    </div>
                                    <!-- /.inner -->
                                </div>
                            </div>
                            <div class="accrodion">
                                <div class="accrodion-title">
                                    <h3 class="fs-4">Our Strengths   </h3>
                                </div>
                                <div class="accrodion-content" style="display: none;">
                                    <div class="inner">
                                        <p>
                                            Vinayaka Travels   now have a diversified and versatile fleet which includes economy and premium segment cars, light commercial vehicles, and bigger Seater buses available in AC and non-AC segment as per the client requirement.We are catering our services to both the IT & Non IT sectors & we have been operating for around 40- BPO /IT Companies from the last  45 -Years transporting with Strong credentials and Track record and proven performance amongst BPOs, Software, and Telecom companies in India.
                                           
                                        </p>
                                        <p>We have made major inroads & substantial investments on our infrastructure, manpower and vehicles and our goal is to become a respectable logistics provider and one among the leading service providers for the employee commutation in the industry today.</p>


                                        <ul>
                                            <li>Professionally managed having well trained and committed staff that completely understand the dynamics of the industry and cater to the needs of the clients.</li>
                                            <li>Our exposure to corporate process and systems.</li>
                                            <li>Our understanding of actual Operational ground realities.</li>
                                            <li>Our <b>FEMEA’s.</b> (Failure Mode and Effects Analysis).   </li>
                                            <li>Two decades of Efficient Transport Managing.</li>
                                            <li>Strict compliance to the legal and statutory requirements related to Vehicles, Services and People.</li>
                                            <li>Having a backup fleet of vehicles to address contingencies.</li>
                                            <li>Provides transportation management solution.</li>
                                            <li>Has strategic tie ups with various vehicle manufacturers, technology and GPS providers - through which can deliver several value added services.</li>
                                        </ul>
                                    </div>
                                    <!-- /.inner -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!--Team Details Start-->
    <section class="team-details" style="padding: 50px 0px 70px 0px;">
        <div class="container">
            <div class="section-title text-center sec-title-animation animation-style1">

                <h2 class="section-title__title title-animation">Managing Partner
                </h2>
            </div>
            <div class="team-details__inner">
                <div class="team-details__client-info-inner">
                    <div class="team-details__client-img">
                        <img src="assets/images/gallery/director.jpg" alt="">
                    </div>
                    <div class="team-details__client-info">
                        <h3 class="team-details__client-name">Mr. Vijay Kumar
                        </h3>

                        <p class="mb-3">
                            Mr. Vijay Kumar has over <b>45+ years</b> experience in the
                                Employee Transport Services & car rental industry.
                           
                        </p>
                        <p class="mb-3">
                            He has worked as a Managing Partner and a Director
                                close to four decades.  He has rich experience in
                                handling Sales, Operations, Accounting and other
                                company activities.
                           
                        </p>
                        <p class="mb-3">
                            <b>Mr. Vijay Kumar</b>  is the Director  and he is responsible
                                for the complete business activities of <b>Vinayaka Travels</b>

                        </p>
                    </div>
                </div>



            </div>
        </div>
    </section>
    <!--Team Details End-->
    <!--Gallery One Start -->
    <section class="gallery-one">
        <div class="gallery-one__carousel owl-theme owl-carousel">
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/1.jpeg" alt="">
                    </div>
                </div>
            </div>
            <!--Gallery One Single End-->
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/2.jpeg" alt="">
                    </div>
                </div>
            </div>
            <!--Gallery One Single End-->
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/3.jpeg" alt="">
                    </div>
                </div>
            </div>
            <!--Gallery One Single End-->
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/4.jpeg" alt="">
                    </div>
                </div>
            </div>
            <!--Gallery One Single End-->
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/5.jpeg" alt="">
                    </div>
                </div>
            </div>
            <!--Gallery One Single End-->
            <!--Gallery One Single Start-->
            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/6.jpeg" alt="">
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/7.jpeg" alt="">
                    </div>
                </div>
            </div>


            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/8.jpeg" alt="">
                    </div>
                </div>
            </div>


            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/9.jpeg" alt="">
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/10.jpeg" alt="">
                    </div>
                </div>
            </div>


            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/11.jpeg" alt="">
                    </div>
                </div>

            </div>

            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/12.jpeg" alt="">
                    </div>
                </div>

            </div>

            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/13.jpeg" alt="">
                    </div>
                </div>

            </div>

            <div class="item">
                <div class="gallery-one__single">
                    <div class="gallery-one__img">
                        <img src="assets/images/gallery/14.jpeg" alt="">
                    </div>
                </div>

            </div>
        </div>
        <!--Gallery One Single End-->

    </section>
    <!--Gallery One End -->
    <!--Team One Start -->
    <section class="team-one team-page team-carousel-page" style="padding: 70px 0px; background: #f5f5f5">
        <div class="team-one__inner">
            <div class="container">

                <div class="section-title text-center sec-title-animation animation-style1">

                    <h2 class="section-title__title title-animation">Our Clients</h2>
                </div>
                <div class="team-carousel-style owl-carousel owl-theme carousel-dot-style">
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo1.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo2.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo3.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo4.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo5.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo6.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo9.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo10.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo11.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo12.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo13.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo14.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo15.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo18.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo19.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo20.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/logos/logo21.jpg" alt="">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
</asp:Content>

