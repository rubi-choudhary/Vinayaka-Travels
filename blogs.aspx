<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="seoHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">

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
            padding: 70px 8%;
        }

        .vt-section-light {
            background: var(--vt-light);
        }

        .vt-section-white {
            background: #ffffff;
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
            border: none;
            cursor: pointer;
        }

            .vt-btn-primary:hover {
                background: var(--vt-orange-dark);
                color: #fff;
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

        .hw {
            color: white;
        }

        /* ===== Blog Banner ===== */
        .vt-blog-banner {
            background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?auto=format&fit=crop&w=1600&q=80');
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 70px 8% 60px;
            text-align: center;
        }

        .vt-blog-banner {
            padding: 70px 8% 60px;
            min-height: 500px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .vt-blog-banner-eyebrow {
            display: inline-block;
            letter-spacing: 3px;
            text-transform: uppercase;
            font-size: 13px;
            font-weight: 600;
            color: var(--vt-orange);
            margin-bottom: 16px;
        }

        .vt-blog-banner h1 {
            font-size: 38px;
            font-weight: 700;
            margin: 0 0 14px;
        }

        .vt-blog-banner p {
            font-size: 16px;
            color: #d9e3ef;
            max-width: 560px;
            margin: 0 auto;
            line-height: 1.65;
        }

        .vt-breadcrumb {
            margin-top: 22px;
            font-size: 13.5px;
            color: #c5d2e2;
        }

            .vt-breadcrumb a {
                color: #c5d2e2;
                text-decoration: none;
            }

                .vt-breadcrumb a:hover {
                    color: var(--vt-orange);
                }

            .vt-breadcrumb span {
                color: var(--vt-orange);
            }

        /* ===== Blog Grid ===== */
        .vt-blog-grid-wrap {
            max-width: 1200px;
            margin: 0 auto;
        }

        .vt-blog-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 34px;
        }

        .vt-blog-card {
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 14px;
            overflow: hidden;
            box-shadow: 0 10px 26px rgba(11, 43, 76, 0.07);
            transition: transform 0.25s ease, box-shadow 0.25s ease;
            display: flex;
            flex-direction: column;
        }

            .vt-blog-card:hover {
                transform: translateY(-6px);
                box-shadow: 0 18px 36px rgba(11, 43, 76, 0.14);
            }

        .vt-blog-card-img {
            height: 210px;
            background-size: cover;
            background-position: center;
            position: relative;
        }

        .vt-blog-card-cat {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--vt-orange);
            color: #fff;
            font-size: 11.5px;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            padding: 6px 13px;
            border-radius: 20px;
        }

        .vt-blog-card-body {
            padding: 24px 22px 26px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .vt-blog-card-meta {
            display: flex;
            align-items: center;
            gap: 16px;
            font-size: 12.5px;
            color: var(--vt-gray);
            margin-bottom: 14px;
        }

            .vt-blog-card-meta span {
                display: flex;
                align-items: center;
                gap: 6px;
            }

        .vt-blog-card-body h3 {
            font-size: 18.5px;
            color: var(--vt-navy);
            font-weight: 700;
            margin: 0 0 12px;
            line-height: 1.4;
        }

            .vt-blog-card-body h3 a {
                color: var(--vt-navy);
                text-decoration: none;
            }

                .vt-blog-card-body h3 a:hover {
                    color: var(--vt-orange-dark);
                }

        .vt-blog-card-body p {
            color: var(--vt-gray);
            font-size: 14px;
            line-height: 1.65;
            margin: 0 0 18px;
            flex: 1;
        }

        .vt-blog-card-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: var(--vt-orange-dark);
            font-weight: 700;
            font-size: 13.5px;
            text-decoration: none;
        }

            .vt-blog-card-link span {
                transition: transform 0.25s ease;
            }

            .vt-blog-card-link:hover span {
                transform: translateX(4px);
            }

        .vt-blog-pagination {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 50px;
        }

            .vt-blog-pagination a {
                width: 42px;
                height: 42px;
                border-radius: 8px;
                border: 1px solid #e3e9f0;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--vt-navy);
                font-weight: 600;
                font-size: 14px;
                text-decoration: none;
                transition: all 0.25s ease;
            }

                .vt-blog-pagination a.active,
                .vt-blog-pagination a:hover {
                    background: var(--vt-orange);
                    border-color: var(--vt-orange);
                    color: #fff;
                }

        /* ===== Newsletter CTA ===== */
        .vt-blog-cta {
            background: linear-gradient(135deg, var(--vt-navy-dark), var(--vt-navy));
            border-radius: 20px;
            max-width: 1180px;
            margin: 0 auto;
            padding: 50px 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 26px;
            position: relative;
            overflow: hidden;
        }

            .vt-blog-cta::before {
                content: "";
                position: absolute;
                top: -50px;
                left: -50px;
                width: 200px;
                height: 200px;
                background: rgba(253, 91, 56, 0.15);
                border-radius: 50%;
            }

        .vt-blog-cta-text {
            position: relative;
            z-index: 1;
            max-width: 520px;
        }

            .vt-blog-cta-text h2 {
                color: #fff;
                font-size: 26px;
                font-weight: 700;
                margin: 0 0 8px;
            }

            .vt-blog-cta-text p {
                color: #cbd7e6;
                font-size: 15px;
                margin: 0;
            }

        .vt-blog-cta-form {
            position: relative;
            z-index: 1;
            display: flex;
            gap: 10px;
        }

            .vt-blog-cta-form input {
                padding: 13px 16px;
                border-radius: 30px;
                border: 1px solid rgba(255, 255, 255, 0.2);
                background: rgba(255, 255, 255, 0.92);
                font-size: 14px;
                width: 260px;
                outline: none;
            }

        @media (max-width: 992px) {
            .vt-blog-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 700px) {
            .vt-blog-grid {
                grid-template-columns: 1fr;
            }

            .vt-blog-cta {
                flex-direction: column;
                text-align: center;
            }

            .vt-blog-cta-form {
                width: 100%;
            }

                .vt-blog-cta-form input {
                    width: 100%;
                }

            .vt-blog-banner h1 {
                font-size: 28px;
            }
        }
    </style>


   <%-- Responsive --%>


    <style>
    /* =====================================================
       RESPONSIVE OVERRIDES — 1366 / 1200 / 1199 / 992 / 767 / 567
       (CSS only — no markup/functionality changes)
    ===================================================== */

    /* ---------- 1366px and below ---------- */
    @media (max-width: 1366px) {
        .vt-blog-cta {
            padding: 45px 40px;
        }
        .vt-blog-banner {
            min-height: 440px;
        }
    }

    /* ---------- 1200px and below ---------- */
    @media (max-width: 1200px) {
        .vt-section {
            padding: 60px 5%;
        }
        .vt-blog-banner {
            padding: 60px 5% 50px;
        }
        .vt-blog-grid {
            gap: 26px;
        }
        .vt-blog-cta {
            max-width: 100%;
        }
    }

    /* ---------- 1199px and below ---------- */
    @media (max-width: 1199px) {
        .vt-blog-banner h1 {
            font-size: 33px;
        }
        .vt-blog-card-img {
            height: 190px;
        }
        .vt-blog-cta-form input {
            width: 220px;
        }
    }

    /* ---------- 992px and below ---------- */
    @media (max-width: 992px) {
        .vt-blog-grid {
            grid-template-columns: repeat(2, 1fr);
        }
        .vt-blog-banner {
            min-height: 380px;
        }
        .vt-blog-cta {
            padding: 40px 32px;
        }
        .vt-blog-cta-form input {
            width: 200px;
        }
    }

    /* ---------- 767px and below ---------- */
    @media (max-width: 767px) {
        .vt-section {
            padding: 45px 6%;
        }
        .vt-blog-banner {
            padding: 50px 6% 40px;
            min-height: 320px;
        }
        .vt-blog-banner h1 {
            font-size: 26px;
        }
        .vt-blog-banner p {
            font-size: 14.5px;
        }
        .vt-heading-center h2 {
            font-size: 24px;
        }
        .vt-blog-grid {
            grid-template-columns: 1fr;
            gap: 22px;
        }
        .vt-blog-card-img {
            height: 210px;
        }
        .vt-blog-cta {
            flex-direction: column;
            text-align: center;
            padding: 36px 24px;
        }
        .vt-blog-cta-form {
            width: 100%;
        }
        .vt-blog-cta-form input {
            width: 100%;
        }
        .vt-blog-pagination a {
            width: 38px;
            height: 38px;
            font-size: 13px;
        }
    }

    /* ---------- 567px and below ---------- */
    @media (max-width: 567px) {
        .vt-blog-banner h1 {
            font-size: 22px;
        }
        .vt-blog-banner-eyebrow {
            font-size: 11.5px;
        }
        .vt-breadcrumb {
            font-size: 12px;
        }
        .vt-heading-center h2 {
            font-size: 20px;
        }
        .vt-heading-center p {
            font-size: 14px;
        }
        .vt-blog-card-body {
            padding: 20px 18px 22px;
        }
        .vt-blog-card-body h3 {
            font-size: 16.5px;
        }
        .vt-blog-cta-text h2 {
            font-size: 22px;
        }
        .vt-blog-pagination {
            gap: 6px;
            margin-top: 34px;
        }
        .vt-blog-pagination a {
            width: 34px;
            height: 34px;
            font-size: 12.5px;
        }
    }
</style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- ================= BANNER ================= -->
    <section class="vt-blog-banner">
        <span class="vt-blog-banner-eyebrow">Vinayaka Travels</span>
        <h1 class="hw">Our Blog &amp; Travel Insights</h1>
        <p>Tips, updates and stories on corporate mobility, safe travel and everything happening at Vinayaka Travels.</p>
        <div class="vt-breadcrumb">
            <a href="Default2.aspx">Home</a> &nbsp;/&nbsp; <span>Blog</span>
        </div>
    </section>

    <!-- ================= BLOG GRID ================= -->
    <section class="vt-section vt-section-white">
        <div class="vt-heading-center">
            <span class="vt-tag">Our Blog</span>
            <h2>Latest Articles &amp; Updates</h2>
            <p>Stay informed with the latest news, tips and stories from the world of corporate travel.</p>
        </div>

     


        <div class="vt-blog-grid-wrap">
    <div class="vt-blog-grid" id="blogGrid">
        <!-- cards injected here by jquery -->
    </div>

    <!-- Pagination -->
    <div class="vt-blog-pagination" id="blogPagination">
        <!-- page links injected here by jquery -->
    </div>
</div>


    </section>

  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsPlaceHolder" runat="Server">
    <script src="assets/js/Pages/blogs.js"></script>
</asp:Content>