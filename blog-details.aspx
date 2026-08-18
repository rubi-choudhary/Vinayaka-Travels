<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog-details.aspx.cs" Inherits="blod_details" %>

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

        .hw {
            color: white;
        }

        /* ===== Detail Banner ===== */
        .vt-blog-banner {
            background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%), url('/assets/images/blog/NewDynamic/Blog-static-banner.png');
            background: linear-gradient(120deg, rgb(30 35 39 / 55%) 0%, rgb(0 0 0 / 63%) 60%), url(/assets/images/blog/NewDynamic/Blog-static-banner.png);
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 110px 8% 100px;
            min-height: 500px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
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
            font-size: 34px;
            font-weight: 700;
            margin: 0 auto 18px;
            max-width: 800px;
            line-height: 1.4;
        }

        .vt-blog-banner-desc {
            font-size: 16px;
            color: #d9e3ef;
            max-width: 640px;
            margin: 0 auto 26px;
            line-height: 1.7;
        }

        .vt-breadcrumb {
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
                backdrop-filter:blur(5px);
            }

        /* ===== Meta bar (in body, before article content) ===== */
        .vt-blog-meta-bar {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            gap: 96px;
            background: var(--vt-light);
            border-radius: 12px;
            padding: 18px 26px;
            margin-bottom: 34px;
        }
      

            .vt-blog-meta-bar .vt-meta-item {
                display: flex;
                align-items: center;
                gap: 10px;
                font-size: 13.5px;
                color: var(--vt-navy);
                font-weight: 600;
            }

            .vt-blog-meta-bar .vt-meta-icon {
                width: 34px;
                height: 34px;
                border-radius: 50%;
                background: rgba(253, 91, 56, 0.12);
                color: var(--vt-orange-dark);
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 15px;
                flex-shrink: 0;
            }

            .vt-blog-meta-bar .vt-meta-item span.vt-meta-label {
                display: block;
                font-size: 11px;
                color: var(--vt-gray);
                font-weight: 500;
                margin-bottom: 2px;
            }

        /* ===== Layout ===== */
        .vt-blog-detail-wrap {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            align-items: flex-start;
            gap: 46px;
        }

        .vt-blog-main {
            flex: 1;
            min-width: 0;
        }

        .vt-blog-featured-img {
            width: 100%;
            height: 380px;
            border-radius: 16px;
            background-size: cover;
            background-position: center;
            box-shadow: 0 15px 35px rgba(11, 43, 76, 0.15);
            margin-bottom: 34px;
        }

        .vt-blog-article h2 {
            color: var(--vt-navy);
            font-size: 25px;
            font-weight: 700;
            margin: 34px 0 16px;
        }

            .vt-blog-article h2:first-child {
                margin-top: 0;
            }

        .vt-blog-article p {
            color: var(--vt-gray);
            font-size: 15.5px;
            line-height: 1.85;
            margin: 0 0 20px;
        }

        .vt-blog-article ul.vt-blog-points {
            list-style: none;
            padding: 0;
            margin: 0 0 24px;
        }

            .vt-blog-article ul.vt-blog-points li {
                display: flex;
                align-items: flex-start;
                gap: 10px;
                margin-bottom: 12px;
                color: var(--vt-navy);
                font-size: 15px;
                font-weight: 500;
                line-height: 1.6;
            }

                .vt-blog-article ul.vt-blog-points li::before {
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
                    margin-top: 2px;
                }

        .vt-blog-quote {
            border-left: 4px solid var(--vt-orange);
            background: var(--vt-light);
            padding: 22px 26px;
            border-radius: 0 12px 12px 0;
            margin: 30px 0;
            color: var(--vt-navy);
            font-size: 16.5px;
            font-weight: 600;
            font-style: italic;
            line-height: 1.6;
        }

        .vt-blog-tags-share {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 18px;
            border-top: 1px solid #e3e9f0;
            border-bottom: 1px solid #e3e9f0;
            padding: 24px 0;
            margin: 36px 0;
        }

        .vt-blog-tags {
            display: flex;
            align-items: center;
            gap: 10px;
            flex-wrap: wrap;
        }

            .vt-blog-tags span.vt-blog-tags-label {
                font-weight: 700;
                color: var(--vt-navy);
                font-size: 14px;
            }

        .vt-blog-tag-pill {
            background: var(--vt-light);
            color: var(--vt-gray);
            font-size: 12.5px;
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 20px;
            text-decoration: none;
        }

            .vt-blog-tag-pill:hover {
                background: rgba(253, 91, 56, 0.12);
                color: var(--vt-orange-dark);
            }

        .vt-blog-share {
            display: flex;
            align-items: center;
            gap: 10px;
        }

            .vt-blog-share span {
                font-weight: 700;
                color: var(--vt-navy);
                font-size: 14px;
                margin-right: 4px;
            }

            .vt-blog-share a {
                width: 36px;
                height: 36px;
                border-radius: 50%;
                background: var(--vt-navy);
                color: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                text-decoration: none;
                font-size: 14px;
                transition: background 0.25s ease;
            }

                .vt-blog-share a:hover {
                    background: var(--vt-orange);
                }

        /* ===== Author box ===== */
        .vt-blog-author {
            display: flex;
            align-items: center;
            gap: 20px;
            background: var(--vt-light);
            border-radius: 16px;
            padding: 26px;
            margin-bottom: 40px;
        }

        .vt-blog-author-avatar {
            width: 66px;
            height: 66px;
            border-radius: 50%;
            background: var(--vt-navy);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
            font-size: 22px;
            flex-shrink: 0;
        }

        .vt-blog-author h4 {
            margin: 0 0 6px;
            color: var(--vt-navy);
            font-size: 16.5px;
            font-weight: 700;
        }

        .vt-blog-author p {
            margin: 0;
            color: var(--vt-gray);
            font-size: 14px;
            line-height: 1.6;
        }

        /* ===== Related posts ===== */
        .vt-blog-related h3 {
            color: var(--vt-navy);
            font-size: 22px;
            font-weight: 700;
            margin: 0 0 24px;
        }

        .vt-blog-related-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .vt-blog-related-card {
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 22px rgba(11, 43, 76, 0.06);
            transition: transform 0.25s ease;
        }

            .vt-blog-related-card:hover {
                transform: translateY(-5px);
            }

        .vt-blog-related-img {
            height: 140px;
            background-size: cover;
            background-position: center;
        }

        .vt-blog-related-body {
            padding: 16px 18px 20px;
        }

            .vt-blog-related-body span {
                font-size: 11.5px;
                color: var(--vt-orange-dark);
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: 0.4px;
            }

            .vt-blog-related-body h4 {
                font-size: 15px;
                color: var(--vt-navy);
                margin: 8px 0 0;
                font-weight: 700;
                line-height: 1.5;
            }

                .vt-blog-related-body h4 a {
                    color: var(--vt-navy);
                    text-decoration: none;
                }

                    .vt-blog-related-body h4 a:hover {
                        color: var(--vt-orange-dark);
                    }

        /* ===== Comment form ===== */
        .vt-blog-comment-form h3 {
            color: var(--vt-navy);
            font-size: 22px;
            font-weight: 700;
            margin: 0 0 20px;
        }

        .vt-blog-comment-form .vt-form-row {
            display: flex;
            gap: 16px;
            margin-bottom: 16px;
        }

        .vt-blog-comment-form .vt-form-group {
            flex: 1;
            margin-bottom: 16px;
        }

        .vt-blog-comment-form label {
            display: block;
            font-size: 13px;
            color: var(--vt-navy);
            margin-bottom: 6px;
            font-weight: 600;
        }

        .vt-blog-comment-form input,
        .vt-blog-comment-form textarea {
            width: 100%;
            padding: 12px 14px;
            border-radius: 8px;
            border: 1px solid #dde4ec;
            font-size: 14px;
            font-family: inherit;
            outline: none;
            box-sizing: border-box;
            background: #fff;
            color: var(--vt-navy);
        }

            .vt-blog-comment-form input:focus,
            .vt-blog-comment-form textarea:focus {
                border-color: var(--vt-orange);
            }

        /* ===== Sidebar ===== */
        .vt-blog-sidebar {
            flex: 0 0 340px;
        }

        .vt-sidebar-widget {
            background: #fff;
            border: 1px solid #e8edf3;
            border-radius: 14px;
            padding: 26px;
            margin-bottom: 28px;
            box-shadow: 0 8px 22px rgba(11, 43, 76, 0.06);
        }

            .vt-sidebar-widget h4 {
                color: var(--vt-navy);
                font-size: 17px;
                font-weight: 700;
                margin: 0 0 20px;
                padding-bottom: 14px;
                border-bottom: 2px solid var(--vt-light);
            }

        /* Quote widget */
        .vt-sidebar-quote {
            background: var(--vt-navy);
            border-radius: 16px;
            padding: 26px;
        }

            .vt-sidebar-quote h4 {
                color: #fff;
                border-bottom-color: rgba(255, 255, 255, 0.15);
            }

            .vt-sidebar-quote p {
                color: #c5d2e2;
                font-size: 13.5px;
                margin: 0 0 16px;
            }

            .vt-sidebar-quote .vt-form-group {
                margin-bottom: 12px;
            }

            .vt-sidebar-quote input {
                width: 100%;
                padding: 11px 13px;
                border-radius: 8px;
                border: 1px solid rgba(255, 255, 255, 0.18);
                background: rgba(255, 255, 255, 0.92);
                color: var(--vt-navy);
                font-size: 13.5px;
                outline: none;
                box-sizing: border-box;
                margin-bottom: 12px;
            }

            .vt-sidebar-quote .vt-btn-primary {
                width: 100%;
                text-align: center;
                margin-top: 4px;
            }

        /* Recent posts widget */
        .vt-sidebar-post {
            display: flex;
            gap: 14px;
            margin-bottom: 18px;
        }

            .vt-sidebar-post:last-child {
                margin-bottom: 0;
            }

        .vt-sidebar-post-img {
            width: 68px;
            height: 68px;
            border-radius: 10px;
            background-size: cover;
            background-position: center;
            flex-shrink: 0;
        }

        .vt-sidebar-post h5 {
            font-size: 13.5px;
            color: var(--vt-navy);
            font-weight: 700;
            margin: 0 0 6px;
            line-height: 1.45;
        }

            .vt-sidebar-post h5 a {
                color: var(--vt-navy);
                text-decoration: none;
            }

                .vt-sidebar-post h5 a:hover {
                    color: var(--vt-orange-dark);
                }

        .vt-sidebar-post span {
            font-size: 11.5px;
            color: var(--vt-gray);
        }

        /* Category widget */
        .vt-sidebar-cats {
            list-style: none;
            margin: 0;
            padding: 0;
        }

            .vt-sidebar-cats li {
                border-bottom: 1px solid #eef2f6;
            }

                .vt-sidebar-cats li:last-child {
                    border-bottom: none;
                }

            .vt-sidebar-cats a {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 12px 2px;
                color: var(--vt-gray);
                text-decoration: none;
                font-size: 14px;
                font-weight: 500;
                transition: color 0.2s ease;
            }

                .vt-sidebar-cats a:hover {
                    color: var(--vt-orange-dark);
                }

                .vt-sidebar-cats a span.vt-cat-count {
                    background: var(--vt-light);
                    color: var(--vt-navy);
                    font-size: 11.5px;
                    font-weight: 700;
                    padding: 3px 10px;
                    border-radius: 12px;
                }

        /* Tag cloud widget */
        .vt-sidebar-tagcloud {
            display: flex;
            flex-wrap: wrap;
            gap: 9px;
        }

        @media (max-width: 992px) {
            .vt-blog-detail-wrap {
                flex-direction: column;
            }

            .vt-blog-sidebar {
                flex: none;
                width: 100%;
            }

            .vt-blog-related-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 700px) {
            .vt-blog-banner {
                min-height: 320px;
                padding: 80px 8% 70px;
            }

            .vt-blog-featured-img {
                height: 220px;
            }

            .vt-blog-related-grid {
                grid-template-columns: 1fr;
            }

            .vt-blog-comment-form .vt-form-row {
                flex-direction: column;
                gap: 0;
            }

            .vt-blog-banner h1 {
                font-size: 24px;
            }

            .vt-blog-tags-share {
                flex-direction: column;
                align-items: flex-start;
            }

            .vt-blog-meta-bar {
                gap: 16px;
                padding: 16px;
            }
        }
    </style>


    <%-- responsive--%>


    <style>
        /* =====================================================
       RESPONSIVE OVERRIDES — 1366 / 1200 / 1199 / 992 / 767 / 567
       (CSS only — no markup/functionality changes)
    ===================================================== */

        /* ---------- 1366px and below ---------- */
        @media (max-width: 1366px) {
            .vt-blog-detail-wrap {
                gap: 36px;
            }

            .vt-blog-sidebar {
                flex: 0 0 300px;
            }

            .vt-blog-banner {
                padding: 100px 8% 90px;
            }
        }

        /* ---------- 1200px and below ---------- */
        @media (max-width: 1200px) {
            .vt-section {
                padding: 60px 5%;
            }

            .vt-blog-banner {
                padding: 90px 5% 80px;
            }

            .vt-blog-detail-wrap {
                gap: 30px;
            }

            .vt-blog-sidebar {
                flex: 0 0 280px;
            }

            .vt-blog-featured-img {
                height: 340px;
            }
        }

        /* ---------- 1199px and below ---------- */
        @media (max-width: 1199px) {
            .vt-blog-banner h1 {
                font-size: 30px;
            }

            .vt-blog-meta-bar {
                gap: 20px;
                padding: 16px 20px;
            }

            .vt-blog-related-grid {
                gap: 18px;
            }
        }

        /* ---------- 992px and below ---------- */
        @media (max-width: 992px) {
            .vt-blog-detail-wrap {
                flex-direction: column;
            }

            .vt-blog-sidebar {
                flex: none;
                width: 100%;
            }

            .vt-blog-related-grid {
                grid-template-columns: 1fr 1fr;
            }

            .vt-blog-featured-img {
                height: 300px;
            }

            .vt-blog-banner h1 {
                font-size: 28px;
            }
        }

        /* ---------- 767px and below ---------- */
        @media (max-width: 767px) {
            .vt-section {
                padding: 45px 6%;
            }

            .vt-blog-banner {
                min-height: 320px;
                padding: 80px 6% 70px;
            }

                .vt-blog-banner h1 {
                    font-size: 24px;
                }

            .vt-blog-banner-desc {
                font-size: 14.5px;
            }

            .vt-blog-featured-img {
                height: 220px;
            }

            .vt-blog-article h2 {
                font-size: 21px;
            }

            .vt-blog-article p {
                font-size: 14.5px;
            }

            .vt-blog-related-grid {
                grid-template-columns: 1fr;
            }

            .vt-blog-comment-form .vt-form-row {
                flex-direction: column;
                gap: 0;
            }

            .vt-blog-tags-share {
                flex-direction: column;
                align-items: flex-start;
            }

            .vt-blog-meta-bar {
                gap: 16px;
                padding: 16px;
            }

            .vt-blog-author {
                flex-direction: column;
                text-align: center;
                padding: 22px;
            }
        }

        /* ---------- 567px and below ---------- */
        @media (max-width: 567px) {
            .vt-blog-banner h1 {
                font-size: 20px;
            }

            .vt-blog-banner-eyebrow {
                font-size: 11.5px;
            }

            .vt-breadcrumb {
                font-size: 12px;
            }

            .vt-blog-featured-img {
                height: 180px;
                border-radius: 12px;
            }

            .vt-blog-article h2 {
                font-size: 19px;
                margin: 26px 0 12px;
            }

            .vt-blog-quote {
                padding: 18px 20px;
                font-size: 15px;
            }

            .vt-meta-item {
                font-size: 12.5px;
            }

            .vt-blog-meta-bar .vt-meta-icon {
                width: 30px;
                height: 30px;
                font-size: 13px;
            }

            .vt-sidebar-widget {
                padding: 20px;
            }

            .vt-sidebar-post-img {
                width: 56px;
                height: 56px;
            }

            .vt-blog-related-body {
                padding: 14px 16px 16px;
            }
        }

        .vt-blog-article h1 {
            color: var(--vt-navy);
            font-size: 28px;
            font-weight: 700;
            margin: 10px 0 16px;
            letter-spacing: normal;
            line-height: 34px
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="secBanner" runat="server" class="vt-blog-banner">
        <span id="lblBannerEyebrow" runat="server" class="vt-blog-banner-eyebrow">Corporate Travel</span>
        <h1 id="lblBannerTitle" runat="server" class="hw">5 Reasons Businesses Are Switching to Managed Employee Transport</h1>
        <p id="lblBannerDesc" runat="server" class="vt-blog-banner-desc">A look at why more Bengaluru companies are consolidating employee commutes with a single, contracted mobility partner instead of ad-hoc cab bookings.</p>
        <div class="vt-breadcrumb">
            <a href="Default2.aspx">Home</a> &nbsp;/&nbsp; <a href="blogs.aspx">Blog</a> &nbsp;/&nbsp; <span id="lblBreadcrumb" runat="server">Managed Employee Transport</span>
        </div>
    </section>

    <section class="vt-section vt-section-white">
        <div class="vt-blog-detail-wrap">

            <div class="vt-blog-main">
                <div class="vt-blog-meta-bar">
                    <div class="vt-meta-item">
                        <div class="vt-meta-icon">&#128100;</div>
                        <div>
                            <span class="vt-meta-label">Written by</span>
                            <span id="lblAuthor" runat="server">Admin</span>
                        </div>
                    </div>
                    <div class="vt-meta-item">
                        <div class="vt-meta-icon">&#128197;</div>
                        <div>
                            <span class="vt-meta-label">Posted on</span>
                            <span id="lblPostedOn" runat="server">12 Jul 2026</span>
                        </div>
                    </div>
                    <div class="vt-meta-item">
                        <div class="vt-meta-icon">&#128193;</div>
                        <div>
                            <span class="vt-meta-label">Category</span>
                            <span id="lblCategory" runat="server">Corporate Travel</span>
                        </div>
                    </div>
                    <%--<div class="vt-meta-item">
                        <div class="vt-meta-icon">&#8987;</div>
                        <div>
                            <span class="vt-meta-label">Time to read</span>
                            <span id="lblReadTime" runat="server">6 min read</span>
                        </div>
                    </div>--%>
                </div>

                <div id="divFeaturedImg" runat="server" class="vt-blog-featured-img" style="background-image: url('assets/images/gallery/airport-transportation.jpg');"></div>

                <div class="vt-blog-article">
                    <asp:Literal ID="ltArticleBody" runat="server" Mode="PassThrough"></asp:Literal>
                </div>


            </div>
            <aside class="vt-blog-sidebar">

                <div class="vt-sidebar-widget">
                    <h4>Recent Posts</h4>
                    <asp:Repeater ID="rptRecentPosts" runat="server" OnItemDataBound="rptRecentPosts_ItemDataBound">
                        <ItemTemplate>
                            <div class="vt-sidebar-post">
                                <div id="imgRecent" runat="server" class="vt-sidebar-post-img" style="background-image: url('assets/images/gallery/40seater.jpg');"></div>
                                <div>
                                    <h5><a id="aRecent" runat="server" href="blod-details.aspx">A Quick Guide to Planning Stress-Free Outstation Group Trips</a></h5>
                                    <span id="spnRecent" runat="server">02 Jun 2026</span>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


            </aside>
        </div>
    </section>
</asp:Content>
