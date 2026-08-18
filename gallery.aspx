<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="ContentSeo" ContentPlaceHolderID="seoHead" runat="Server">
    <title>Gallery — Fleet & Service Photos | Vinayaka Travels</title>
    <meta name="description" content="Vinayaka Travels' fleet and corporate transport operations serving clients across India." />
    <meta name="keywords" content="Corporate Cab Services; Corporate Taxi Services" />
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1" />

    <script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [

    {
      "@type": "CollectionPage",
      "@id": "https://www.vinayakatravels.com/gallery.aspx#gallerypage",
      "url": "https://www.vinayakatravels.com/gallery.aspx",
      "name": "Gallery - Vinayaka Travels",
      "description": "View the gallery of Vinayaka Travels featuring employee transportation services, fleet vehicles, corporate travel solutions and mobility services.",
      "isPartOf": {
        "@id": "https://www.vinayakatravels.com/#website"
      },
      "about": {
        "@id": "https://www.vinayakatravels.com/#organization"
      }
    },

    {
      "@type": "Organization",
      "@id": "https://www.vinayakatravels.com/#organization",
      "name": "Vinayaka Travels",
      "url": "https://www.vinayakatravels.com/",
      "description": "Vinayaka Travels provides employee transportation, corporate mobility solutions, airport transfers and fleet services across Bangalore and other cities.",
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
      "@type": "ImageGallery",
      "@id": "https://www.vinayakatravels.com/gallery.aspx#imagegallery",
      "name": "Vinayaka Travels Gallery",
      "description": "Images showcasing Vinayaka Travels fleet, transportation services and corporate mobility solutions.",
      "associatedMedia": [
        {
          "@type": "ImageObject",
          "caption": "Vinayaka Travels Transportation Services"
        },
        {
          "@type": "ImageObject",
          "caption": "Vinayaka Travels Fleet Vehicles"
        },
        {
          "@type": "ImageObject",
          "caption": "Corporate Employee Transportation Solutions"
        },
        {
          "@type": "ImageObject",
          "caption": "Luxury Bus and Cab Services"
        }
      ]
    },

    {
      "@type": "BreadcrumbList",
      "@id": "https://www.vinayakatravels.com/gallery.aspx#breadcrumb",
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
          "name": "Gallery",
          "item": "https://www.vinayakatravels.com/gallery.aspx"
        }
      ]
    }

  ]
}
</script>


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Google tag (gtag.js) -->

    <link rel="canonical" href="https://www.vinayakatravels.com/gallery.aspx" />
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-T78GXY1Y17"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-T78GXY1Y17');
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Page Header Start-->
    <section class="page-header vt-gallery-mobile-header">
        <div class="page-header__bg" style="background-image: url(assets/images/about-banner.jpg);">
        </div>
        <div class="container">
            <div class="page-header__inner">
                <h2>Gallery</h2>
                <div class="thm-breadcrumb__box">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><span class="icon-arrow-left"></span></li>
                        <li>Gallery</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!--Page Header End-->

    <section class="listing-single pt-5 pb-5">

        <div class="container">
            <div class="listing-single__gallery">
                <div class="row">
                    <!--Listing Single Gallery Single Start-->

                    <!--Listing Single Gallery Single End-->
                    <div class="col-xl-12 col-lg-12">
                        <div class="row">
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/1.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/1.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/2.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/2.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/3.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/3.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/4.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/4.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/5.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/5.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/6.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/6.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/7seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/7seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/8.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/8.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <!--Listing Single Gallery Single Start-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/9.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/9.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/10.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/10.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->


                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/11.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/11.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/12.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/12.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/13.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/13.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/14.jpeg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/14.jpeg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/18seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/18seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/22seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/22seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/28seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/28seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/32seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/32seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/40seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/40seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->

                            <div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="listing-single__gallery-single">
                                    <div class="listing-single__gallery-img">
                                        <img src="assets/images/gallery/48seater.jpg" alt="">
                                        <div class="listing-single__gallery-view">
                                            <a href="assets/images/gallery/48seater.jpg"
                                                class="img-popup">
                                                <span class="fas fa-camera"></span>
                                                <p>View Gallery</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Listing Single Gallery Single End-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--Site Footer Start-->
</asp:Content>

