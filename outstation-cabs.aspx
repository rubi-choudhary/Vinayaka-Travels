<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="seoHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/3.0.0/uicons-solid-rounded/css/uicons-solid-rounded.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- body--%>
<section class="vt-service-detail-hero">

    <div class="vt-service-detail-overlay" style="background-image: url(assets/images/about-banner.jpg);"></div>

    <div class="container">
        <div class="row align-items-center">

            <!-- LEFT SIDE CONTENT -->
            <div class="col-lg-7 col-xl-7 vt-service-detail-content-col">

                <div class="vt-service-detail-content">

                    <span class="vt-service-detail-tag">
                        VINAYAKA TRAVELS SERVICES
                    </span>

                    <h1 class="vt-service-detail-title">
                        Outstation Cabs & Long-Distance Taxi Services
                    </h1>

                    <p class="vt-service-detail-description">
                        Vinayaka Travels offers safe, comfortable, and reliable outstation cab services from Bangalore to destinations across South India. Whether it's a business trip, family vacation, or one-way drop, travel with experienced drivers and a well-maintained fleet built for long-distance journeys.
    
                    </p>

                    <div class="vt-service-detail-points">

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Experienced Long-Distance Drivers</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>  One-Way & Round-Trip Options</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>  Well-Maintained Fleet</p>
                        </div>

                    </div>

                    <a href="#service-enquiry"
                       class="vt-service-detail-cta">
                        Call Us

                    </a>

                </div>

            </div>


            <!-- RIGHT SIDE FORM -->
            <div class="col-lg-5 col-xl-5 vt-service-detail-form-col">

                <div class="vt-service-detail-form-card"
                     id="service-enquiry">

                    <div class="vt-service-detail-form-head">
                      
                        <h2>Request a Callback</h2>
                        <p>
                            Fill in your details and our team will contact you shortly.
                        </p>
                    </div>

                    <form class="vt-service-detail-form">

                        <div class="vt-service-detail-field">
                            <label>Your Name</label>
                            <input type="text"
                                   placeholder="Enter your name">
                        </div>

                       <!-- PHONE + EMAIL IN ONE ROW -->
                        <div class="vt-service-detail-form-row">

                            <div class="vt-service-detail-field">
                                <label>Phone Number</label>
                                <input type="tel" placeholder="Enter phone number">
                            </div>

                            <div class="vt-service-detail-field">
                                <label>Email Address</label>
                                <input type="email" placeholder="Enter email address">
                            </div>

                        </div>

                        <div class="vt-service-detail-field">
                            <label>Select Service</label>
                            <select>
                                <option value="">Choose a service</option>
                                <option>Staff Transportation</option>
                                <option>Corporate Transportation</option>
                                <option>Employee Shuttle Service</option>
                                <option>Other</option>
                            </select>
                        </div>

                        <div class="vt-service-detail-field">
                            <label>Message</label>
                            <textarea placeholder="Tell us about your requirement"></textarea>
                        </div>

                        <button type="submit"
                                class="vt-service-detail-submit">
                            Submit Enquiry
                            <span>→</span>
                        </button>

                    </form>

                </div>

            </div>

        </div>
    </div>

</section>



   <!-- =========================================
     TRUST FACTORS STRIP
========================================= -->
<section class="vt-service-trust-strip">

    <div class="container">

        <div class="vt-service-trust-grid">

            <!-- TRUST FACTOR 1 -->
            <div class="vt-service-trust-item">
                <div class="vt-trust-icon-circle">
                    <i class="fi fi-sr-shield-check"></i>
                </div>

                <div class="vt-service-trust-content">
                    <h4>Safe & Reliable</h4>
                    <p>Safety-focused transportation you can trust.</p>
                </div>
            </div>


            <!-- TRUST FACTOR 2 -->
            <div class="vt-service-trust-item">
                <div class="vt-trust-icon-circle">
                    <i class="fas fa-clock"></i>
                </div>

                <div class="vt-service-trust-content">
                    <h4>On-Time Service</h4>
                    <p>Reliable operations with timely pick-up and drop.</p>
                </div>
            </div>


            <!-- TRUST FACTOR 3 -->
            <div class="vt-service-trust-item">
                <div class="vt-trust-icon-circle">
                    <i class="fas fa-bus"></i>
                </div>

                <div class="vt-service-trust-content">
                    <h4>Modern Fleet</h4>
                    <p>Comfortable and well-maintained vehicles.</p>
                </div>
            </div>


            <!-- TRUST FACTOR 4 -->
            <div class="vt-service-trust-item">
                <div class="vt-trust-icon-circle">
                    <i class="fas fa-users"></i>
                </div>

                <div class="vt-service-trust-content">
                    <h4>24/7 Support</h4>
                    <p>Dedicated support whenever you need us.</p>
                </div>
            </div>

        </div>

    </div>
</section>

    <!-- =========================================
     SERVICE OVERVIEW SECTION
========================================= -->
<section class="vt-service-overview">

    <div class="container">
        <div class="row align-items-center">

            <!-- LEFT: CONTENT -->
            <div class="col-lg-6">
                <div class="vt-service-overview-content">

                   
                    <h2 class="vt-service-overview-title">
                        Outstation Cab Services in Bangalore

                    </h2>

                    <p class="vt-service-overview-text">
                       Long journeys demand a reliable travel partner. Vinayaka Travels provides dependable outstation cab services from Bangalore to popular destinations across Karnataka, Tamil Nadu, Andhra Pradesh, and Kerala — covering business trips, family vacations, weekend getaways, and one-way drops.

                    </p>

                    <p class="vt-service-overview-text">
                       With 24+ years of transportation experience, our outstation taxi service in Bangalore is trusted for punctual pickups, experienced drivers, and comfortable, well-maintained vehicles suited for long-distance travel.
    
                        <br />

                        

                    </p>

                    <div class="vt-service-overview-list">

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p> Outstation cabs for one-way and round-trip journeys</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>    Experienced drivers familiar with highway and interstate routes</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>  Sedan, SUV, and tempo traveller options for solo trips or groups</p>
                        </div>
                        
                    </div>

                    <a href="contact.aspx" class="vt-service-overview-btn">
                        Get in Touch
                    </a>

                </div>
            </div>


            <!-- RIGHT: IMAGE -->
            <div class="col-lg-6">
                <div class="vt-service-overview-image">

                    <img src="assets/images/gallery/about-us.jpeg"
                         alt="Vinayaka Travels Service">

                    <div class="vt-service-overview-image-box">
                        <strong>24+</strong>
                        <span>Years of Experience</span>
                    </div>

                </div>
            </div>

        </div>
    </div>

</section>



<!-- =========================================
     WHY CHOOSE VINAYAKA TRAVELS
========================================= -->
<section class="vt-service-why-section">

    <div class="container">

        <!-- HEADING -->
        <div class="vt-service-why-header">

           

            <h2 class="vt-service-why-title">
                Why Choose Vinayaka Travels for Outstation Cabs in Bangalore

            </h2>

           <%-- <p class="vt-service-why-description">
                With years of experience in professional transportation, we deliver
                safe, reliable and customized travel solutions for businesses.
            </p>--%>

        </div>


        <!-- CARDS -->
       <div class="vt-service-why-grid">


    <!-- 01 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fi fi-sr-shield-check"></i>
            </div>

            
        </div>

        <h3>Experienced Long-Distance Drivers</h3>

        <p>
           Skilled chauffeurs familiar with highway routes, rest stops, and interstate travel norms.
        </p>

    </div>


    <!-- 02 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-clock"></i>
            </div>

            
        </div>

        <h3>Well-Maintained Fleet</h3>

        <p>
            Regularly serviced sedans, SUVs, and tempo travellers built for comfort on long journeys.
        </p>

    </div>


    <!-- 03 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-bus"></i>
            </div>

           
        </div>

        <h3>Flexible Trip Options</h3>

        <p>
           One-way drops, round trips, and multi-day outstation packages to suit your itinerary.
        </p>

    </div>


    <!-- 04 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-users"></i>
            </div>

           
        </div>

        <h3>Transparent Pricing</h3>

        <p>
           Upfront fares with no surge pricing or hidden toll/parking surprises.
        </p>

    </div>


    <!-- 05 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-headset"></i>
            </div>

            
        </div>

        <h3>24/7 Availability</h3>

        <p>
            Book outstation cabs for early morning departures or late-night journeys, any day of the week.
        </p>

    </div>


    <!-- 06 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fi fi-sr-route"></i>
            </div>

                
        </div>

        <h3>24+ Years of Trust</h3>

        <p>
           Decades of experience serving corporates, families, and frequent travelers across South India.
        </p>

    </div>

</div>
    </div>

</section>

    <!-- =========================================
     PREMIUM SERVICE CONTENT SECTION
========================================= -->
<section class="vt-premium-service-section">

    <div class="container">
        <div class="row align-items-center">

            <!-- LEFT CONTENT -->
            <div class="col-lg-6">
                <div class="vt-premium-service-content">

                
                    <h2>
                        Every Journey, Handled With Care
                    </h2>

                    <p>
                        Vinayaka Travels' outstation cab service is designed for travelers who value comfort, safety, and reliability on long-distance trips. Our services include:

                    </p>

                   
                    <!-- FEATURE POINTS -->
                    <div class="vt-premium-service-features">

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>01</span>
                            </div>

                            <div>
                                <h4>One-Way Outstation Drops</h4>
                                <p>
                                    Travel to your destination without paying for a return trip
                                </p>
                            </div>
                        </div>

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>02</span>
                            </div>

                            <div>
                                <h4> Round-Trip Outstation Cabs</h4>
                                <p>
                                   Comfortable travel with the same vehicle and driver throughout

                                </p>
                            </div>
                        </div>

                    </div>

                    <a href="contact.aspx" class="vt-premium-service-btn">
                        Talk to Our Team
                        <span>→</span>
                    </a>

                </div>
            </div>


            <!-- RIGHT IMAGE -->
            <div class="col-lg-6">
                <div class="vt-premium-service-visual">

                    <!-- Decorative background -->
                    <div class="vt-premium-service-shape"></div>

                    <div class="vt-premium-service-image">
                        <img src="assets/images/gallery/about-us.jpeg"
                             alt="Vinayaka Travels Transportation Service">
                    </div>

                    <!-- Floating Card -->
                    <div class="vt-premium-service-floating-card">

                        <div class="vt-premium-service-floating-number">
                            24+
                        </div>

                        <div class="vt-premium-service-floating-text">
                            <strong>Years of</strong>
                            <span>Transportation Experience</span>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>

</section>



<!-- =========================================
     FEATURES + WHY IT MATTERS SECTION
========================================= -->
<section class="vt-premium-features-section">
    <div class="container">

        <div class="vt-premium-features-layout">
              <!-- ================= RIGHT SIDE ================= -->
  <div class="vt-premium-features-right">

      <div class="vt-premium-features-panel">

          <span class="vt-premium-panel-label">
              Why Travelers Partner With Us

          </span>

          <h3>
              A Travel Partner You Can Rely On, Every Mile

          </h3>

          <p>
              Reliable employee transportation is an important part of a
              productive business. Our experienced team works closely with
              organizations to create efficient and dependable mobility
              solutions.
          </p>

          <!-- STATS -->
          <div class="vt-premium-panel-stats">
              <div class="vt-premium-panel-stat">
                  <strong>24+</strong>
                  <span>Years of Experience</span>
              </div>
              <div class="vt-premium-panel-stat">
                  <strong>24/7</strong>
                  <span>Operational Support</span>
              </div>
          </div>

         
      </div>

  </div>


            <!-- ================= LEFT SIDE ================= -->
            <div class="vt-premium-features-left">

                <h2 class="vt-premium-features-title">
                  A Travel Partner You Can Rely On, Every Mile

                </h2>

                <p class="vt-premium-features-intro">
                  Whether it's a business trip to a neighboring city or a family vacation across state lines, Vinayaka Travels ensures your outstation journey from Bangalore is safe, comfortable, and on schedule.

                </p>

                <!-- FEATURE LIST -->
                <div class="vt-premium-feature-list">

                    <!-- FEATURE 01 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">01</div>
                        <div class="vt-premium-feature-info">
                            <h4> Trusted Experience </h4>
                            <p>
                                24+ years of managing long-distance travel across South India

                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 02 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">02</div>
                        <div class="vt-premium-feature-info">
                            <h4> Flexible Service Solutions</h4>
                            <p>
                                 One-way, round-trip, or multi-day outstation packages  
                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 03 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">03</div>
                        <div class="vt-premium-feature-info">
                            <h4>Comfort & Safety </h4>
                            <p>
                                Well-maintained vehicles and experienced drivers for a relaxed journey

                            </p>
                        </div>
                    </div>

                </div>

            </div>

          

        </div>

    </div>
</section>


<!-- =========================================
     CTA SECTION
========================================= -->
<section class="vt-service-cta-section">
    <div class="container">

        <div class="vt-service-cta-box">

            <!-- Decorative Elements -->
            <div class="vt-service-cta-circle vt-service-cta-circle-one"></div>
            <div class="vt-service-cta-circle vt-service-cta-circle-two"></div>

            <div class="row align-items-center">

                <!-- LEFT CONTENT -->
                <div class="col-lg-8">
                    <div class="vt-service-cta-content">
                        <h2>
                            Ready to Simplify Your Transportation Needs?
                        </h2>
                        <p>
                            Partner with Vinayaka Travels for safe, reliable, and professionally managed employee transportation solutions tailored to your organization's requirements.

                        </p>
                    </div>
                </div>

                <!-- RIGHT BUTTONS -->
                <div class="col-lg-4">
                    <div class="vt-service-cta-actions">

                        <a href="contact.aspx" class="vt-service-cta-primary">
                            Call Us Today 
                            <span>→</span>
                        </a>

                        <a href="tel:+91 8645322290" class="vt-service-cta-call">
                            <span class="vt-service-cta-call-icon">☎</span>
                            <span class="vt-service-cta-call-text">
                                <small>Call Us Today</small>
                                <strong>+91 8645322290</strong>
                            </span>
                        </a>

                    </div>
                </div>

            </div>

        </div>

    </div>
</section>


<!-- =========================================
     OUR SERVICES SECTION
========================================= -->
<section class="vt-our-services-section">
    <div class="container">

        <div class="section-title text-center sec-title-animation animation-style1">
            <h2 class="section-title__title title-animation">Our Services</h2>
        </div>

        <div class="row">

            <!-- Service 1 -->
            <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1000">
                <div class="team-one__single">
                    <div class="team-one__img-box">
                        <div class="team-one__img">
                            <img src="assets/images/gallery/4seater1.jpg" alt="Employee Transportation">
                        </div>
                    </div>
                    <div class="team-one__content">
                        <h4 class="team-one__title">
                            <a href="#">Employee Transportation</a>
                        </h4>
                    </div>
                </div>
            </div>

            <!-- Service 2 -->
            <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-down" data-aos-duration="2000">
                <div class="team-one__single">
                    <div class="team-one__img-box">
                        <div class="team-one__img">
                            <img src="assets/images/gallery/airport-transportation.jpg" alt="Airport Transfers">
                        </div>
                    </div>
                    <div class="team-one__content">
                        <h4 class="team-one__title">
                            <a href="team-details.html">Airport Transfers</a>
                        </h4>
                    </div>
                </div>
            </div>

            <!-- Service 3 -->
            <div class="col-xl-4 col-lg-6 col-md-6" data-aos="fade-up" data-aos-duration="3000">
                <div class="team-one__single">
                    <div class="team-one__img-box">
                        <div class="team-one__img">
                            <img src="assets/images/car3.png" alt="Outstation Cabs">
                        </div>
                    </div>
                    <div class="team-one__content">
                        <h4 class="team-one__title">
                            <a href="#">Outstation Cabs</a>
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
</section>

    <!-- =========================================
     OUR TESTIMONIALS SECTION
========================================= -->
<section class="vt-testimonial-section">

    <div class="container">

        <!-- SECTION HEADER -->
        <div class="vt-testimonial-header">

            <div class="vt-testimonial-heading">
              
                <h2>
                    Client Testimonials 
                </h2>
            </div>

            <div class="vt-testimonial-header-text">
                <p>
                    Here are additional testimonials to round out the section — keeping the same tone and format as your existing ones:

                </p>
            </div>

        </div>


        <!-- SWIPER -->
        <div class="swiper vt-testimonial-swiper">

            <div class="swiper-wrapper">


                <!-- TESTIMONIAL 1 -->
                <div class="swiper-slide">

                    <div class="vt-testimonial-card">

                        <div class="vt-testimonial-card-top">

                           <div class="vt-testimonial-quote">
                                <i class="fi fi-sr-quote-right"></i>
                            </div>

                            <div class="vt-testimonial-rating">
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>

                        </div>

                        <p class="vt-testimonial-review">
                            Booked a one-way cab to Mysore and the driver was punctual and drove safely throughout the trip.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                WT
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Weekend Traveler</h4>
                                <span></span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 2 -->
                <div class="swiper-slide">

                    <div class="vt-testimonial-card">

                        <div class="vt-testimonial-card-top">

                           <div class="vt-testimonial-quote">
                                <i class="fi fi-sr-quote-right"></i>
                            </div>

                            <div class="vt-testimonial-rating">
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>

                        </div>

                        <p class="vt-testimonial-review">
                            Used their outstation service for a family trip to Coorg. Comfortable SUV and a very courteous driver.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                FT
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4> Family Traveler</h4>
                                <span></span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 3 -->
                <div class="swiper-slide">

                    <div class="vt-testimonial-card">

                        <div class="vt-testimonial-card-top">

                              <div class="vt-testimonial-quote">
         <i class="fi fi-sr-quote-right"></i>
     </div>

                            <div class="vt-testimonial-rating">
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>

                        </div>

                        <p class="vt-testimonial-review">
                            Reliable for our client visits outside Bangalore — professional drivers and always on time.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                BDM
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Business Development Manager</h4>
                                <span> IT Company</span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 4 -->
                <div class="swiper-slide">

                    <div class="vt-testimonial-card">

                        <div class="vt-testimonial-card-top">

                               <div class="vt-testimonial-quote">
         <i class="fi fi-sr-quote-right"></i>
     </div>

                            <div class="vt-testimonial-rating">
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>

                        </div>

                        <p class="vt-testimonial-review">
                            Round-trip booking to Ooty was smooth from start to finish. Same driver and vehicle throughout, exactly as promised.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                VT
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Vacation Traveler</h4>
                                <span></span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 5 -->
                <div class="swiper-slide">

                    <div class="vt-testimonial-card">

                        <div class="vt-testimonial-card-top">

                              <div class="vt-testimonial-quote">
         <i class="fi fi-sr-quote-right"></i>
     </div>

                            <div class="vt-testimonial-rating">
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>

                        </div>

                        <p class="vt-testimonial-review">
                            We've used Vinayaka Travels for multiple corporate outstation trips. Consistent quality every single time.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                               TDM
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4> Travel Desk Coordinator</h4>
                                <span>  Corporate Office</span>
                            </div>

                        </div>

                    </div>

                </div>


            </div>


            <!-- PAGINATION -->
            <div class="swiper-pagination vt-testimonial-pagination"></div>

        </div>

    </div>

</section>


    <!-- =========================================
     SERVICE GALLERY SECTION
========================================= -->
<section class="vt-gallery-section">

    <div class="container">

        <!-- HEADER -->
        <div class="vt-gallery-header">
            
            <h2>
                Explore Our Journey
            </h2>

            <p>
                Take a closer look at our modern fleet, professional services
                and the journeys we manage every day.
            </p>
        </div>
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
                         
                            <!--Listing Single Gallery Single End-->
                        </div>
                    </div>
                </div>
            </div>


    </div>

</section>

    <!-- =========================================
     FAQ SECTION
========================================= -->
<section class="vt-faq-section">

    <div class="container">

        <!-- SECTION HEADER -->
        <div class="vt-faq-header">

         
            <h2>
                 Outstation Cabs in Bangalore

            </h2>

           <%-- <p>
                Find answers to some of the most common questions about our
                transportation services, booking process and support.
            </p>--%>

        </div>


        <!-- FAQ LIST -->
        <div class="vt-faq-list">


            <!-- FAQ 1 -->
            <div class="vt-faq-item active">

                <button class="vt-faq-question" type="button">
                    <span>Do you offer one-way outstation drops?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
Yes, we provide one-way outstation cabs so you only pay for the trip you take, without any return-fare charges.
                    </p>
                </div>

            </div>


            <!-- FAQ 2 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Can I book a round-trip outstation cab with the same driver?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Yes, for round trips we assign the same vehicle and driver throughout your journey for consistency and comfort.

                    </p>
                </div>

            </div>


            <!-- FAQ 3 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Which destinations do you cover for outstation travel?
</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                      We cover major destinations across Karnataka, Tamil Nadu, Andhra Pradesh, and Kerala, along with custom routes based on your itinerary.

                    </p>
                </div>

            </div>


            <!-- FAQ 4 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span> Are your outstation fares fixed or metered?
    </span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                       Our outstation fares are fixed and shared upfront at the time of booking, with no hidden toll, parking, or surge charges.

                    </p>
                </div>

            </div>


            <!-- FAQ 5 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Can I book outstation cabs for a group or family trip?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Absolutely. We offer SUVs and tempo travellers for group and family travel, along with sedans for smaller trips.

                    </p>
                </div>

            </div>


            <!-- FAQ 6 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>How far in advance should I book an outstation cab?
</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                     We recommend booking at least a day in advance for guaranteed availability, though on-demand bookings are accommodated based on fleet availability.

                    </p>
                </div>

            </div>

        </div>

    </div>

</section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsPlaceHolder" Runat="Server">
    <%--javascriot--%>

    <script>
document.addEventListener("DOMContentLoaded", function () {

    new Swiper(".vt-testimonial-swiper", {
        slidesPerView: 3,
        spaceBetween: 28,
        loop: true,
        speed: 700,

        autoplay: {
            delay: 4000,
            disableOnInteraction: false
        },

        pagination: {
            el: ".vt-testimonial-pagination",
            clickable: true
        },

        breakpoints: {
            0: {
                slidesPerView: 1,
                spaceBetween: 16
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 22
            },
            992: {
                slidesPerView: 3,
                spaceBetween: 28
            }
        }
    });

});
</script>

    <script>
document.addEventListener("DOMContentLoaded", function () {

    const faqItems = document.querySelectorAll(".vt-faq-item");

    faqItems.forEach(function (item) {

        const question = item.querySelector(".vt-faq-question");

        question.addEventListener("click", function () {

            const isActive = item.classList.contains("active");

            /* Close all FAQs */
            faqItems.forEach(function (faq) {
                faq.classList.remove("active");
            });

            /* Open clicked FAQ */
            if (!isActive) {
                item.classList.add("active");
            }

        });

    });

});
    </script>
</asp:Content>


