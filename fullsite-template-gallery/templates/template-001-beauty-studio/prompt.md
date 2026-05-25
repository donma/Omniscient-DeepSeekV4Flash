# Beauty Studio - AI Complete Website Generation Prompt

> This document is a complete website specification. Generate 12 full HTML pages with Bootstrap 5, SEO meta, Open Graph, and Schema.org structured data. Each page must be a complete, standalone HTML file.

---

## 1. Brand Information

- **Brand Name:** Beauty Studio
- **Industry:** 生活美業
- **Positioning:** 為美容沙龍、美甲工作室、美容美學品牌打造的優雅奶茶色形象網站。柔和溫暖的色調搭配簡潔大方的版面設計，完美呈現專業美感與品牌質感。
- **Visual Theme:** 奶茶色柔和
- **Layout Type:** 經典 Landing Page

## 2. Complete Color System

CSS Custom Properties (:root variables) - use these EXACT values:

- --primary: #c9a88e
- --primary-dark: #8c6e5d
- --font-serif: 'Noto Sans TC', serif
- --dark: #3d2b1f
- --bg-cream: #fdf8f5
- --secondary: #f5e6d3
- --light: #e8d5c4

## 3. Typography

- Chinese Font: Noto Sans TC via Google Fonts CDN
- Include font weights: 300, 400, 500, 700, 800, 900
- English/Numbers: Bootstrap 5 system default

## 4. Navigation Bar (Fixed-Top)

- **Brand Text:** Beauty Studio
- **Nav Items:** 關於, 服務, 課程介紹, 作品, 好評, FAQ, 預約, 流程, 部落格, 聯絡
- Mobile: Hamburger toggle button with Bootstrap collapse
- Breakpoint: navbar-expand-lg

## 5. Homepage (index.html) Structure

- **Hero Heading:** 綻放妳的 自然之美
- **Total Content Sections:** 7

  Section 1: [OUR PHILOSOPHY] 我們相信，美是一種態度
  Section 2: [OUR SERVICES] 專業服務項目
  Section 3: [WHY US] 為什麼選擇 Beauty Studio？
  Section 4: [TESTIMONIALS] 顧客真心好評
  Section 5: [OUR TEAM] 專業美學團隊
  Section 6: [FAQ] 常見問題
  Section 7: [LOCATION] 交通位置

- **Footer Columns:** Beauty Studio, 快速連結, 聯絡資訊, 追蹤我們
- **Social Icons:** Facebook, Instagram, Line (Bootstrap Icons)
- **Copyright:** 2026 Beauty Studio. All Rights Reserved.

## 6. All 12 Pages Overview

| Page | Filename | Description |
|------|----------|-------------|
| Home | index.html | Landing page with hero + sections |
| About | about.html | Brand story, team, milestones |
| Services | services.html | Service cards grid |
| Service Detail | service-detail.html | Single service deep dive |
| Portfolio | portfolio.html | Work showcase gallery |
| Reviews | reviews.html | Testimonial cards with stars |
| FAQ | faq.html | Accordion Q&A |
| Booking | booking.html | Appointment form |
| Process | process.html | Step-by-step flow diagram |
| Blog | blog.html | Article card grid |
| Blog Post | blog-detail.html | Full article with sidebar |
| Contact | contact.html | Contact form, map, hours |

## 7. SEO & Schema.org Requirements

**Every page MUST include:**
- Page-specific <title> tag
- Page-specific <meta name="description">
- <link rel="canonical"> placeholder
- Open Graph tags: og:title, og:description, og:image, og:type
- Twitter Card: summary_large_image
- Semantic HTML5: header, main, section, article, footer

**Homepage JSON-LD Schema:**
- Use appropriate type (LocalBusiness, Organization, Restaurant, MedicalBusiness)
- Include: name, address, telephone, url, logo, sameAs

## 8. Responsive Design (RWD)

- Bootstrap 5 grid (container > row > col-*)
- 3 columns -> 2 columns -> 1 column (col-lg-4 > col-md-6 > col-12)
- Mobile hamburger menu functional
- Images: max-width: 100%; height: auto
- Card images: object-fit: cover; height: 220px
- Section padding: 100px desktop, reduced on mobile

## 9. JavaScript Functionality (assets/js/main.js)

1. Smooth scroll for anchor links (href="#...")
2. Navbar shadow class on scroll > 50px
3. Form submit: preventDefault + alert thank-you message
4. Bootstrap JS bundle for components (collapse, accordion, modal)

## 10. Image Guidelines

- Use free-to-use Unsplash images
- Every image MUST have alt attribute (brand-relevant description)
- Hero images: unsplash.com/photo-XXXXX?w=1200
- Card images: unsplash.com/photo-XXXXX?w=600
- Team avatars: unsplash.com/photo-XXXXX?w=200

## 11. Required CDN Resources

```html
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400;500;700;800;900&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
```

## 12. Important Rules

- Each HTML file must be a complete, standalone document (not fragments)
- All internal links must correctly reference other pages (e.g., href="about.html")
- Forms must include HTML5 validation (required, type, placeholder attributes)
- Use REAL content - NEVER use Lorem Ipsum placeholder text
- Every page must have all SEO meta tags
- Homepage must include JSON-LD schema markup
- All images must have alt attributes
- Use semantic HTML5 elements throughout

---

Generate 12 complete, production-quality HTML files following this specification exactly.
