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
                        Employee Transportation Services
                    </h1>

                    <p class="vt-service-detail-description">
                        Vinayaka Travels provides safe, punctual, and cost-effective employee transportation solutions for corporates, IT parks, factories, and business campuses across Bangalore. From daily staff pickup and drop to night-shift cab services, we help your workforce commute safely — every single day.

                    </p>

                    <div class="vt-service-detail-points">

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Safe & Reliable</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>On-Time Every Time</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Modern, GPS-Enabled Fleet</p>
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
                        Employee Transportation Services in Bangalore
                    </h2>

                    <p class="vt-service-overview-text">
                        Managing daily commute for a large workforce is one of the biggest operational challenges for any company. Vinayaka Travels simplifies this with end-to-end corporate employee transportation services, covering route planning, vehicle allocation, driver management, and real-time tracking — so your HR and admin teams can focus on the business, not logistics.
                    </p>

                    <p class="vt-service-overview-text">
                        Whether you need transportation for 20 employees or 2,000, our fleet of sedans, tempo travellers, mini-buses, and staff buses is built to scale with your organization.
                        <br />

                        

                    </p>

                    <div class="vt-service-overview-list">

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Trusted employee transport provider for IT companies, BPOs, factories & manufacturing units</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Verified, trained, and background-checked drivers</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Live vehicle tracking (GPS) for employee safety</p>
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
                Why Choose Vinayaka Travels for Employee Transportation Services in Bangalore
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

        <h3>Safety First</h3>

        <p>
            GPS-tracked vehicles, verified drivers, and strict safety protocols for secure employee commute — especially for women and night-shift staff.
        </p>

    </div>


    <!-- 02 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-clock"></i>
            </div>

            
        </div>

        <h3>On-Time Guarantee</h3>

        <p>
            Optimized route planning ensures employees reach office and home on schedule, reducing absenteeism and delays.
        </p>

    </div>


    <!-- 03 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-bus"></i>
            </div>

           
        </div>

        <h3>Modern Fleet</h3>

        <p>
            Well-maintained sedans, SUVs, tempo travellers, and buses equipped with GPS, CCTV, and panic buttons.


        </p>

    </div>


    <!-- 04 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-users"></i>
            </div>

           
        </div>

        <h3>Dedicated Support</h3>

        <p>
           24/7 operations team to handle route changes, emergencies, and last-minute requests.


        </p>

    </div>


    <!-- 05 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-headset"></i>
            </div>

            
        </div>

        <h3>Experienced Team

</h3>

        <p>
            Trained chauffeurs with local route expertise and professional service etiquette.


        </p>

    </div>


    <!-- 06 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fi fi-sr-route"></i>
            </div>

                
        </div>

        <h3>Customized Solutions</h3>

        <p>
           Transport plans tailored to your headcount, shift timings, and office locations.


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
                        Transportation That Moves Your Business
                    </h2>

                    <p>
                        Vinayaka Travels designs employee transportation solutions around your company's operational needs, not the other way around. Our services include:

                    </p>

                   
                    <!-- FEATURE POINTS -->
                    <div class="vt-premium-service-features">

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>01</span>
                            </div>

                            <div>
                                <h4>Daily Staff Pickup & Drop</h4>
                                <p>
                                    Home-to-office and office-to-home transport for permanent employees

                                </p>
                            </div>
                        </div>

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>02</span>
                            </div>

                            <div>
                                <h4>  Night Shift Employee Transport</h4>
                                <p>
                                    Dedicated women-safety protocols, escort options, and GPS monitoring

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
              Why Businesses Partner With Us:
          </span>

          <h3>
              A Transport Partner You Can
             Rely On Every Day.
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
                   A Transport Partner You Can Rely On Every Day

                </h2>

                <p class="vt-premium-features-intro">
                   Businesses across Bangalore trust Vinayaka Travels as their preferred employee transportation company because we combine local expertise with professional fleet management.

                </p>

                <!-- FEATURE LIST -->
                <div class="vt-premium-feature-list">

                    <!-- FEATURE 01 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">01</div>
                        <div class="vt-premium-feature-info">
                            <h4> Professional Transport Management </h4>
                            <p>
                                Dedicated coordinators manage routes, vehicles, and driver schedules end-to-end

                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 02 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">02</div>
                        <div class="vt-premium-feature-info">
                            <h4>Flexible Service Solutions</h4>
                            <p>
                                Daily, weekly, monthly, or long-term corporate contracts

                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 03 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">03</div>
                        <div class="vt-premium-feature-info">
                            <h4>Comfort & Reliability</h4>
                            <p>
                                Clean, air-conditioned vehicles ensuring a comfortable commute for every employee

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

        <div class="listing-carousel-style owl-carousel owl-theme">

            <!-- Service 1 -->
            <div class="item">
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
            <div class="item">
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
            <div class="item">
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

            <!-- Service 4 -->
            <div class="item">
                <div class="team-one__single">
                    <div class="team-one__img-box">
                        <div class="team-one__img">
                            <img src="assets/images/gallery/event-transportation.jpg" alt="Event Transportation">
                        </div>
                    </div>
                    <div class="team-one__content">
                        <h4 class="team-one__title">
                            <a href="event-transportation.aspx">Event Transportation</a>
                        </h4>
                    </div>
                </div>
            </div>

            <!-- Service 5 -->
            <div class="item">
                <div class="team-one__single">
                    <div class="team-one__img-box">
                        <div class="team-one__img">
                            <img src="assets/images/gallery/car-lease.jpg" alt="Long Term Car Lease">
                        </div>
                    </div>
                    <div class="team-one__content">
                        <h4 class="team-one__title">
                            <a href="long-term-car-lease.aspx">Long Term Car Lease</a>
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
                            Reliable and consistent daily operations. Punctual pickups made everything smooth for our team.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                HR
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>HR Manager</h4>
                                <span>IT Company</span>
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
                            Professional drivers and quality vehicles well-maintained for our staff commute.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                AH
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Admin Head</h4>
                                <span> Manufacturing Unit</span>
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
                            Reliable vehicles and well-maintained fleet for our employee transportation needs.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                OM
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Operations Manager</h4>
                                <span></span>
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
                            Vinayaka Travels has made our night-shift operations completely stress-free. Their safety protocols for our women employees give us real peace of mind.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                HH
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>HR Head</h4>
                                <span> BPO Company</span>
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
                            We switched from multiple vendors to Vinayaka Travels for all our employee transport needs. Single point of contact, zero coordination headaches.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                               FM
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Facilities Manage</h4>
                                <span> IT Park</span>
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
                 Employee Transportation Services in Bangalore
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
                    <span>What is included in Vinayaka Travels' employee transportation service?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        We provide end-to-end staff pickup and drop, route planning, GPS tracking, driver management, and 24/7 support tailored to your company's shift timings and headcount.

                    </p>
                </div>

            </div>


            <!-- FAQ 2 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>How can I book transportation for my company's employees?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        You can request a free consultation through our website form or call our team directly. We'll assess your requirements — headcount, locations, and shift timings — and propose a customized transport plan.

                    </p>
                </div>

            </div>


            <!-- FAQ 3 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Can you provide transportation for night shifts?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Yes. We specialize in night-shift employee transport with GPS-monitored vehicles, verified drivers, and added safety measures for female employees.

                    </p>
                </div>

            </div>


            <!-- FAQ 4 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>How do you ensure passenger safety?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                       All our vehicles are GPS-enabled, drivers are background-verified and trained, and our operations team monitors trips in real time to ensure a safe commute.

                    </p>
                </div>

            </div>


            <!-- FAQ 5 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Which industries do you currently serve?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        We serve IT companies, BPOs, manufacturing units, factories, corporate offices, and business campuses across Bangalore.

                    </p>
                </div>

            </div>


            <!-- FAQ 6 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Is your employee transportation service scalable?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                       Absolutely. Whether your headcount grows or shrinks seasonally, we scale our fleet and routes accordingly with flexible contract terms.

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

