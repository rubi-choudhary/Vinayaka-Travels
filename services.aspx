<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Employee Transport, Airport Cabs, Outstation & Event Transport</title>
    <meta name="description" content="Vinayaka Travels provides employee transportation, airport transfers, outstation cabs, event transportation and long term car lease services, pan-India." />
    <meta name="keywords" content="Employee Transportation Services; Airport Taxi Service Bangalore; Outstation Cabs Bangalore; Event Transportation Services Bangalore; Long Term Car Lease Bangalore" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />

    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [

    {
      "@type": "WebPage",
      "@id": "https://www.vinayakatravels.com/services.aspx#webpage",
      "url": "https://www.vinayakatravels.com/services.aspx",
      "name": "Services - Vinayaka Travels",
      "description": "Vinayaka Travels provides employee transportation, airport transfers, outstation cabs, event transportation and long term car lease services with reliable mobility solutions.",
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
      "@id": "https://www.vinayakatravels.com/services.aspx#service",
      "serviceType": "Transportation Services",
      "provider": {
        "@id": "https://www.vinayakatravels.com/#organization"
      },
      "areaServed": {
        "@type": "Place",
        "name": "India"
      },
      "hasOfferCatalog": {
        "@type": "OfferCatalog",
        "name": "Vinayaka Travels Services",
        "itemListElement": [

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Service",
              "name": "Employee Transportation Services",
              "description": "Reliable daily employee commute solutions ensuring safe, comfortable and punctual workplace transportation."
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Service",
              "name": "Airport Transfer Services",
              "description": "Professional airport pickup and drop transportation services for hassle-free travel."
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Service",
              "name": "Outstation Cab Services",
              "description": "Comfortable and dependable outstation cab services for business and personal travel."
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Service",
              "name": "Event Transportation Services",
              "description": "Organized transportation solutions for corporate events, conferences and gatherings."
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Service",
              "name": "Long Term Car Lease Services",
              "description": "Flexible long-term vehicle rental and transportation solutions for business requirements."
            }
          }

        ]
      }
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/services.aspx#breadcrumb",
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
          "name": "Services",
          "item": "https://www.vinayakatravels.com/services.aspx"
        }
      ]
    }

  ]
}
</script>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Google tag (gtag.js) -->

    <link rel="canonical" href="https://www.vinayakatravels.com/services.aspx" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'G-T78GXY1Y17');
    </script>
    <style>
        .vt-services-page .page-header {
            padding: 80px 0 64px;
        }

        .vt-services-page .check-out-two {
            padding: 48px 0 36px;
        }

        .vt-services-page .check-out-two .mb-4 {
            margin-bottom: 14px !important;
        }

        .vt-services-page .check-out-two__grid {
            display: grid !important;
            grid-template-columns: 1fr;
            gap: 16px;
            margin-left: 0;
            margin-right: 0;
        }

        .vt-services-page .check-out-two__grid > [class*="col-"] {
            width: 100%;
            max-width: 100%;
            flex: none;
            padding-left: 0;
            padding-right: 0;
        }

        .vt-services-page .check-out-two .col-xl-3 {
            width: 100%;
        }

        .vt-services-page .check-out-two__single {
            height: 100%;
            display: flex;
            flex-direction: column;
            margin-bottom: 0;
        }

        .vt-services-page .check-out-two__img img {
            width: 100%;
            height: auto;
            aspect-ratio: 16 / 10;
            object-fit: cover;
            display: block;
        }

        .vt-services-page .check-out-two__content {
            flex: 1 1 auto;
            min-height: 0;
            padding: 14px 16px 16px;
        }

        .vt-services-page .check-out-two__title {
            margin-bottom: 8px;
            font-size: 18px;
            line-height: 1.3;
        }

        .vt-services-page .section-title {
            margin-bottom: 20px;
        }

        .vt-services-page .team-one.team-carousel-page {
            padding: 40px 0 !important;
        }

        @media (min-width: 576px) {
            .vt-services-page .check-out-two__grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 18px;
            }
        }

        @media (max-width: 1366px) {
            .vt-services-page .page-header {
                padding: 72px 0 56px;
            }

            .vt-services-page .page-header__inner h2 {
                font-size: 48px;
                line-height: 1.2;
                letter-spacing: -1px;
            }

            .vt-services-page .check-out-two {
                padding: 40px 0 32px;
            }
        }

        @media (min-width: 1200px) {
            .vt-services-page .check-out-two__grid {
                grid-template-columns: repeat(3, minmax(0, 1fr));
                gap: 20px;
            }
        }

        @media (min-width: 1366px) {
            .vt-services-page .check-out-two__grid {
                grid-template-columns: repeat(5, minmax(0, 1fr));
                gap: 16px;
            }

            .vt-services-page .check-out-two__title {
                font-size: 16px;
            }

            .vt-services-page .check-out-two__content p {
                font-size: 13px;
                line-height: 1.4;
            }
        }

        @media (max-width: 1200px) {
            .vt-services-page .page-header__inner h2 {
                font-size: 42px;
            }

            .vt-services-page .check-out-two {
                padding: 36px 0 28px;
            }
        }

        @media (max-width: 1199.98px) {
            .vt-services-page .check-out-two__grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .vt-services-page .check-out-two__content {
                padding: 12px 14px 14px;
            }
        }

        @media (max-width: 991px) {
            .vt-services-page .page-header {
                padding: 48px 0 40px;
            }

            .vt-services-page .page-header__inner h2 {
                font-size: 34px;
                line-height: 1.25;
                letter-spacing: 0;
                margin-bottom: 12px;
            }

            .vt-services-page .check-out-two {
                padding: 28px 0 20px;
            }

            .vt-services-page .team-one.team-carousel-page {
                padding: 32px 0 !important;
            }
        }

        @media (max-width: 767px) {
            .vt-services-page .page-header {
                padding: 40px 12px 32px;
            }

            .vt-services-page .page-header__inner h2 {
                font-size: 28px;
            }

            .vt-services-page .check-out-two {
                padding: 24px 0 16px;
            }

            .vt-services-page .check-out-two__grid {
                grid-template-columns: 1fr;
                gap: 14px;
            }

            .vt-services-page .check-out-two .mb-4 {
                margin-bottom: 10px !important;
                font-size: 15px;
                line-height: 1.55;
            }

            .vt-services-page .section-title {
                margin-bottom: 12px;
            }
        }

        @media (max-width: 567px) {
            .vt-services-page .page-header {
                padding: 32px 10px 24px;
            }

            .vt-services-page .page-header__inner h2 {
                font-size: 24px;
            }

            .vt-services-page .check-out-two {
                padding: 18px 0 12px;
            }

            .vt-services-page .check-out-two .mb-4 {
                font-size: 14px;
            }

            .vt-services-page .check-out-two__title {
                font-size: 17px;
            }

            .vt-services-page .team-one.team-carousel-page {
                padding: 24px 0 !important;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="vt-services-page">
    <!--Page Header Start-->
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Services</h2>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>Services</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--Page Header End-->
    <!--Check Out Two Start -->
    <section class="check-out-two" id="listing">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <p class="mb-4">
                        <b>Vinayaka Travels</b>  prides itself in having not only a Modern fleet of vehicles but also a pool of experienced & courteous Chauffeurs always at the beck &amp; call of its customers. They are mastered to their Jobs to the best of their capabilities.
                    </p>

                    <p class="mb-4">
                        <b>Vinayaka Travels</b>  hold periodical Drivers &amp; Staff Training programmes from recognized Tutors to update their communications &amp; behavioral skills to meet the Customers’ requirements.
                     <b>Vinayaka Travels</b>entire team has the necessary experience, Training and expertise to handle the Transportation for VIP’s & Dignitaries in accordance with the protocol &amp; procedures.
                     <b>Vinayaka Travels</b>  have a dedicated team of people who manage the back hand operations round the clock. The team constantly monitors the activities of the fleet on a 24/7 basis. It maintains a roster of vehicles and the drivers.
                    </p>
                    <p class="mb-4">
                        Punctuality is one of the hall marks of our operations. The entire operation is computerized & all bookings are managed efficiently. Our employees are well trained and specialized in handling emergencies in crisis situations.
                    </p>
                </div>
            </div>
            <div class="row check-out-two__grid">
                <div class="col-12 col-xl-3 col-lg-4 col-md-6 wow fadeInLeft" data-wow-delay="100ms">
                    <div class="check-out-two__single">
                        <div class="check-out-two__img-box">
                            <div class="check-out-two__img">
                                <img src="assets/images/gallery/4seater1.jpg" />
                            </div>
                        </div>
                        <div class="check-out-two__content">
                            <h3 class="check-out-two__title">
                                <a href="#">Employee Transportation</a>
                            </h3>
                            <p>
                                Reliable and efficient daily commute solutions tailored to ensure employees reach the workplace on time with comfort and safety.
                            </p>

                        </div>
                    </div>
                </div>
                <!--Check Out Two Single End-->
                <!--Check Out Two Single Start-->
                <div class="col-12 col-xl-3 col-lg-4 col-md-6 wow fadeInLeft" data-wow-delay="200ms">
                    <div class="check-out-two__single">
                        <div class="check-out-two__img-box">
                            <div class="check-out-two__img">
                                <img src="assets/images/gallery/airport-transportation.jpg" alt="">
                            </div>
                        </div>
                        <div class="check-out-two__content">

                            <h3 class="check-out-two__title">
                                <a href="#">Airport Transfers</a>
                            </h3>
                            <p>
                                Seamless, punctual, and hassle-free transfers to and from the airport, ensuring stress-free travel.
                            </p>

                        </div>
                    </div>
                </div>
                <!--Check Out Two Single End-->
                <!--Check Out Two Single Start-->
                <div class="col-12 col-xl-3 col-lg-4 col-md-6 wow fadeInRight" data-wow-delay="300ms">
                    <div class="check-out-two__single">
                        <div class="check-out-two__img-box">
                            <div class="check-out-two__img">
                                <img src="assets/images/car3.png" alt="">
                            </div>
                        </div>
                        <div class="check-out-two__content">
                            <h3 class="check-out-two__title"><a href="#">Outstation Cabs</a></h3>
                            <p>
                                Comfortable and dependable cab services for outstation business trips or leisure travel needs.
                            </p>
                        </div>
                    </div>
                </div>
                <!--Check Out Two Single End-->
                <!--Check Out Two Single Start-->
                <div class="col-12 col-xl-3 col-lg-4 col-md-6 wow fadeInRight" data-wow-delay="400ms">
                    <div class="check-out-two__single">
                        <div class="check-out-two__img-box">
                            <div class="check-out-two__img">
                                <img src="assets/images/gallery/event-transportation.jpg" />
                            </div>
                        </div>
                        <div class="check-out-two__content">
                            <h3 class="check-out-two__title">
                                <a href="#">Event Transportation</a>
                            </h3>
                            <p>Smooth and organized transportation solutions for corporate events, conferences, and gatherings.</p>

                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-3 col-lg-4 col-md-6 wow fadeInRight" data-wow-delay="400ms">
                    <div class="check-out-two__single">
                        <div class="check-out-two__img-box">
                            <div class="check-out-two__img">
                                <img src="assets/images/gallery/car-lease.jpg" alt="">
                            </div>
                        </div>
                        <div class="check-out-two__content">
                            <h3 class="check-out-two__title">
                                <a href="#">Long Term Car Lease</a>
                            </h3>
                            <p>
                                Flexible and cost-effective car lease options for extended durations, meeting personal and business transportation needs.
                            </p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--Check Out Two End -->
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
    <!--Team One End -->
    </div>
</asp:Content>

