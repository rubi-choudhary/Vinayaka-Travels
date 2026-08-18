<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sitemap.aspx.cs" Inherits="sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="seoHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style>
        :root {
            --vt-navy: #0b2b4c;
            --vt-orange: #FD5B38;
            --vt-light: #f5f8fb;
            --vt-gray: #6b7580;
        }

        .vt-sitemap-banner {
            background: linear-gradient(120deg, rgba(7, 28, 51, 0.92) 0%, rgba(11, 43, 76, 0.85) 60%),
                        url('https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?auto=format&fit=crop&w=1600&q=80');
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 90px 8% 70px;
            text-align: center;
        }

        .vt-sitemap-banner h1 {
            font-size: 34px;
            font-weight: 700;
            margin: 0 0 10px;
            color: #fff;
        }

        .vt-sitemap-banner p {
            font-size: 15px;
            color: #d9e3ef;
            margin: 0;
        }

        .vt-sitemap-section {
            padding: 70px 8%;
            background: #fff;
        }

        .vt-sitemap-wrap {
            max-width: 1200px;
            margin: 0 auto;
        }

        .vt-sitemap-columns {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
        }

        .vt-sitemap-col {
            flex: 1 1 0;
            min-width: 260px;
        }

        .vt-sitemap-col-title {
            font-size: 18px;
            font-weight: 700;
            color: var(--vt-navy);
            margin: 0 0 18px;
            padding-bottom: 12px;
            border-bottom: 2px solid var(--vt-orange);
            display: inline-block;
        }

        .vt-sitemap-list {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .vt-sitemap-list li {
            border-bottom: 1px solid #e8edf3;
        }

        .vt-sitemap-list li:last-child {
            border-bottom: none;
        }

        .vt-sitemap-list a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 14px 4px;
            color: var(--vt-navy);
            font-size: 15px;
            font-weight: 600;
            text-decoration: none;
            transition: color 0.2s ease, padding-left 0.2s ease;
        }

        .vt-sitemap-list a:hover {
            color: var(--vt-orange);
            padding-left: 10px;
        }

        .vt-sitemap-list a::before {
            content: "\2192";
            color: var(--vt-orange);
            font-weight: 700;
            flex-shrink: 0;
        }

        .vt-sitemap-empty {
            color: var(--vt-gray);
            font-size: 14px;
            font-style: italic;
            padding: 10px 4px;
        }

        @media (max-width: 900px) {
            .vt-sitemap-columns {
                flex-direction: column;
                gap: 45px;
            }
        }

        @media (max-width: 700px) {
            .vt-sitemap-banner h1 {
                font-size: 26px;
            }

            .vt-sitemap-section {
                padding: 50px 6%;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="vt-sitemap-banner">
        <h1>Sitemap</h1>
        <p>Find your way around Vinayaka Travels</p>
    </section>

    <section class="vt-sitemap-section">
        <div class="vt-sitemap-wrap">
            <div class="vt-sitemap-columns">

                <!-- Column 1: Static Links -->
                <div class="vt-sitemap-col">
                    <h3 class="vt-sitemap-col-title">Quick Links</h3>
                    <ul class="vt-sitemap-list">
                        <li><a href="/">Home</a></li>
                        <li><a href="about.aspx">About Us</a></li>
                        <li><a href="services.aspx">Services</a></li>
                        <li><a href="fleets.aspx">Fleets</a></li>
                        <li><a href="gallery.aspx">Gallery</a></li>
                        <li><a href="booking.aspx">Book Now</a></li>
                        <li><a href="blogs.aspx">Blog</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                    </ul>
                </div>

                <!-- Column 2: Blogs (Dynamic) -->
                <div class="vt-sitemap-col">
                    <h3 class="vt-sitemap-col-title">Our Blogs</h3>
                    <asp:Repeater ID="rptBlogs" runat="server">
                        <HeaderTemplate><ul class="vt-sitemap-list"></HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <a href='<%# "/blogs/" + Eval("BlogUrl") %>'>
                                    <%# Eval("BlogTitle") %>
                                </a>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                    <asp:Literal ID="litNoBlogs" runat="server" Visible="false">
                        <div class="vt-sitemap-empty">No blogs available.</div>
                    </asp:Literal>
                </div>

                <!-- Column 3: Landing Pages (Dynamic) -->
                <div class="vt-sitemap-col">
                    <h3 class="vt-sitemap-col-title">Landing Pages</h3>
                    <asp:Repeater ID="rptLandingPages" runat="server">
                        <HeaderTemplate><ul class="vt-sitemap-list"></HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <a href='<%# "/" + Eval("Url") %>'>
                                    <%# Eval("Title") %>
                                </a>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                    <asp:Literal ID="litNoLandingPages" runat="server" Visible="false">
                        <div class="vt-sitemap-empty">No pages available.</div>
                    </asp:Literal>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsPlaceHolder" Runat="Server">
</asp:Content>