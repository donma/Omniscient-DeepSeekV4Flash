# Yoga Studio - AI Complete Website Generation Prompt

> This document is a complete website specification. Generate 12 full HTML pages with Bootstrap 5, SEO meta, Open Graph, and Schema.org structured data. Each page must be a complete, standalone HTML file.

---

## 1. Brand Information

- **Brand Name:** Yoga Studio
- **Industry:** 美容健康
- **Positioning:** 適合瑜珈工作室的靜謐品牌官網，傳遞身心平衡理念。
- **Visual Theme:** 米白綠安靜自然
- **Layout Type:** 瑜珈姿勢

## 2. Complete Color System

CSS Custom Properties (:root variables) - use these EXACT values:

- --c3: #7a9a5a
- --c4: #4a6a3a
- --c2: #e0e8d0
- --c5: #2a3a1a
- --c1: #f0f5ea

## 3. Typography

- Chinese Font: Noto Sans TC via Google Fonts CDN
- Include font weights: 300, 400, 500, 700, 800, 900
- English/Numbers: Bootstrap 5 system default

## 4. Navigation Bar (Fixed-Top)

- **Brand Text:** Yoga Studio
- **Nav Items:** Home, About, Services, Portfolio, Blog, Contact
- Mobile: Hamburger toggle button with Bootstrap collapse
- Breakpoint: navbar-expand-lg

## 5. Homepage (index.html) Structure

- **Hero Heading:** 找回身心靈的平衡
- **Total Content Sections:** 5

  Section 1: 核心服務
  Section 2: 關於 Yoga Studio
  Section 3: 客戶好評
  Section 4: 最新消息
  Section 5: 準備好開始了嗎？

- **Footer Columns:** Yoga Studio
- **Social Icons:** Facebook, Instagram, Line (Bootstrap Icons)
- **Copyright:** 2026 Yoga Studio. All Rights Reserved.

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
