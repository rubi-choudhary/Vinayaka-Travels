<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fleets.aspx.cs" Inherits="fleets" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Our Fleet — AC Cabs, Buses & Electric Vehicles | Vinayaka Travels</title>
    <meta name="description" content="Vinayaka Travels' fleet supports corporate, staff and event transportation needs across India." />
    <meta name="keywords" content="Corporate Cab Services; Fleet Leasing Services; Event Transportation Services" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />

    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [

    {
      "@type": "WebPage",
      "@id": "https://www.vinayakatravels.com/fleets.aspx#webpage",
      "url": "https://www.vinayakatravels.com/fleets.aspx",
      "name": "Fleet - Vinayaka Travels",
      "description": "Vinayaka Travels offers a wide range of AC and Non-AC buses, coaches, vans, cabs and electric vehicles for employee transportation, corporate travel and mobility solutions.",
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
      "@id": "https://www.vinayakatravels.com/fleets.aspx#fleetservice",
      "serviceType": "Vehicle Fleet Services",
      "provider": {
        "@id": "https://www.vinayakatravels.com/#organization"
      },
      "areaServed": {
        "@type": "Place",
        "name": "India"
      },
      "hasOfferCatalog": {
        "@type": "OfferCatalog",
        "name": "Vinayaka Travels Fleet",
        "itemListElement": [

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "48 Seater AC & Non AC Luxury Bus"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "40 Seater AC & Non AC Luxury Bus"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "32 Seater AC & Non AC Luxury Bus"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "26 Seater AC & Non AC Luxury Coach"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "18 Seater AC & Non AC Luxury Coach"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "12 Seater AC & Non AC Luxury Van"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "7 Seater AC & Non AC Cab"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "4 Seater AC & Non AC Cab"
            }
          },

          {
            "@type": "Offer",
            "itemOffered": {
              "@type": "Vehicle",
              "name": "Electric Vehicle AC Cab"
            }
          }

        ]
      }
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/fleets.aspx#breadcrumb",
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
          "name": "Fleets",
          "item": "https://www.vinayakatravels.com/fleets.aspx"
        }
      ]
    }

  ]
}
</script>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Google tag (gtag.js) -->

    <link rel="canonical" href="https://www.vinayakatravels.com/fleets.aspx" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-T78GXY1Y17');
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-header">
        <div class="page-header__bg" style="background-image: url(assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Fleets</h2>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>Fleets</li>
                    </ul>
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
                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInLeft" data-wow-delay="100ms">
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
                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms">
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
                <!--Car Brands Single Start-->
                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInRight" data-wow-delay="300ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">

                            <div class="car-brands__img">
                                <img src="assets/images/gallery/32seater.jpg" />
                                <img src="assets/images/gallery/32seater.jpg" />
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
                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/28seater.jpg" alt="">
                                <img src="assets/images/gallery/28seater.jpg" alt="">
                            </div>
                        </div>

                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">32 Seater</span>
                                        <span class="fleet-desc">AC &amp; NON AC Luxury Buses</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/22seater.jpg" />
                                <img src="assets/images/gallery/22seater.jpg" />
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">26 Seater</span>
                                        <span class="fleet-desc">AC and NON AC Luxury Coach</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/18seater.jpg" alt="">
                                <img src="assets/images/gallery/18seater.jpg" alt="">
                            </div>
                        </div>

                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">18 Seater</span>
                                        <span class="fleet-desc">AC and NON AC Luxury Coach</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/vans.jpg" />
                                <img src="assets/images/gallery/vans.jpg" />
                            </div>
                        </div>
                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">12 Seater</span>
                                        <span class="fleet-desc">AC and NON AC Luxury Vans</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
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
                                        <span class="fleet-desc">AC and NON AC Cabs</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <div class="car-brands__single">
                        <div class="car-brands__img-box">
                            <div class="car-brands__img">
                                <img src="assets/images/gallery/4seatercar.jpg" alt="">
                                <img src="assets/images/gallery/4seatercar.jpg" alt="">
                            </div>
                        </div>

                        <div class="car-brands__content">
                            <div class="car-brands__title">
                                <div class="fleet-info">
                                    <div class="fleet-info__copy">
                                        <span class="fleet-name">4 Seater</span>
                                        <span class="fleet-desc">AC and NON AC Cabs</span>
                                    </div>
                                    <span class="icon-angle-left"></span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-xl-3 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
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
                <!--Car Brands Single End-->
            </div>

        </div>
    </section>

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

</asp:Content>

