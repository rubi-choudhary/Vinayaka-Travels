<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Vinayaka Travels Employee Transportation Company Bangalore</title>
    <meta name="description" content="With 24+ years of experience, Vinayaka Travels provides reliable employee transportation in Bangalore. Safe, on-time, and cost-effective corporate Cabs & Buses" />
    <meta name="keywords" content="Employee Transportation Services; Corporate Cab Services; Outstation Cabs Bangalore; Airport Taxi Service Bangalore" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />




    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    
    {
      "@type": "WebSite",
      "@id": "https://www.vinayakatravels.com/#website",
      "url": "https://www.vinayakatravels.com/",
      "name": "Vinayaka Travels",
      "potentialAction": {
        "@type": "SearchAction",
        "target": "https://www.vinayakatravels.com/?s={search_term_string}",
        "query-input": "required name=search_term_string"
      }
    },

    {
      "@type": "Organization",
      "@id": "https://www.vinayakatravels.com/#organization",
      "name": "Vinayaka Travels",
      "url": "https://www.vinayakatravels.com/",
      "logo": {
        "@type": "ImageObject",
        "url": "https://www.vinayakatravels.com/images/logo.png"
      },
      "contactPoint": {
        "@type": "ContactPoint",
        "telephone": "+91-8645322290",
        "contactType": "customer support",
        "areaServed": "IN",
        "availableLanguage": ["English", "Hindi"]
      },
      "sameAs": [
        "https://www.facebook.com/",
        "https://www.instagram.com/",
        "https://www.linkedin.com/"
      ]
    },

    {
      "@type": "TravelAgency",
      "@id": "https://www.vinayakatravels.com/#localbusiness",
      "name": "Vinayaka Travels",
      "image": "https://www.vinayakatravels.com/images/banner.jpg",
      "url": "https://www.vinayakatravels.com/",
      "telephone": "+91-8645322290",
      "priceRange": "₹₹",
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
        "latitude": "12.9686",
        "longitude": "77.6561"
      },
      "openingHoursSpecification": {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": [
          "Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"
        ],
        "opens": "09:00",
        "closes": "21:00"
      },
      "areaServed": [
        "Bangalore",
        "Chennai",
        "Hyderabad"
      ],
      "makesOffer": [
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Employee Transportation"
          }
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Airport Transfers"
          }
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Outstation Cabs"
          }
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Corporate Travel"
          }
        }
      ]
    },

    {
      "@type": "WebPage",
      "@id": "https://www.vinayakatravels.com/#webpage",
      "url": "https://www.vinayakatravels.com/",
      "name": "Vinayaka Travels - Employee Transport & Cab Services in Bangalore",
      "isPartOf": {
        "@id": "https://www.vinayakatravels.com/#website"
      },
      "about": {
        "@id": "https://www.vinayakatravels.com/#localbusiness"
      },
      "description": "Reliable employee transportation, airport transfers, and corporate cab services in Bangalore with Vinayaka Travels."
    }

  ]
}
    </script>

    <style>
        /* =========================
   MOBILE MAIN BANNER FIX
========================= */
        @media only screen and (max-width: 767px) {

            .main-slider {
                display: block !important;
                width: 100% !important;
                height: 420px !important;
                min-height: 420px !important;
                overflow: hidden !important;
            }

            .main-slider__carousel.owl-carousel {
                display: block !important;
                visibility: visible !important;
                opacity: 1 !important;
                width: 100% !important;
                height: 420px !important;
            }

            .main-slider__carousel .owl-stage-outer {
                display: block !important;
                width: 100% !important;
                height: 420px !important;
            }

            .main-slider__carousel .owl-stage {
                height: 420px !important;
            }

            .main-slider__carousel .owl-item {
                height: 420px !important;
                display: block !important;
            }

            .main-slider__carousel .item {
                display: block !important;
                position: relative !important;
                width: 100% !important;
                height: 420px !important;
                min-height: 420px !important;
            }

            .main-slider__carousel .main-slider__bg {
                display: block !important;
                position: absolute !important;
                inset: 0 !important;
                width: 100% !important;
                height: 420px !important;
                min-height: 420px !important;
                z-index: 0 !important;
                background-repeat: no-repeat !important;
                background-size: cover !important;
                background-position: center center !important;
                visibility: visible !important;
                opacity: 1 !important;
            }

            .main-slider__carousel .main-slider__overly {
                display: block !important;
                position: absolute !important;
                inset: 0 !important;
                z-index: 1 !important;
            }

            .main-slider__carousel .container {
                position: relative !important;
                z-index: 2 !important;
                height: 420px !important;
            }

            .sr-only {
                position: absolute;
                width: 1px;
                height: 1px;
                padding: 0;
                margin: -1px;
                overflow: hidden;
                clip: rect(0, 0, 0, 0);
                white-space: nowrap;
                border: 0;
            }
    </style>



</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/3.0.0/uicons-solid-rounded/css/uicons-solid-rounded.css">
    <link rel="canonical" href="https://www.vinayakatravels.com/" />
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-T78GXY1Y17');
    </script>
    <meta name="google-site-verification" content="GNDacwjZ9V2baeOjypGESAK4bAFeIRDeMYzuu9iOOJo" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="main-slider overflow-hidden">
        <h1 class="sr-only">Corporate Employee Transportation Services</h1>
        <div class="main-slider__carousel owl-carousel owl-theme">



            <div class="item">
                <div class="main-slider__bg"
                    style="background-image: url(assets/images/banner/banner1.png);">
                </div>
                <!-- /.slider-one__bg -->
                <div class="main-slider__overly"></div>
                <!--<div class="main-slider__img">
    <img src="assets/images/resources/main-slider-img-1.png" alt="" class="float-bob-y">
</div>-->
                <div class="container">
                    <div class="main-slider__content">
                        <br />
                        <br />


                        <%--  <div class="main-slider__title" role="heading" aria-level="1">
                            <h2 class="main-slider__title">Corporate Cab & Employee<br />
                            Transportation Services</h2>
                        </div>--%>
                        <div class="main-slider__title">
                            Corporate Cab &amp; Employee<br />
                            Transportation Services
                        </div>
                        <br />
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="main-slider__bg"
                    style="background-image: url(assets/images/banner/banner2.png);">
                </div>
                <!-- /.slider-one__bg -->
                <div class="main-slider__overly"></div>

                <div class="container">
                    <div class="main-slider__content">
                        <br />
                        <br />
                        <%--<h2 class="main-slider__title">Employees<br />
                            Transportation Services</h2>--%>
                        <div class="main-slider__title">
                            Employees<br />
                            Transportation Services
                        </div>

                        <br />
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="main-slider__bg"
                    style="background-image: url(assets/images/banner/3.png);">
                </div>
                <!-- /.slider-one__bg -->
                <div class="main-slider__overly"></div>

                <div class="container">
                    <div class="main-slider__content">
                        <br />
                        <br />
                        <%--<h2 class="main-slider__title">Mobility Solutions for
                            <br />
                            Corporates &amp; Events</h2>--%>
                        <div class="main-slider__title">
                            Mobility Solutions for
    <br />
                            Corporates &amp; Events
                        </div>

                        <br />
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="main-slider__bg"
                    style="background-image: url(assets/images/banner/4.png);">
                </div>
                <!-- /.slider-one__bg -->
                <div class="main-slider__overly"></div>

                <div class="container">
                    <div class="main-slider__content">
                        <br />
                        <br />
                        <%-- <h2 class="main-slider__title">Driving Businesses Forward with
                            <br />
                            Reliable Rides</h2>--%>

                        <div class="main-slider__title">
                            Driving Businesses Forward with
    <br />
                            Reliable Rides
                        </div>

                        <br />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--<h1 class="sr-only">Corporate Cab & Employee Transportation Services in Bangalore</h1>--%>
    <section class="car-brands">
        <div class="container">
            <div class="section-title text-center sec-title-animation animation-style1">
                <h2 class="section-title__title title-animation">Our Fleet</h2>
                 <p>Our fleet includes comfortable buses, spacious cars, and electric vehicles built to meet every journey.</p>
            </div>
            <div class="row car-brands__grid">
                <!--Car Brands Single Start-->
                <div class="col-xl-3 col-lg-6 col-md-6 wow fadeInLeft" data-wow-delay="100ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/48seater.jpg" alt="">
                                <img src="assets/images/gallery/48seater.jpg" alt="">
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">48 Seater</span>
                                        <span class="fleet-desc">AC &amp; NON AC Luxury Buses</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Car Brands Single End-->
                <!--Car Brands Single Start-->
                <div class="col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/40seater.jpg" alt="">
                                <img src="assets/images/gallery/40seater.jpg" alt="">
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">40 Seater</span>
                                        <span class="fleet-desc">AC &amp; NON AC Luxury Buses</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Car Brands Single End-->
                <div class="col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/7seater.jpg" alt="">
                                <img src="assets/images/gallery/7seater.jpg" alt="">
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">7 Seater</span>
                                        <span class="fleet-desc">AC &amp; NON AC Cabs</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/electric.jpg" alt="">
                                <img src="assets/images/gallery/electric.jpg" alt="">
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">Electric Vehicles</span>
                                        <span class="fleet-desc">AC Cabs</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <div class="enjoy-one__btn-box">
                        <a href="fleets.aspx" class="enjoy-one__btn thm-btn">View all</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="enjoy-one" style="background-color: #cfecff; padding: 70px 0px; margin-bottom: 0px;">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-7 col-xl-7">
                    <div class="enjoy-one__left">
                        <div class="enjoy-one__img">
                            <img src="assets/images/gallery/about-us.jpeg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-5 col-xl-5">
                    <div class="enjoy-one__right">
                        <div class="enjoy-one__title-box">
                            <h2 class="enjoy-one__title">About Vinayaka Travels
                            </h2>
                            <p class="enjoy-one__text">
                                Vinayaka Travels is based out of Bengaluru - the Silicon city of India & we have extended our services to Chennai & Hyderabad.

                            </p>
                            <p class="enjoy-one__text">
                                In the Year 2002, the Company started a Staff transport services (People Logistics) operating to cater the demand of professional transport service provider.
                            </p>
                            <div class="enjoy-one__btn-box">
                                <a href="about.aspx" class="enjoy-one__btn thm-btn">Read more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="team-one" style="padding-top: 70px; padding-bottom: 0px">
        <div class="team-one__inner" style="background: transparent">
            <div class="container">
                <div class="section-title text-center sec-title-animation animation-style1">

                    <h2 class="section-title__title title-animation">Our Services</h2>
                    <p>Our services include employee transportation, airport transfers, and outstation cabs designed for every corporate journey. </p>
                </div>
                <div class="listing-carousel-style owl-carousel owl-theme">
                    <!--Team One Single Start-->
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/4seater1.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__title">
                                    <a href="#">Employee Transportation
                                    </a>
                                </h3>



                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/airport-transportation.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__title">
                                    <a href="team-details.html">Airport Transfers
                                    </a>
                                </h3>



                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/car3.png" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__title">
                                    <a href="#">Outstation Cabs
                                    </a>
                                </h3>


                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/event-transportation.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__title">
                                    <a href="event-transportation.aspx">Event Transportation
                                    </a>
                                </h3>


                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="item">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/car-lease.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__title">
                                    <a href="long-term-car-lease.aspx">Long Term Car Lease
                                    </a>
                                </h3>


                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->

                </div>

                <div class="row justify-content-center">
                    <div class="col-12 d-flex justify-content-center">
                        <div class="enjoy-one__btn-box">
                            <a href="services.aspx" class="enjoy-one__btn thm-btn">View all services</a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="container">
                <div class="team-one__car-details">
                    <div class="row">
                        <div class="col-12 col-lg-6">
                            <div class="team-one__car-details-single wow slideInLeft" data-wow-delay="100ms"
                                data-wow-duration="2500ms">
                                <div class="team-one__car-details-single-bg"
                                    style="background-image: url(assets/images/backgrounds/team-one-car-details-single-bg.jpg);">
                                </div>
                                <h3 class="team-one__car-details-title">Experience Elegance 
                                    <br>
                                    on Every Drive</h3>
                                <p class="team-one__car-details-text">
                                    Book Luxury Cars Experience Premium Rides<br />
                                    <br />

                                </p>
                                <div class="team-one__car-details-btn-box">
                                    <a href="contact.aspx" class="team-one__car-details-btn thm-btn">Get Started</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6">
                            <div class="team-one__car-details-single wow slideInRight" data-wow-delay="100ms"
                                data-wow-duration="2500ms">
                                <div class="team-one__car-details-single-bg"
                                    style="background-image: url(assets/images/fleet/bus.jpg);">
                                </div>
                                <h3 class="team-one__car-details-title">Employee
                                    <br>
                                    Transportation</h3>
                                <p class="team-one__car-details-text">
                                    Cars & Bus Rental Services<br />
                                    for Employee Transportation
                                </p>
                                <div class="team-one__car-details-btn-box">
                                    <a href="contact.aspx" class="team-one__car-details-btn thm-btn">Get Started</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--Team One Start -->
    <section class="team-one team-page overflow-hidden team-carousel-page" style="padding: 70px 0px; background: #f5f5f5">
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

    <!-- =========================================
     HOW IT WORKS SECTION
========================================= -->
    <section class="vt-process-section">
        <div class="vt-process-header">
            <span class="vt-tag">How It Works</span>
            <h2>Getting Started Is Simple</h2>
            <p>A streamlined booking process built for corporates and individual travellers alike — from enquiry to a smooth, on-time ride.</p>
        </div>

        <div class="vt-process-grid">

            <div class="vt-process-step">
                <div class="vt-process-step-top">
                    <div class="vt-process-step-icon"><i class="fi fi-sr-comment-alt"></i></div>
                    <span class="vt-process-step-num">01</span>
                </div>
                <h4>Share Your Requirement</h4>
                <p>Tell us your route, schedule and headcount through our enquiry form or a quick call.</p>
            </div>

            <div class="vt-process-step">
                <div class="vt-process-step-top">
                    <div class="vt-process-step-icon"><i class="fi fi-sr-route"></i></div>
                    <span class="vt-process-step-num">02</span>
                </div>
                <h4>Get a Custom Plan</h4>
                <p>Our team designs a route and fleet plan tailored to your budget and timelines.</p>
            </div>

            <div class="vt-process-step">
                <div class="vt-process-step-top">
                    <div class="vt-process-step-icon"><i class="fi fi-sr-bus"></i></div>
                    <span class="vt-process-step-num">03</span>
                </div>
                <h4>Confirm &amp; Onboard</h4>
                <p>Approve the plan and we assign verified drivers and vehicles for your service.</p>
            </div>

            <div class="vt-process-step">
                <div class="vt-process-step-top">
                    <div class="vt-process-step-icon"><i class="fi fi-sr-shield-check"></i></div>
                    <span class="vt-process-step-num">04</span>
                </div>
                <h4>Ride With Confidence</h4>
                <p>Enjoy GPS-tracked, on-time journeys backed by our 24x7 support team.</p>
            </div>

        </div>

       <%-- <div class="vt-process-footer">
            <a href="contact.aspx" class="vt-btn-primary">Get a Free Consultation</a>
        </div>--%>
    </section>

        <!-- =========================================
     TESTIMONIALS SECTION
========================================= -->
    <section class="vt-section vt-section-light">
        <div class="vt-heading-center">
            <span class="vt-tag">Testimonials</span>
            <h2>Client Testimonials</h2>
            <p>Feedback from the corporates and travellers who ride with us every day.</p>
        </div>

        <div class="vt-testimonial-wrap">
            <button type="button" class="vt-testimonial-arrow vt-testimonial-prev" aria-label="Previous">&#8249;</button>

            <div class="vt-testimonial-track" id="vtTestimonialTrack">

                <div class="vt-testimonial-card">
                    <div class="vt-testimonial-stars">★★★★★</div>
                    <p>Vinayaka Travels has been our go-to partner for daily employee transport. Punctual, safe, and completely dependable.</p>
                    <div class="vt-testimonial-person">
                        <div class="vt-avatar">AM</div>
                        <div>
                            <strong>Admin Manager</strong>
                            <span>IT Company</span>
                        </div>
                    </div>
                </div>

                <div class="vt-testimonial-card">
                    <div class="vt-testimonial-stars">★★★★★</div>
                    <p>From airport pickups to outstation trips, their service has been consistent and professional every single time.</p>
                    <div class="vt-testimonial-person">
                        <div class="vt-avatar">FB</div>
                        <div>
                            <strong>Frequent Business Traveler</strong>
                            <span></span>
                        </div>
                    </div>
                </div>

                <div class="vt-testimonial-card">
                    <div class="vt-testimonial-stars">★★★★★</div>
                    <p>We've relied on them for over two years now for our staff commute. Great fleet, courteous drivers, zero complaints.</p>
                    <div class="vt-testimonial-person">
                        <div class="vt-avatar">HH</div>
                        <div>
                            <strong>HR Head</strong>
                            <span>Corporate Office</span>
                        </div>
                    </div>
                </div>

                <div class="vt-testimonial-card">
                    <div class="vt-testimonial-stars">★★★★★</div>
                    <p>Vinayaka Travels has made our night-shift operations completely stress-free. Their safety protocols for our women employees give us real peace of mind.</p>
                    <div class="vt-testimonial-person">
                        <div class="vt-avatar">HH</div>
                        <div>
                            <strong>HR Head</strong>
                            <span>BPO Company</span>
                        </div>
                    </div>
                </div>

                <div class="vt-testimonial-card">
                    <div class="vt-testimonial-stars">★★★★★</div>
                    <p>Booked them for a corporate event with 200+ guests — the coordination was seamless from start to finish.</p>
                    <div class="vt-testimonial-person">
                        <div class="vt-avatar">EM</div>
                        <div>
                            <strong>Event Manager</strong>
                            <span></span>
                        </div>
                    </div>
                </div>

            </div>

            <button type="button" class="vt-testimonial-arrow vt-testimonial-next" aria-label="Next">&#8250;</button>
        </div>

        <div class="vt-testimonial-dots" id="vtTestimonialDots">
            <span class="vt-dot active"></span>
            <span class="vt-dot"></span>
            <span class="vt-dot"></span>
        </div>
    </section>

    <!-- =========================================
     FAQ SECTION
========================================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-heading-center">
            <span class="vt-tag">FAQs</span>
            <h2>Frequently Asked Questions</h2>
            <p>Find answers to some of the most common questions about our transportation services, booking process and support.</p>
        </div>

        <div class="vt-faq-wrap">

            <details class="vt-faq-item" open>
                <summary>What transportation services does Vinayaka Travels provide?</summary>
                <p>Vinayaka Travels offers a complete range of transportation solutions including employee transportation, airport transfers, outstation cabs, event transportation, and long term car lease services — serving corporates and individuals across Bangalore, Chennai, and Hyderabad.</p>
            </details>

            <details class="vt-faq-item">
                <summary>How can I book your transportation or corporate solution?</summary>
                <p>You can book by filling out the "Request a Callback" form on our website, calling us directly, or reaching out via email. Our team will understand your requirement — headcount, routes, or trip details — and get back to you with a customized plan.</p>
            </details>

            <details class="vt-faq-item">
                <summary>Can you provide customized transportation solutions?</summary>
                <p>Yes. We tailor our services to your specific needs, whether it's shift-based employee transport, one-way or round-trip outstation cabs, event-day shuttle coordination, or long term vehicle leasing — all backed by flexible contract options.</p>
            </details>

            <details class="vt-faq-item">
                <summary>How do you ensure passenger safety?</summary>
                <p>All our vehicles are GPS-enabled, our drivers are background-verified and trained, and our operations team monitors trips in real time. We follow strict safety protocols across every service, including added measures for night-shift and women employee transport.</p>
            </details>

            <details class="vt-faq-item">
                <summary>Which industries do you currently serve?</summary>
                <p>We serve a wide range of industries including IT companies, BPOs, manufacturing units, corporate offices, and event organizers, along with individual travelers seeking reliable airport and outstation cab services.</p>
            </details>

            <details class="vt-faq-item">
                <summary>How can I get a quotation for transportation services?</summary>
                <p>Simply share your requirements through our website's quote request form or contact our team directly by phone or email. We'll assess your needs and provide a transparent, no-obligation quotation.</p>
            </details>

        </div>
    </section>

   

    <script>
        (function () {
            var track = document.getElementById('vtTestimonialTrack');
            var dots = document.querySelectorAll('#vtTestimonialDots .vt-dot');
            var prevBtn = document.querySelector('.vt-testimonial-prev');
            var nextBtn = document.querySelector('.vt-testimonial-next');
            if (!track) { return; }

            function scrollByAmount(dir) {
                track.scrollBy({ left: dir * (track.clientWidth * 0.6), behavior: 'smooth' });
            }

            prevBtn.addEventListener('click', function () { scrollByAmount(-1); });
            nextBtn.addEventListener('click', function () { scrollByAmount(1); });

            track.addEventListener('scroll', function () {
                var progress = track.scrollLeft / (track.scrollWidth - track.clientWidth || 1);
                var index = Math.min(dots.length - 1, Math.round(progress * (dots.length - 1)));
                dots.forEach(function (d, i) { d.classList.toggle('active', i === index); });
            });

            dots.forEach(function (dot, i) {
                dot.addEventListener('click', function () {
                    var target = (i / (dots.length - 1)) * (track.scrollWidth - track.clientWidth);
                    track.scrollTo({ left: target, behavior: 'smooth' });
                });
            });
        })();
    </script>
</asp:Content>

