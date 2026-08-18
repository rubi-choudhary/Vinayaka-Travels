<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="seoHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* ===== Related Blogs ===== */
        html {
            overflow-x: hidden;
        }

        body {
            overflow-x: hidden;
        }

        .vt-blogs-grid {
            max-width: 1180px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 26px;
        }

        .vt-blog-card {
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(11, 43, 76, 0.06);
            transition: transform 0.25s ease, box-shadow 0.25s ease;
            text-decoration: none;
            display: block;
        }

            .vt-blog-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 16px 34px rgba(11, 43, 76, 0.12);
            }

        .vt-blog-img-wrap {
            position: relative;
            height: 210px;
        }

            .vt-blog-img-wrap img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                display: block;
            }

        .vt-blog-tag {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--vt-orange);
            color: #fff;
            font-size: 11.5px;
            font-weight: 700;
            letter-spacing: 0.8px;
            text-transform: uppercase;
            padding: 7px 16px;
            border-radius: 20px;
            box-shadow: 0 6px 16px rgba(253, 91, 56, 0.35);
        }

        .vt-blog-body {
            padding: 20px 22px 24px;
        }

        .car-brands__title .fleet-info span {
            font-size: 18px;
            display: flex;
            margin-top: 16px;
            white-space: nowrap;
        }



        .car-brands__title .fleet-info {
            display: flex;
            align-items: start !important;
            justify-content: left !important;
            gap: 20px;
            color: var(--gizmo-black);
            /*    white-space: nowrap;*/
        }


        .vt-blog-meta {
            display: flex;
            align-items: center;
            gap: 18px;
            margin-bottom: 12px;
            font-size: 13px;
            color: var(--vt-gray);
        }

            .vt-blog-meta span {
                display: flex;
                align-items: center;
                gap: 6px;
            }

        .vt-blog-body h4 {
            font-size: 17px;
            font-weight: 700;
            color: var(--vt-navy);
            line-height: 1.4;
            margin: 0;
        }

        @media (max-width: 900px) {
            .vt-blogs-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 560px) {
            .vt-blogs-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>

    <style>
        /* ===== Why Choose Us Feature Grid ===== */
        .vt-features-grid {
            max-width: 1180px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .vt-feature-card {
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 14px;
            padding: 28px 26px;
            box-shadow: 0 8px 24px rgba(11, 43, 76, 0.06);
            transition: transform 0.25s ease, box-shadow 0.25s ease, border-color 0.25s ease;
        }

            .vt-feature-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 16px 34px rgba(11, 43, 76, 0.12);
                border-color: rgba(253, 91, 56, 0.25);
            }

        .vt-feature-icon {
            width: 52px;
            height: 52px;
            border-radius: 14px;
            background: rgba(253, 91, 56, 0.12);
            color: var(--vt-orange-dark);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            margin-bottom: 18px;
        }

        .vt-feature-card h4 {
            font-size: 17px;
            font-weight: 700;
            color: var(--vt-navy);
            margin: 0 0 10px;
        }

        .vt-feature-card p {
            font-size: 14px;
            color: var(--vt-gray);
            line-height: 1.65;
            margin: 0;
        }

        @media (max-width: 900px) {
            .vt-features-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 560px) {
            .vt-features-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>

    <style>
        :root {
            --vt-navy: #0b2b4c;
            --vt-navy-dark: #071c33;
            --vt-orange: #FD5B38;
            --vt-orange-dark: #FD5B38;
            --vt-light: #f5f8fb;
            --vt-gray: #6b7580;
        }

        .vt-section {
            padding: 45px 8%;
        }

        .vt-section-light {
            background: var(--vt-light);
        }

        .vt-section-white {
            background: #ffffff;
        }

        /* ===== Banner ===== */
        .vt-banner {
            /*            background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('https://images.unsplash.com/photo-1449965408869-eaa3f722e40d?auto=format&fit=crop&w=1600&q=80');*/
            background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('/assets/images/blog/NewDynamic/4.png');
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 55px 8%;
            position: relative;
            overflow: visible;
        }

        .vt-banner-wrap {
            max-width: 1250px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            gap: 50px;
            position: relative;
            z-index: 1;
        }

        .vt-banner-left {
            flex: 1;
            min-width: 320px;
        }

        .vt-banner-right {
            flex: 0 0 420px;
        }

        .vt-banner-eyebrow {
            display: inline-block;
            letter-spacing: 3px;
            text-transform: uppercase;
            font-size: 13px;
            font-weight: 600;
            color: var(--vt-orange);
            margin-bottom: 16px;
        }

        .vt-banner h1 {
            font-size: 38px;
            font-weight: 700;
            margin: 0 0 14px;
            line-height: 1.28;
        }

            .vt-banner h1 span {
                color: var(--vt-orange);
            }

        .vt-banner p {
            font-size: 16px;
            color: #d9e3ef;
            max-width: 480px;
            margin: 0 0 22px;
            line-height: 1.65;
        }

        .vt-banner-stats {
            display: flex;
            gap: 30px;
            margin-top: 8px;
        }

            .vt-banner-stats div strong {
                display: block;
                font-size: 22px;
                color: #fff;
                font-weight: 700;
            }

            .vt-banner-stats div span {
                font-size: 12.5px;
                color: #b9c6d8;
            }

        /* ---- Banner quote form ---- */
        .vt-quote-form {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.16);
            border-radius: 18px;
            padding: 24px;
            box-shadow: 0 20px 45px rgba(0, 0, 0, 0.3);
        }

            .vt-quote-form h3 {
                color: #fff;
                font-size: 18px;
                margin: 0 0 4px;
            }

            .vt-quote-form p.vt-form-sub {
                color: #c5d2e2;
                font-size: 13px;
                margin: 0 0 16px;
            }

        .vt-form-row {
            display: flex;
            gap: 12px;
            margin-bottom: 12px;
        }

            .vt-form-row .vt-form-group {
                flex: 1;
            }

        .vt-form-group {
            margin-bottom: 12px;
        }

            .vt-form-group label {
                display: block;
                font-size: 12px;
                color: #cbd7e6;
                margin-bottom: 6px;
                font-weight: 600;
                letter-spacing: 0.3px;
            }

            .vt-form-group input,
            .vt-form-group select {
                width: 100%;
                padding: 10px 12px;
                border-radius: 8px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                background: rgba(255, 255, 255, 0.92);
                color: var(--vt-navy);
                font-size: 13.5px;
                outline: none;
                box-sizing: border-box;
            }

                .vt-form-group input::placeholder {
                    color: #93a0ae;
                }

        .vt-quote-form .vt-btn-primary {
            width: 100%;
            text-align: center;
            border: none;
            cursor: pointer;
            margin-top: 4px;
        }

        .vt-btn {
            display: inline-block;
            padding: 13px 34px;
            border-radius: 30px;
            font-weight: 600;
            font-size: 15px;
            text-decoration: none;
            transition: all 0.25s ease;
        }

        .vt-btn-primary {
            background: var(--vt-orange);
            color: #fff;
            box-shadow: 0 8px 20px rgba(253, 91, 56, 0.35);
        }

            .vt-btn-primary:hover {
                background: var(--vt-orange-dark);
            }

        .vt-btn-outline {
            border: 2px solid #fff;
            color: #fff;
            margin-left: 14px;
        }

            .vt-btn-outline:hover {
                background: #fff;
                color: var(--vt-navy);
            }

        /* ===== Feature row (image + text) ===== */
        .vt-row {
            display: flex;
            align-items: center;
            gap: 50px;
            max-width: 1180px;
            margin: 0 auto;
        }

            .vt-row.reverse {
                flex-direction: row-reverse;
            }

        /*.vt-row-img {
            flex: 1;
            min-height: 400px;
            border-radius: 14px;
            background-size: cover;
            background-position: center;
            box-shadow: 0 15px 35px rgba(11, 43, 76, 0.15);
        }*/


        .vt-row-img {
    flex: 1 1 auto;
    min-height: 400px;
    border-radius: 14px;
    background-size: cover;
    background-position: center;
    box-shadow: 0 15px 35px rgba(11, 43, 76, 0.15);
}

        .vt-row-text {
            flex: 1;
        }

        .vt-tag {
            display: inline-block;
            background: rgba(253, 91, 56, 0.12);
            color: var(--vt-orange-dark);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            padding: 6px 14px;
            border-radius: 20px;
            margin-bottom: 16px;
        }

        .vt-row-text h2 {
            font-size: 30px;
            color: var(--vt-navy);
            margin: 0 0 16px;
            font-weight: 700;
        }

        .vt-row-text p {
            color: var(--vt-gray);
            font-size: 15.5px;
            line-height: 1.7;
            margin-bottom: 20px;
        }

        .vt-points {
            list-style: none;
            padding: 0;
            margin: 0;
        }

            .vt-points li {
                display: flex;
                align-items: flex-start;
                gap: 10px;
                margin-bottom: 12px;
                color: var(--vt-navy);
                font-size: 15px;
                font-weight: 500;
            }

                .vt-points li::before {
                    content: "\2713";
                    flex-shrink: 0;
                    width: 22px;
                    height: 22px;
                    background: var(--vt-orange-dark);
                    color: #fff;
                    border-radius: 50%;
                    font-size: 12px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

        /* ===== Section heading ===== */
        .vt-heading-center {
            text-align: center;
            max-width: 640px;
            margin: 0 auto 50px;
        }

            .vt-heading-center .vt-tag {
                margin-bottom: 14px;
            }

            .vt-heading-center h2 {
                font-size: 30px;
                color: var(--vt-navy);
                font-weight: 700;
                margin: 0 0 10px;
            }

            .vt-heading-center p {
                color: var(--vt-gray);
                font-size: 15px;
            }

        /* ===== Testimonials ===== */
        .vt-testimonial-wrap {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .vt-testimonial-track {
            flex: 1;
            display: flex;
            gap: 22px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            scroll-behavior: smooth;
            padding: 6px 4px 14px;
        }

            .vt-testimonial-track::-webkit-scrollbar {
                height: 5px;
            }

            .vt-testimonial-track::-webkit-scrollbar-thumb {
                background: #d8e0e9;
                border-radius: 10px;
            }

        .vt-testimonial-card {
            flex: 0 0 290px;
            scroll-snap-align: start;
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 12px;
            padding: 26px 22px;
            box-shadow: 0 8px 24px rgba(11, 43, 76, 0.06);
        }

        .vt-testimonial-arrow {
            flex-shrink: 0;
            width: 42px;
            height: 42px;
            border-radius: 8px;
            border: none;
            background: var(--vt-navy);
            color: #fff;
            font-size: 22px;
            line-height: 1;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background 0.25s ease;
        }

            .vt-testimonial-arrow:hover {
                background: var(--vt-orange);
            }

        .vt-testimonial-dots {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin-top: 24px;
        }

        .vt-testimonial-stars {
            color: var(--vt-orange);
            font-size: 14px;
            margin-bottom: 12px;
        }

        .vt-testimonial-card p {
            font-size: 14px;
            color: var(--vt-gray);
            line-height: 1.6;
            margin-bottom: 18px;
        }

        .vt-testimonial-person {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .vt-avatar {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: var(--vt-navy);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            font-size: 14px;
        }

        .vt-testimonial-person strong {
            display: block;
            color: var(--vt-navy);
            font-size: 13.5px;
        }

        .vt-testimonial-person span {
            font-size: 12px;
            color: var(--vt-gray);
        }

        /* ===== Our Clients ===== */
        .vt-clients-wrap {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .vt-clients-track {
            flex: 1;
            display: flex;
            gap: 20px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            scroll-behavior: smooth;
            padding: 6px 4px 14px;
        }

            .vt-clients-track::-webkit-scrollbar {
                height: 5px;
            }

            .vt-clients-track::-webkit-scrollbar-thumb {
                background: #d8e0e9;
                border-radius: 10px;
            }

        .vt-client-card {
            flex: 0 0 190px;
            scroll-snap-align: start;
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 10px;
            height: 110px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 18px;
            box-shadow: 0 6px 16px rgba(11, 43, 76, 0.05);
            transition: transform 0.25s ease, box-shadow 0.25s ease;
        }

            .vt-client-card:hover {
                transform: translateY(-4px);
                box-shadow: 0 12px 26px rgba(11, 43, 76, 0.1);
            }

            .vt-client-card img {
                max-width: 100%;
                max-height: 100%;
                object-fit: contain;
                filter: grayscale(15%);
            }

        .vt-clients-arrow {
            flex-shrink: 0;
            width: 42px;
            height: 42px;
            border-radius: 8px;
            border: none;
            background: var(--vt-navy);
            color: #fff;
            font-size: 22px;
            line-height: 1;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background 0.25s ease;
        }

            .vt-clients-arrow:hover {
                background: var(--vt-orange);
            }

        .vt-clients-dots {
            display: flex;
            justify-content: center;
            gap: 8px;
            margin-top: 24px;
        }

        .vt-dot {
            width: 9px;
            height: 9px;
            border-radius: 50%;
            background: #cfd8e2;
            cursor: pointer;
            transition: background 0.25s ease, transform 0.25s ease;
        }

            .vt-dot.active {
                background: var(--vt-orange);
                transform: scale(1.2);
            }

        /* ===== CTA ===== */
        .vt-cta {
            background: linear-gradient(135deg, var(--vt-navy-dark), var(--vt-navy));
            border-radius: 20px;
            max-width: 1180px;
            margin: 0 auto;
            padding: 55px 60px 45px;
            position: relative;
            overflow: hidden;
        }

            .vt-cta::before {
                content: "";
                position: absolute;
                top: -50px;
                left: -50px;
                width: 200px;
                height: 200px;
                background: rgba(253, 91, 56, 0.15);
                border-radius: 50%;
            }

            .vt-cta::after {
                content: "";
                position: absolute;
                bottom: -70px;
                right: -30px;
                width: 220px;
                height: 220px;
                background: rgba(255, 255, 255, 0.04);
                border-radius: 50%;
            }

        .vt-cta-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 24px;
            position: relative;
            z-index: 1;
            margin-bottom: 40px;
        }

        .vt-cta h2 {
            color: #fff;
            font-size: 26px;
            font-weight: 700;
            margin: 0 0 8px;
        }

        .vt-cta p {
            color: #cbd7e6;
            font-size: 15px;
            margin: 0;
        }

        .vt-cta-features {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.12);
            padding-top: 32px;
        }

        .vt-cta-feature {
            display: flex;
            align-items: flex-start;
            gap: 14px;
        }

            .vt-cta-feature .vt-cta-icon {
                width: 44px;
                height: 44px;
                border-radius: 12px;
                background: rgba(253, 91, 56, 0.15);
                color: var(--vt-orange);
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 20px;
                flex-shrink: 0;
            }

            .vt-cta-feature strong {
                display: block;
                color: #fff;
                font-size: 15px;
                margin-bottom: 4px;
            }

            .vt-cta-feature span {
                color: #b9c6d8;
                font-size: 13px;
                line-height: 1.5;
            }

        /* ===== FAQ ===== */
        .vt-faq-wrap {
            max-width: 820px;
            margin: 0 auto;
        }

        .vt-faq-item {
            border-bottom: 1px solid #e3e9f0;
            padding: 20px 0;
        }

            .vt-faq-item summary {
                list-style: none;
                cursor: pointer;
                font-weight: 600;
                color: var(--vt-navy);
                font-size: 16px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

                .vt-faq-item summary::-webkit-details-marker {
                    display: none;
                }

                .vt-faq-item summary::after {
                    content: "+";
                    color: var(--vt-orange);
                    font-size: 22px;
                    font-weight: 400;
                }

            .vt-faq-item[open] summary::after {
                content: "\2212";
            }

            .vt-faq-item p {
                color: var(--vt-gray);
                font-size: 14.5px;
                line-height: 1.7;
                margin: 12px 0 0;
            }

        @media(max-width:1399px) {
            .main-menu__logo img {
                width: 250px;
            }

            .main-menu .main-menu__list > li + li, .stricky-header .main-menu__list > li + li {
                margin-left: 24px;
            }
        }

     /*   @media (max-width: 900px) {
            .vt-row, .vt-row.reverse {
                flex-direction: column;
            }

                 .vt-row-img {
                min-height: 340px;
                display: block;
                width: 100% !important;
            }*/
     @media (max-width: 900px) {
            .vt-row, .vt-row.reverse {
                flex-direction: column;
            }

            .vt-row-img {
                flex: 0 0 auto;
                min-height: 340px;
                display: block;
                width: 100% !important;
                order: 2;
            }

            .vt-row-text {
                order: 1;
            }



            .vt-banner-wrap {
                flex-direction: column;
            }




            .vt-banner-right {
                width: 100%;
                flex: none;
            }

            .vt-cta-top {
                text-align: center;
                justify-content: center;
            }

            .vt-cta-features {
                grid-template-columns: 1fr 1fr;
            }

            .vt-banner h1 {
                font-size: 30px;
            }
        }

             .vinayaka-about-desktop {
    display: block;
}

.vinayaka-about-mobile {
    display: none;
}

        @media (max-width: 560px) {
            .vt-cta-features {
                grid-template-columns: 1fr;
            }

            .vt-form-row {
                flex-direction: column;
                gap: 0;
            }

            .vt-client-card {
                flex: 0 0 150px;
                height: 90px;
            }
        }

        .hw {
            color: white;
        }
    </style>




    <%--    Responsive--%>

    <style>
        /* =====================================================
           RESPONSIVE — 1366 / 1200 / 1199 / 992 / 767 / 567
        ===================================================== */

        .team-one__inner {
            position: relative;
            display: block;
            margin-bottom: 60px;
        }

        .team-one {
            position: relative;
            display: block;
            padding: 135px 0 110px;
            z-index: 1;
        }

        .car-brands__content {
            padding: 14px 20px;
        }

        .car-brands__title .fleet-info {
            display: flex;
            align-items: flex-start;
            justify-content: flex-start;
            gap: 12px;
            color: var(--gizmo-black);
            width: 100%;
        }

            .car-brands__title .fleet-info .fleet-name {
                font-size: 17px;
                font-weight: 700;
                color: var(--vt-navy, #0b2b4c);
                white-space: nowrap;
                flex-shrink: 0;
            }

            .car-brands__title .fleet-info .fleet-desc {
                font-size: 13.5px;
                color: var(--vt-gray, #6b7580);
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                flex: 1;
                min-width: 0;
            }

            .car-brands__title .fleet-info .icon-angle-left {
                flex-shrink: 0;
                margin-left: auto;
            }

        .car-brands {
            position: relative;
            display: block;
            padding: 60px 0 50px;
            z-index: 1;
            background: #d1d0d01a;
        }

        /* ===== Blogs Slider ===== */
        .vt-blogs-wrap {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .vt-blogs-track {
            flex: 1;
            min-width: 0;
            display: flex;
            gap: 24px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            scroll-behavior: smooth;
            padding: 6px 4px 14px;
        }

            .vt-blogs-track::-webkit-scrollbar {
                height: 5px;
            }

            .vt-blogs-track::-webkit-scrollbar-thumb {
                background: #d8e0e9;
                border-radius: 10px;
            }

        .vt-blog-card {
            flex: 0 0 340px;
            scroll-snap-align: start;
        }

        .vt-blogs-arrow {
            flex-shrink: 0;
            width: 42px;
            height: 42px;
            min-inline-size: 42px;
            min-block-size: 42px;
            border-radius: 8px;
            border: none;
            background: var(--vt-navy);
            color: #fff;
            font-size: 22px;
            line-height: 1;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background 0.25s ease;
        }

            .vt-blogs-arrow:hover:not(:disabled) {
                background: var(--vt-orange);
            }

        .vt-banner h1,
        .vt-row-text h2,
        .vt-heading-center h2,
        .vt-cta h2 {
            text-wrap: balance;
            overflow-wrap: break-word;
        }

        /* ---------- 1366px ---------- */
        @media (max-width: 1366px) {
            .vt-section {
                padding: 42px 6%;
            }

            .vt-banner {
                padding: 50px 6%;
            }

            .vt-banner-wrap {
                gap: 36px;
            }

            .vt-banner-right {
                flex: 0 0 380px;
            }

            .vt-banner h1 {
                font-size: 34px;
            }

            .vt-row {
                gap: 40px;
            }

            .vt-cta {
                padding: 50px 40px 40px;
            }

            .vt-blog-card {
                flex: 0 0 320px;
            }
        }

        /* ---------- 1200px ---------- */
        @media (max-width: 1200px) {
            .vt-section {
                padding: 42px 5%;
            }

            .vt-banner {
                padding: 48px 5%;
            }

            .vt-banner-right {
                flex: 0 0 360px;
            }

            .vt-features-grid,
            .vt-blogs-grid {
                gap: 20px;
            }

            .vt-row {
                gap: 32px;
            }

            .vt-row-img {
                min-height: 360px;
            }

            .car-brands,
            .team-one {
                padding-inline: 12px;
            }

            .vt-blog-card {
                flex: 0 0 300px;
            }
        }

        /* ---------- 1199px ---------- */
        @media (max-width: 1199px) {
            .vt-banner-wrap {
                align-items: flex-start;
                gap: 32px;
            }

            .vt-banner-right {
                flex: 0 0 340px;
            }

            .vt-banner h1 {
                font-size: 30px;
            }

            .vt-banner-left {
                min-width: 0;
            }

            .vt-row-img {
                min-height: 320px;
            }

            .vt-cta-features {
                gap: 16px;
            }

            .vt-cta h2 {
                font-size: 24px;
            }

            .car-brands__title .fleet-info .fleet-name {
                font-size: 15px;
            }

            .vt-testimonial-card {
                flex: 0 0 270px;
            }
        }

        /* ---------- 992px ---------- */
        @media (max-width: 992px) {
            .vt-banner-wrap {
                flex-direction: column;
                align-items: stretch;
            }

            .vt-banner-left,
            .vt-banner-right {
                width: 100%;
                flex: none;
                min-width: 0;
            }

            .vt-banner-stats {
                flex-wrap: wrap;
                gap: 20px;
            }

            .vt-row,
            .vt-row.reverse {
                flex-direction: column;
            }

            .vt-row-img {
                width: 100%;
                min-height: 300px;
            }

            .vt-features-grid,
            .vt-blogs-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .vt-cta-top {
                text-align: center;
                justify-content: center;
            }

            .vt-cta-features {
                grid-template-columns: repeat(2, 1fr);
            }

            .vt-testimonial-card {
                flex: 0 0 260px;
            }

            .vt-blog-card {
                flex: 0 0 280px;
            }

            .car-brands__title .fleet-info .fleet-desc {
                white-space: normal;
            }

            .enjoy-one__btn-box .thm-btn {
                width: 100%;
                max-width: 220px;
            }
            .enjoy-one .container > .row {
        display: flex !important;
        flex-direction: column !important;
    }

    /* IMAGE COLUMN */
    .enjoy-one .container > .row > .col-lg-7 {
        order: 2 !important;
    }

    /* CONTENT COLUMN */
    .enjoy-one .container > .row > .col-lg-5 {
        order: 1 !important;
    }
    .vinayaka-about-desktop {
        display: block !important;
    }

    /* Hide mobile version */
    .vinayaka-about-mobile {
        display: none !important;
    }



        }


     

        /* ---------- 767px (mobile) ---------- */
        @media (max-width: 767px) {
            .vt-section {
                padding: 32px 5%;
            }

            .vt-banner {
                padding: 36px 5%;
            }

            .vt-banner h1 {
                font-size: 26px;
                line-height: 1.3;
            }

            .vt-banner p {
                font-size: 14.5px;
                max-width: 100%;
            }

            .vt-banner-stats {
                gap: 16px;
            }

            .vt-banner-stats div strong {
                font-size: 19px;
            }

            .vt-quote-form {
                padding: 18px;
            }

            .vt-form-row {
                flex-direction: column;
                gap: 0;
            }

            .vt-row-text h2,
            .vt-heading-center h2,
            .section-title__title {
                font-size: 24px;
            }

            .vt-heading-center {
                margin-bottom: 28px;
            }

            .vt-features-grid,
            .vt-blogs-grid {
                grid-template-columns: 1fr;
            }

            .vt-cta {
                padding: 36px 20px 28px;
                border-radius: 16px;
            }

            .vt-cta h2 {
                font-size: 22px;
            }

            .vt-cta-features {
                grid-template-columns: 1fr 1fr;
                gap: 16px;
            }

            .vt-btn-outline {
                margin-left: 0;
                margin-top: 12px;
            }

            .vt-testimonial-card {
                flex: 0 0 min(240px, 82vw);
                padding: 20px 18px;
            }

            .vt-blog-card {
                flex: 0 0 min(280px, 82vw);
            }

            .car-brands__title .fleet-info {
                flex-wrap: wrap;
                gap: 6px 10px;
            }

            .car-brands__title .fleet-info .fleet-desc {
                white-space: normal;
                flex: 1 1 100%;
            }

            /* Blogs + testimonials: arrows together under the track */
            .vt-blogs-wrap,
            .vt-testimonial-wrap {
                flex-wrap: wrap;
                justify-content: center;
                gap: 12px;
            }

            .vt-blogs-track,
            .vt-testimonial-track {
                order: 1;
                flex: 1 1 100%;
            }

            .vt-blogs-prev,
            .vt-testimonial-prev {
                order: 2;
                position: static;
                transform: none;
                width: 40px;
                height: 40px;
                font-size: 18px;
            }

            .vt-blogs-next,
            .vt-testimonial-next {
                order: 3;
                position: static;
                transform: none;
                width: 40px;
                height: 40px;
                font-size: 18px;
            }

            .vt-testimonial-dots {
                display: none;
            }

            /* Our Clients: hide dots, park arrows together at the bottom */
            .team-carousel-page .carousel-dot-style.owl-carousel .owl-dots,
            .team-carousel-page .owl-carousel .owl-dots {
                display: none !important;
                visibility: hidden !important;
                height: 0 !important;
                margin: 0 !important;
                overflow: hidden !important;
            }

            .team-carousel-page .carousel-dot-style.owl-carousel .owl-stage-outer {
                overflow: hidden;
            }

            .team-carousel-page .carousel-dot-style.owl-carousel .owl-nav,
            .team-carousel-page .owl-carousel .owl-nav {
                position: static !important;
                display: flex !important;
                justify-content: center;
                align-items: center;
                gap: 12px;
                margin-top: 18px;
                width: 100%;
                transform: none !important;
            }

            .team-carousel-page .carousel-dot-style.owl-carousel .owl-nav .owl-prev,
            .team-carousel-page .carousel-dot-style.owl-carousel .owl-nav .owl-next,
            .team-carousel-page .owl-carousel .owl-prev,
            .team-carousel-page .owl-carousel .owl-next {
                position: static !important;
                inset: auto !important;
                top: auto !important;
                left: auto !important;
                right: auto !important;
                float: none !important;
                margin: 0 !important;
                width: 40px;
                height: 40px;
                min-inline-size: 40px;
                min-block-size: 40px;
                border-radius: 8px;
                display: inline-flex !important;
                align-items: center;
                justify-content: center;
            }

            .team-carousel-page .owl-carousel .owl-prev {
                transform: rotate(180deg) !important;
            }

            .team-carousel-page .owl-carousel .owl-next {
                transform: none !important;
            }

             .about-mobile-order {
        display: flex;
        flex-direction: column;
    }

    .about-mobile-order .about-content {
        order: 1 !important;
    }

    .about-mobile-order .about-image {
        order: 2 !important;
        margin-top: 25px;
    }
        }

        /* ---------- 567px ---------- */
        @media (max-width: 567px) {
            .vt-section {
                padding: 28px 4.5%;
            }

            .vt-banner {
                padding: 28px 4.5%;
            }

            .vt-banner h1 {
                font-size: 22px;
            }

            .vt-banner-eyebrow {
                font-size: 11.5px;
                letter-spacing: 2px;
            }

            .vt-banner-stats {
                gap: 12px 18px;
            }

            .vt-banner-stats div strong {
                font-size: 17px;
            }

            .vt-banner-stats div span {
                font-size: 11px;
            }

            .vt-quote-form {
                padding: 16px;
                border-radius: 14px;
            }

            .vt-quote-form h3 {
                font-size: 16px;
            }

            .vt-row-img {
                min-height: 200px;
            }

            .vt-row-text h2,
            .vt-heading-center h2,
            .section-title__title {
                font-size: 20px;
            }

            .vt-row-text p,
            .vt-heading-center p {
                font-size: 14px;
            }

            .vt-cta-features {
                grid-template-columns: 1fr;
            }

            .vt-cta-feature {
                gap: 10px;
            }

            .vt-testimonial-card {
                flex: 0 0 min(220px, 88vw);
            }

            .vt-blog-card {
                flex: 0 0 min(260px, 88vw);
            }

            .vt-faq-item summary {
                font-size: 15px;
                gap: 12px;
            }

            .team-one__title {
                font-size: 16px;
                line-height: 1.4;
            }

            .enjoy-one__btn-box .thm-btn {
                max-width: 100%;
            }
        }
        .team-one__car-details-btn-box {
            display: flex;
            justify-content: flex-start;
        }

        @media (max-width: 991px) {
            .team-one__car-details-btn-box {
                justify-content: center !important;
            }
             .vinayaka-about-desktop {
        display: none !important;
    }

    /* Show mobile version */
    .vinayaka-about-mobile {
        display: block !important;
        width: 100%;
    }

    /* Content first */
    .vinayaka-mobile-content {
        width: 100%;
        margin-bottom: 25px;
    }

    /* Image second */
    .vinayaka-mobile-image {
        width: 100%;
    }

    .vinayaka-about-mobile .enjoy-one__right {
        margin-top: 0 !important;
    }

    .vinayaka-about-mobile .enjoy-one__img img {
        width: 100%;
        height: auto;
        display: block;
    }
        }

        /* =========================
   MOBILE MAIN BANNER FIX
========================= */
@media only screen and (max-width: 767px) {

    .main-slider,
    .main-slider .main-slider__carousel,
    .main-slider .owl-stage-outer,
    .main-slider .owl-stage,
    .main-slider .owl-item,
    .main-slider .owl-item .item {
        width: 100% !important;
        height: 420px !important;
        min-height: 420px !important;
    }

    .main-slider .main-slider__carousel {
        display: block !important;
    }

    .main-slider .main-slider__bg {
        position: absolute !important;
        top: 0;
        left: 0;
        width: 100% !important;
        height: 100% !important;
        min-height: 420px !important;
        background-size: cover !important;
        background-position: center center !important;
        background-repeat: no-repeat !important;
        display: block !important;
        visibility: visible !important;
        opacity: 1 !important;
    }

    .main-slider .item {
        position: relative !important;
        overflow: hidden !important;
    }

    .main-slider .main-slider__overly {
        position: absolute !important;
        inset: 0;
        z-index: 1;
    }

    .main-slider .container {
        position: relative !important;
        z-index: 2;
        height: 100%;
    }

    .main-slider .main-slider__content {
        position: relative !important;
        z-index: 3;
        padding-top: 130px !important;
    }

    .main-slider .main-slider__title {
        font-size: 28px !important;
        line-height: 1.25 !important;
    }
}


/* DESKTOP */
.vinayaka-about-desktop {
    display: block !important;
    background: #cfecff;
    padding: 70px 0;
}

.vinayaka-about-mobile {
    display: none !important;
}


/* MOBILE */
@media (max-width: 991px) {

    /* HIDE DESKTOP COMPLETELY */
    .vinayaka-about-desktop {
        display: none !important;
    }

    /* SHOW MOBILE ONLY */
    .vinayaka-about-mobile {
        display: block !important;
        background: #cfecff;
        padding: 40px 0;
    }

    /* FIRST - CONTENT */
    .vinayaka-about-mobile .enjoy-one__right {
        margin: 0 !important;
    }

    /* SECOND - IMAGE */
    .vinayaka-about-mobile .vinayaka-mobile-image {
        margin-top: 25px !important;
    }

    .vinayaka-about-mobile .enjoy-one__img img {
        width: 100% !important;
        height: auto !important;
        display: block !important;
    }
}

/* ABOUT SECTION */
.vt-home-about-desktop {
    display: block !important;
    background: #cfecff !important;
    padding: 70px 0 !important;
}

.vt-home-about-mobile {
    display: none !important;
}

/* MOBILE */
@media (max-width: 991px) {

    .vt-home-about-desktop {
        display: none !important;
    }

    .vt-home-about-mobile {
        display: block !important;
        background: #cfecff !important;
        padding: 40px 0 !important;
    }

    .vt-home-about-mobile-content {
        width: 100% !important;
        margin-bottom: 25px !important;
    }

    .vt-home-about-mobile-image {
        width: 100% !important;
    }

    .vt-home-about-mobile-image img {
        display: block !important;
        width: 100% !important;
        height: auto !important;
    }
}


    </style>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- ================= BANNER ================= -->
    <section class="vt-banner" id="bannerSection" runat="server">
        <div class="vt-banner-wrap">
            <div class="vt-banner-left">
                <span class="vt-banner-eyebrow">Vinayaka Travels</span>
                <h1 class="hw">
                    <asp:Literal ID="litBannerTitle" runat="server"></asp:Literal></h1>
                <p>
                    <asp:Literal ID="litBannerDesc" runat="server"></asp:Literal>
                </p>

                <div class="vt-banner-stats">
                    <div><strong>22+</strong><span>Years of Service</span></div>
                    <div><strong>500+</strong><span>Corporate Clients</span></div>
                    <div><strong>50+</strong><span>Fleet Vehicles</span></div>
                </div>
            </div>




            <div class="vt-banner-right">
                <div class="vt-quote-form">
                    <h3>Get a Free Quote</h3>
                    <p class="vt-form-sub">Fill in your trip details and our team will get back to you shortly.</p>
                    <div id="bannerQuoteForm">
                        <div class="vt-form-row">
                            <div class="vt-form-group">
                                <label>Full Name</label>
                                <asp:TextBox runat="server" ID="txtQuoteName" TextMode="SingleLine" placeholder="Your name" onkeypress="return onlyAlpha(event)" MaxLength="50" />
                            </div>
                            <div class="vt-form-group">
                                <label>Phone Number</label>
                                <asp:TextBox runat="server" ID="txtQuotePhone" TextMode="SingleLine" placeholder="+91 00000 00000" onkeypress="return onlyNumber(event)" MaxLength="10" />

                            </div>
                        </div>
                        <div class="vt-form-row">
                            <div class="vt-form-group">
                                <label>Email</label>
                                <asp:TextBox runat="server" ID="txtQuoteEmail" TextMode="SingleLine" placeholder="you@example.com" />
                            </div>
                            <div class="vt-form-group">
                                <label>Pickup Location</label>
                                <asp:TextBox runat="server" ID="txtQuotePickup" TextMode="SingleLine" placeholder="e.g. HAL III Stage" />
                            </div>
                        </div>
                        <div class="vt-form-row">
                            <div class="vt-form-group">
                                <label>Travel Date</label>
                                <asp:TextBox runat="server" ID="txtQuoteDate" TextMode="SingleLine" placeholder="dd-mmm-yyyy" CssClass="datepicker" ReadOnly="true" />
                            </div>
                            <div class="vt-form-group">
                                <label>Vehicle Type</label>
                                <asp:DropDownList runat="server" ID="ddlQuoteVehicle">
                                    <asp:ListItem Text="4 Seater Cab" Value="4 Seater Cab" />
                                    <asp:ListItem Text="6 Seater Cab" Value="6 Seater Cab" />
                                    <asp:ListItem Text="12 Seater" Value="12 Seater" />
                                    <asp:ListItem Text="21-26 Seater Bus" Value="21-26 Seater Bus" />
                                    <asp:ListItem Text="32-40 Seater Bus" Value="32-40 Seater Bus" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <asp:Button runat="server" ID="btnQuoteSubmit" Text="Request a Callback" CssClass="vt-btn vt-btn-primary" OnClick="btnQuoteSubmit_Click" CausesValidation="false" />
                        <asp:Label runat="server" ID="lblQuoteMsg" Style="display: block; margin-top: 10px; font-size: 13px;"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <!-- ================= COMPANY OVERVIEW ================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-row">
            <div class="vt-row-img" id="imgTitleSection" runat="server" style="background-image: url('assets/images/gallery/airport-transportation.jpg');"></div>
            <div class="vt-row-text">
                <h2>
                    <asp:Literal ID="litTitle" runat="server"></asp:Literal></h2>
                <p>
                    <asp:Literal ID="litDescription" runat="server"></asp:Literal>
                </p>
                <ul class="vt-points">
                    <li>Based in Bengaluru, serving Chennai &amp; Hyderabad</li>
                    <li>22+ years of dedicated people-logistics expertise</li>
                    <li>Trusted by 500+ corporate clients</li>
                    <li>Modern, well-maintained fleet of 50+ vehicles</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- ================= WHY CHOOSE US ================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-row reverse">
            <div class="vt-row-img" id="imgWhyChooseUs" runat="server" style="background-image: url('assets/images/gallery/about-us.jpeg');"></div>
            <div class="vt-row-text">

                <h2>
                    <asp:Literal ID="litWhyChooseUsTitle" runat="server"></asp:Literal></h2>
                <p>
                    <asp:Literal ID="litWhyChooseUsDesc" runat="server"></asp:Literal>
                </p>
                <ul class="vt-points">
                    <li>Well-maintained AC &amp; Non-AC fleet</li>
                    <li>Verified, professionally trained drivers</li>
                    <li>24/7 dispatch and live support</li>
                    <li>Serving Bengaluru, Chennai &amp; Hyderabad</li>
                </ul>
            </div>
        </div>
    </section>




    <!-- ================= WHY CHOOSE US - FEATURES (SECTION 3) ================= -->
    <section class="vt-section vt-section-light">
        <div class="vt-heading-center">

            <h2>
                <asp:Literal ID="litSection3Title" runat="server"></asp:Literal></h2>
            <p>
                <asp:Literal ID="litSection3Desc" runat="server"></asp:Literal>
            </p>
        </div>

        <div class="vt-features-grid">
            <asp:Repeater ID="rptSection3" runat="server">
                <ItemTemplate>
                    <div class="vt-feature-card">
                        <%--<div class="vt-feature-icon">&#10003;</div>--%>
                        <h4><%# Eval("Title") %></h4>
                        <p><%# Eval("Desc") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>


    </section>







    <!-- ================= OUR FLEET ================= -->
    <section class="car-brands">
        <style>
            .car-brands__content {
                padding: 14px 20px;
            }

            .car-brands__title .fleet-info {
                display: flex;
                align-items: center;
                gap: 10px;
                color: var(--gizmo-black);
                width: 100%;
                max-width: 100%;
                overflow: hidden;
            }

                .car-brands__title .fleet-info .fleet-name {
                    font-size: 14px;
                    font-weight: 700;
                    color: var(--vt-navy, #0b2b4c);
                    white-space: nowrap;
                    flex-shrink: 0;
                }

                .car-brands__title .fleet-info .fleet-desc {
                    font-size: 13.5px;
                    color: var(--vt-gray, #6b7580);
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    flex: 1 1 auto;
                    min-width: 0;
                }

                .car-brands__title .fleet-info .icon-angle-left {
                    flex-shrink: 0;
                    margin-left: auto;
                }

                    .car-brands__title .fleet-info .icon-angle-left::before {
                        content: none;
                    }
        </style>

        <div class="container">
            <div class="section-title text-center sec-title-animation animation-style1">
                <h2 class="section-title__title title-animation">Our Fleet</h2>
            </div>
            <div class="row">
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
                                    <span class="fleet-name">48 Seater</span>
                                    <span class="fleet-desc">AC &amp; NON AC Luxury Buses</span>
                                    <span class="icon-angle-left">&#8250;</span>
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
                                    <span class="fleet-name">40 Seater</span>
                                    <span class="fleet-desc">AC &amp; NON AC Luxury Buses</span>
                                    <span class="icon-angle-left">&#8250;</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Car Brands Single End-->

                <!--Car Brands Single Start-->
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
                                    <span class="fleet-name">7 Seater</span>
                                    <span class="fleet-desc">AC &amp; NON AC Cabs</span>
                                    <span class="icon-angle-left">&#8250;</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Car Brands Single End-->

                <!--Car Brands Single Start-->
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
                                    <span class="fleet-name">Electric</span>
                                    <span class="fleet-desc">Vehicles AC Cabs</span>
                                    <span class="icon-angle-left">&#8250;</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Car Brands Single End-->
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

   <!-- ================= DESKTOP ABOUT SECTION ================= -->
<section class="enjoy-one vinayaka-about-desktop">
    <div class="container">
        <div class="row">

            <!-- IMAGE FIRST -->
            <div class="col-lg-7 col-xl-7">
                <div class="enjoy-one__left">
                    <div class="enjoy-one__img">
                        <img src="assets/images/gallery/about-us.jpeg" alt="Vinayaka Travels">
                    </div>
                </div>
            </div>

            <!-- CONTENT SECOND -->
            <div class="col-lg-5 col-xl-5">
                <div class="enjoy-one__right">
                    <div class="enjoy-one__title-box">
                        <h3 class="enjoy-one__title">About Vinayaka Travels</h3>

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

<!-- DESKTOP ABOUT SECTION -->
<section class="vt-home-about-desktop">
    <div class="container">
        <div class="row">

            <!-- IMAGE FIRST -->
            <div class="col-lg-7 col-xl-7">
                <div class="vt-home-about-image-wrap">
                    <img src="assets/images/gallery/about-us.jpeg" alt="Vinayaka Travels">
                </div>
            </div>

            <!-- CONTENT SECOND -->
            <div class="col-lg-5 col-xl-5">
                <div class="vt-home-about-content-wrap">

                    <h3>About Vinayaka Travels</h3>

                    <p>
                        Vinayaka Travels is based out of Bengaluru - the Silicon city of India & we have extended our services to Chennai & Hyderabad.
                    </p>

                    <p>
                        In the Year 2002, the Company started a Staff transport services (People Logistics) operating to cater the demand of professional transport service provider.
                    </p>

                    <a href="about.aspx" class="vt-home-about-btn">Read more</a>

                </div>
            </div>

        </div>
    </div>
</section>


<!-- MOBILE ABOUT SECTION -->
<section class="vt-home-about-mobile">
    <div class="container">

      <div class="row">

    <!-- IMAGE -->
    <div class="col-12 col-lg-7 order-2 order-lg-1">
        <div class="vt-home-about-image-wrap">
            <img src="assets/images/gallery/about-us.jpeg" alt="Vinayaka Travels">
        </div>
    </div>

    <!-- CONTENT -->
    <div class="col-12 col-lg-5 order-1 order-lg-2">
        <div class="vt-home-about-content-wrap">

            <h3>About Vinayaka Travels</h3>

            <p>
                Vinayaka Travels is based out of Bengaluru - the Silicon city of India & we have extended our services to Chennai & Hyderabad.
            </p>

            <p>
                In the Year 2002, the Company started a Staff transport services (People Logistics) operating to cater the demand of professional transport service provider.
            </p>

            <a href="about.aspx" class="vt-home-about-btn">
                Read more
            </a>

        </div>
    </div>

</div>
    </div>
</section>
 
    <!-- ================= OUR SERVICES (from Default.aspx) ================= -->
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
        </div>
    </section>

    <!-- ================= OUR CLIENTS ================= -->
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

    <script>
        (function () {
            var track = document.getElementById('vtClientsTrack');
            var dots = document.querySelectorAll('#vtClientsDots .vt-dot');
            var prevBtn = document.querySelector('.vt-clients-prev');
            var nextBtn = document.querySelector('.vt-clients-next');
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

    <!-- ================= TESTIMONIALS ================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-heading-center">
            <span class="vt-tag">Testimonials</span>
            <h2>What Our Clients Say</h2>
            <p>Feedback from the corporates and travellers who ride with us every day.</p>
        </div>
        <div class="vt-testimonial-wrap">
            <button type="button" class="vt-testimonial-arrow vt-testimonial-prev" aria-label="Previous">&#8249;</button>

            <div class="vt-testimonial-track" id="vtTestimonialTrack">
                <asp:Repeater ID="rptTestimonials" runat="server">
                    <ItemTemplate>
                        <div class="vt-testimonial-card">
                            <div class="vt-testimonial-stars"><%# GetStars(Eval("Rating")) %></div>
                            <p><%# Eval("Desc") %></p>
                            <div class="vt-testimonial-person">
                                <div class="vt-avatar"><%# GetInitial(Eval("PersonName")) %></div>
                                <div>
                                    <strong><%# Eval("PersonName") %></strong>
                                    <span><%# Eval("Designation") %></span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <button type="button" class="vt-testimonial-arrow vt-testimonial-next" aria-label="Next">&#8250;</button>
        </div>

        <div class="vt-testimonial-dots" id="vtTestimonialDots">
            <span class="vt-dot active"></span>
            <span class="vt-dot"></span>
            <span class="vt-dot"></span>
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





    <!-- ================= CTA ================= -->
    <section class="vt-section vt-section-light">
        <div class="vt-cta">
            <div class="vt-cta-top">
                <div>
                    <h2>Ready to Book Your Next Ride?</h2>
                    <p>Get in touch for a free quote tailored to your transportation needs.</p>
                </div>
                <a href="contact.aspx" class="vt-btn vt-btn-primary">Get Started</a>
            </div>

            <div class="vt-cta-features">
                <div class="vt-cta-feature">
                    <div class="vt-cta-icon">&#9200;</div>
                    <div>
                        <strong>24 x 7 Support</strong>
                        <span>Round-the-clock dispatch &amp; help desk</span>
                    </div>
                </div>
                <div class="vt-cta-feature">
                    <div class="vt-cta-icon">&#128737;</div>
                    <div>
                        <strong>Verified Drivers</strong>
                        <span>Background-checked, trained professionals</span>
                    </div>
                </div>
                <div class="vt-cta-feature">
                    <div class="vt-cta-icon">&#9989;</div>
                    <div>
                        <strong>On-Time Guarantee</strong>
                        <span>Punctual pickups, every single trip</span>
                    </div>
                </div>
                <div class="vt-cta-feature">
                    <div class="vt-cta-icon">&#128181;</div>
                    <div>
                        <strong>Transparent Pricing</strong>
                        <span>No hidden charges, upfront quotes</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= RELATED BLOGS ================= -->
    <%--  <section class="vt-section vt-section-light">
        <div class="vt-heading-center">
            <span class="vt-tag">Our Blogs</span>
            <h2>Latest Travel Insights</h2>
            <p>Tips, updates, and stories from the Vinayaka Travels team.</p>
        </div>

        <div class="vt-blogs-grid">
            <asp:Repeater ID="rptMapBlogs" runat="server">
                <ItemTemplate>
                    <a class="vt-blog-card" href='<%# ResolveUrl("~/blog-details/" + Eval("BlogUrl")) %>'>
                        <div class="vt-blog-img-wrap">
                            <img src='<%# ResolveUrl("~/" + Eval("BlogImg")) %>' alt='<%# Eval("BlogTitle") %>' />
                            <span class="vt-blog-tag"><%# Eval("Category") %></span>
                        </div>
                        <div class="vt-blog-body">
                            <div class="vt-blog-meta">
                                <span>&#128197; <%# Convert.ToDateTime(Eval("PostedOn")).ToString("dd MMM yyyy") %></span>
                                <span>&#128100; <%# Eval("PostedBy") %></span>
                            </div>
                            <h4><%# Eval("BlogTitle") %></h4>
                        </div>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>--%>

    <!-- ================= RELATED BLOGS ================= -->
    <section class="vt-section vt-section-light">
        <div class="vt-heading-center">
            <span class="vt-tag">Our Blogs</span>
            <h2>Latest Travel Insights</h2>
            <p>Tips, updates, and stories from the Vinayaka Travels team.</p>
        </div>

        <div class="vt-blogs-wrap">
            <button type="button" class="vt-blogs-arrow vt-blogs-prev" aria-label="Previous">&#8249;</button>

            <div class="vt-blogs-track" id="vtBlogsTrack">
                <asp:Repeater ID="rptMapBlogs" runat="server">
                    <ItemTemplate>
                        <a class="vt-blog-card" href='<%# ResolveUrl("~/blogs/" + Eval("BlogUrl")) %>'>
                            <div class="vt-blog-img-wrap">
                                <img src='<%# ResolveUrl("~/" + Eval("BlogImg")) %>' alt='<%# Eval("BlogTitle") %>' />
                                <span class="vt-blog-tag"><%# Eval("Category") %></span>
                            </div>
                            <div class="vt-blog-body">
                                <div class="vt-blog-meta">
                                    <span>&#128197; <%# Convert.ToDateTime(Eval("PostedOn")).ToString("dd MMM yyyy") %></span>
                                    <span>&#128100; <%# Eval("PostedBy") %></span>
                                </div>
                                <h4><%# Eval("BlogTitle") %></h4>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <button type="button" class="vt-blogs-arrow vt-blogs-next" aria-label="Next">&#8250;</button>
        </div>
    </section>

    <script>
        (function () {
            var track = document.getElementById('vtBlogsTrack');
            var prevBtn = document.querySelector('.vt-blogs-prev');
            var nextBtn = document.querySelector('.vt-blogs-next');
            if (!track) { return; }

            function scrollByAmount(dir) {
                track.scrollBy({ left: dir * (track.clientWidth * 0.6), behavior: 'smooth' });
            }

            prevBtn.addEventListener('click', function () { scrollByAmount(-1); });
            nextBtn.addEventListener('click', function () { scrollByAmount(1); });
        })();
    </script>

    <!-- ================= FAQ ================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-heading-center">
            <span class="vt-tag">FAQs</span>
            <h2>Frequently Asked Questions</h2>
            <p>Answers to the questions we hear most often from clients.</p>
        </div>
        <div class="vt-faq-wrap">
            <asp:Repeater ID="rptFaqs" runat="server" OnItemDataBound="rptFaqs_ItemDataBound">
                <ItemTemplate>
                    <details class="vt-faq-item" id="faqItem" runat="server">
                        <summary><%# Eval("Title") %></summary>
                        <p><%# Eval("Desc") %></p>
                    </details>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>


    <script>
        $(document).ready(function () {
            $('.datepicker').datepicker({
                format: 'dd-M-yyyy',
                autoclose: true,          // closes the popup after picking a date
                todayHighlight: true,
                startDate: new Date(),    // disables all past dates
                orientation: 'auto'
            }).on('changeDate', function () {
                $(this).datepicker('hide');
            });
        });
    </script>


    <script>
        function onlyAlpha(e) {
            var code = (e.which) ? e.which : e.keyCode;
            if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122) || code === 32 || code === 8) {
                return true;
            }
            return false;
        }

        function onlyNumber(e) {
            var code = (e.which) ? e.which : e.keyCode;
            if (code >= 48 && code <= 57 || code === 8) {
                return true;
            }
            return false;
        }
    </script>

</asp:Content>