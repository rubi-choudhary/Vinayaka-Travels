<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>



<asp:Content ID="Content1" ContentPlaceHolderID="seoHead" Runat="Server">
   <%-- seo--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
  <%--  links--%>
    <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/3.0.0/uicons-solid-rounded/css/uicons-solid-rounded.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- body--%>

    <!-- =========================================
     SERVICE DETAIL HERO BANNER
========================================= -->
<section class="vt-service-detail-hero">

    <div class="vt-service-detail-overlay"></div>

    <div class="container">
        <div class="row align-items-center">

            <!-- LEFT SIDE CONTENT -->
            <div class="col-lg-7 col-xl-7 vt-service-detail-content-col">

                <div class="vt-service-detail-content">

                    <span class="vt-service-detail-tag">
                        VINAYAKA TRAVELS SERVICES
                    </span>

                    <h1 class="vt-service-detail-title">
                        Reliable Staff Transportation Solutions
                    </h1>

                    <p class="vt-service-detail-description">
                        Safe, reliable and comfortable transportation solutions designed
                        for organizations and employees. We provide professional transport
                        services with a modern fleet and experienced operations team.
                    </p>

                    <div class="vt-service-detail-points">

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Professional and experienced drivers</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Safe and well-maintained vehicles</p>
                        </div>

                        <div class="vt-service-detail-point">
                            <span>✓</span>
                            <p>Customized transportation solutions</p>
                        </div>

                    </div>

                    <a href="#service-enquiry"
                       class="vt-service-detail-cta">
                        Get a Free Consultation
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
                        Professional Transportation Solutions You Can Rely On
                    </h2>

                    <p class="vt-service-overview-text">
                        At Vinayaka Travels, we provide reliable and professionally
                        managed transportation solutions designed to meet the unique
                        requirements of businesses and organizations.
                    </p>

                    <p class="vt-service-overview-text">
                        Our focus is on safety, comfort, punctuality and operational
                        efficiency, ensuring a smooth travel experience for every
                        passenger.
                    </p>

                    <div class="vt-service-overview-list">

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Customized transport solutions for your business</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Well-maintained and comfortable vehicles</p>
                        </div>

                        <div class="vt-service-overview-list-item">
                            <span>✓</span>
                            <p>Experienced drivers and professional operations team</p>
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
                        <strong>20+</strong>
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
                Why Choose Vinayaka Travels
            </h2>

            <p class="vt-service-why-description">
                With years of experience in professional transportation, we deliver
                safe, reliable and customized travel solutions for businesses.
            </p>

        </div>


        <!-- CARDS -->
       <div class="vt-service-why-grid">


    <!-- 01 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fi fi-sr-shield-check"></i>
            </div>

            <span class="vt-service-why-count">01</span>
        </div>

        <h3>Safety First</h3>

        <p>
            Every journey is managed with a strong focus on passenger
            safety and responsible transportation practices.
        </p>

    </div>


    <!-- 02 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-clock"></i>
            </div>

            <span class="vt-service-why-count">02</span>
        </div>

        <h3>Reliable &amp; On-Time</h3>

        <p>
            Well-planned operations and efficient scheduling help ensure
            dependable pick-up and drop services.
        </p>

    </div>


    <!-- 03 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-bus"></i>
            </div>

            <span class="vt-service-why-count">03</span>
        </div>

        <h3>Modern Fleet</h3>

        <p>
            Our fleet is maintained to provide comfortable, dependable
            and professional transportation solutions.
        </p>

    </div>


    <!-- 04 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-users"></i>
            </div>

            <span class="vt-service-why-count">04</span>
        </div>

        <h3>Experienced Team</h3>

        <p>
            Professional drivers and an experienced operations team help
            make every journey smooth and well managed.
        </p>

    </div>


    <!-- 05 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fas fa-headset"></i>
            </div>

            <span class="vt-service-why-count">05</span>
        </div>

        <h3>Dedicated Support</h3>

        <p>
            Our support team is available to assist with transportation
            requirements and operational coordination.
        </p>

    </div>


    <!-- 06 -->
    <div class="vt-service-why-item">

        <div class="vt-service-why-top">
            <div class="vt-service-why-icon">
                <i class="fi fi-sr-route"></i>
            </div>

            <span class="vt-service-why-count">06</span>
        </div>

        <h3>Customized Solutions</h3>

        <p>
            Flexible transportation solutions designed around your
            organization's specific requirements.
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
                        At Vinayaka Travels, we understand that dependable transportation
                        plays an important role in keeping your business operations running
                        smoothly. Our solutions are designed to deliver comfort, reliability
                        and complete peace of mind.
                    </p>

                   
                    <!-- FEATURE POINTS -->
                    <div class="vt-premium-service-features">

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>01</span>
                            </div>

                            <div>
                                <h4>Smart Route Planning</h4>
                                <p>
                                    Efficient transport planning designed around your
                                    organization's daily requirements.
                                </p>
                            </div>
                        </div>

                        <div class="vt-premium-service-feature">
                            <div class="vt-premium-service-feature-icon">
                                <span>02</span>
                            </div>

                            <div>
                                <h4>Seamless Operations</h4>
                                <p>
                                    A professional operations team ensuring smooth
                                    coordination from start to finish.
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
                            20+
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
              WHY IT MATTERS
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
                  <strong>20+</strong>
                  <span>Years of Experience</span>
              </div>
              <div class="vt-premium-panel-stat">
                  <strong>24/7</strong>
                  <span>Operational Support</span>
              </div>
          </div>

          <!-- CTA -->
          <a href="contact.aspx" class="vt-premium-panel-btn">
              Get in Touch
              <span>→</span>
          </a>

      </div>

  </div>


            <!-- ================= LEFT SIDE ================= -->
            <div class="vt-premium-features-left">

                <h2 class="vt-premium-features-title">
                    More Than Transportation.
                    Built Around Your Business.
                </h2>

                <p class="vt-premium-features-intro">
                    We provide dependable transportation solutions designed to
                    support your daily operations. From planning and coordination
                    to passenger comfort and safety, every detail is managed with
                    a professional approach.
                </p>

                <!-- FEATURE LIST -->
                <div class="vt-premium-feature-list">

                    <!-- FEATURE 01 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">01</div>
                        <div class="vt-premium-feature-info">
                            <h4>Professional Transport Management</h4>
                            <p>
                                Efficient planning and coordinated operations help
                                ensure smooth transportation every day.
                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 02 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">02</div>
                        <div class="vt-premium-feature-info">
                            <h4>Flexible Service Solutions</h4>
                            <p>
                                Transportation services tailored to your company's
                                routes, schedules and operational requirements.
                            </p>
                        </div>
                    </div>

                    <!-- FEATURE 03 -->
                    <div class="vt-premium-feature-item">
                        <div class="vt-premium-feature-point">03</div>
                        <div class="vt-premium-feature-info">
                            <h4>Comfort & Reliability</h4>
                            <p>
                                Well-managed vehicles and experienced teams focused
                                on delivering a dependable travel experience.
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
                            Ready to Simplify Your
                            Transportation Needs?
                        </h2>
                        <p>
                            Partner with Vinayaka Travels for safe, reliable and
                            professionally managed transportation solutions tailored
                            to your organization's requirements.
                        </p>
                    </div>
                </div>

                <!-- RIGHT BUTTONS -->
                <div class="col-lg-4">
                    <div class="vt-service-cta-actions">

                        <a href="contact.aspx" class="vt-service-cta-primary">
                            Get a Free Consultation
                            <span>→</span>
                        </a>

                        <a href="tel:+919000000000" class="vt-service-cta-call">
                            <span class="vt-service-cta-call-icon">☎</span>
                            <span class="vt-service-cta-call-text">
                                <small>Call Us Today</small>
                                <strong>+91 90000 00000</strong>
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
     OUR CLIENTS SECTION
========================================= -->
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
                    Trusted by Businesses.
                    Valued by People.
                </h2>
            </div>

            <div class="vt-testimonial-header-text">
                <p>
                    Discover what our clients have to say about their experience
                    with Vinayaka Travels and our commitment to reliable,
                    professional transportation services.
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
                            Vinayaka Travels has been a reliable transportation
                            partner for our organization. Their professional approach,
                            punctuality and service quality have consistently met
                            our expectations.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                A
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Arun Kumar</h4>
                                <span>Corporate Client</span>
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
                            The team understands our transportation requirements
                            well and provides dependable support. Their operations
                            are organized, responsive and professionally managed.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                P
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Priya Sharma</h4>
                                <span>HR Manager</span>
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
                            We appreciate their commitment to safety, timely
                            operations and passenger comfort. Vinayaka Travels
                            has become a trusted mobility partner for our team.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                R
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Rahul Mehta</h4>
                                <span>Operations Head</span>
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
                            From route planning to daily coordination, everything
                            is handled smoothly. Their flexibility and service
                            quality make them a valuable partner for our business.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                S
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Sneha Reddy</h4>
                                <span>Admin Manager</span>
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
                            Their vehicles are well maintained and the service
                            team is always responsive. We have experienced
                            reliable and comfortable transportation throughout.
                        </p>

                        <div class="vt-testimonial-client">

                            <div class="vt-testimonial-avatar">
                                V
                            </div>

                            <div class="vt-testimonial-client-info">
                                <h4>Vikram Singh</h4>
                                <span>Business Client</span>
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
                Everything You Need to
                Know About Our Services
            </h2>

            <p>
                Find answers to some of the most common questions about our
                transportation services, booking process and support.
            </p>

        </div>


        <!-- FAQ LIST -->
        <div class="vt-faq-list">


            <!-- FAQ 1 -->
            <div class="vt-faq-item active">

                <button class="vt-faq-question" type="button">
                    <span>What transportation services does Vinayaka Travels provide?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Vinayaka Travels provides professional transportation
                        solutions including staff transportation, corporate travel
                        and customized mobility services based on your
                        organization's requirements.
                    </p>
                </div>

            </div>


            <!-- FAQ 2 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>How can I book your transportation services?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        You can contact our team through the enquiry form, phone
                        number or contact page. Our team will understand your
                        requirements and provide a suitable transportation solution.
                    </p>
                </div>

            </div>


            <!-- FAQ 3 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Can you provide customized transportation solutions?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Yes. We provide flexible transportation solutions based
                        on passenger requirements, routes, schedules and the
                        specific operational needs of your organization.
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
                        Passenger safety is an important part of our operations.
                        We focus on professional service, well-managed operations
                        and properly maintained vehicles for dependable journeys.
                    </p>
                </div>

            </div>


            <!-- FAQ 5 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>Which locations do you currently serve?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Vinayaka Travels operates from Bengaluru and has extended
                        its transportation services to Chennai and Hyderabad.
                        Please contact us for your specific service requirements.
                    </p>
                </div>

            </div>


            <!-- FAQ 6 -->
            <div class="vt-faq-item">

                <button class="vt-faq-question" type="button">
                    <span>How can I get a quotation for transportation services?</span>
                    <span class="vt-faq-icon">+</span>
                </button>

                <div class="vt-faq-answer">
                    <p>
                        Simply submit your requirements through our enquiry form
                        or contact our team directly. We will review your
                        requirements and assist you with the next steps.
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

