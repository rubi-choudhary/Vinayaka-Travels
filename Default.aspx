<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Corporate Cab & Employee Transportation Services</title>
    <meta name="description" content="Vinayaka Travels offers employee transportation, airport transfers, outstation cabs, event transport & car lease across India. 20+ years' experience, 400+ vehicles, 8,500+ daily commuters." />
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
    </style>



</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

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
                        <h1 class="main-slider__title">Corporate Cab & Employee<br />
                            Transportation Services





                        </h1>
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
                        <h2 class="main-slider__title">Employees<br />
                            Transportation Services</h2>

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
                        <h2 class="main-slider__title">Mobility Solutions for
                            <br />
                            Corporates &amp; Events</h2>
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
                        <h2 class="main-slider__title">Driving Businesses Forward with
                            <br />
                            Reliable Rides</h2>

                        <br />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="car-brands">
        <div class="container">
            <div class="section-title text-center sec-title-animation animation-style1">
                <h2 class="section-title__title title-animation">Our Fleet</h2>
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
                            <h3 class="enjoy-one__title">About Vinayaka Travels
                            </h3>
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
                </div>
                <div class="row">
                    <!--Team One Single Start-->
                    <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1000">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/4seater1.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h4 class="team-one__title">
                                    <a href="#">Employee Transportation
                                    </a>
                                </h4>



                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-down" data-aos-duration="2000">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/gallery/airport-transportation.jpg" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h4 class="team-one__title">
                                    <a href="team-details.html">Airport Transfers
                                    </a>
                                </h4>



                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <!--Team One Single Start-->
                    <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-up" data-aos-duration="3000">
                        <div class="team-one__single">
                            <div class="team-one__img-box">
                                <div class="team-one__img">
                                    <img src="assets/images/car3.png" alt="">
                                </div>
                            </div>
                            <div class="team-one__content">
                                <h4 class="team-one__title">
                                    <a href="#">Outstation Cabs
                                    </a>
                                </h4>


                            </div>
                        </div>
                    </div>

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
</asp:Content>

