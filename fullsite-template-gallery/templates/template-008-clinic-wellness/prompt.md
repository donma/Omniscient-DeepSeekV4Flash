# Clinic Wellness - AI Complete Website Generation Prompt

> This document is a complete website specification. Generate 12 full HTML pages with Bootstrap 5, SEO meta, Open Graph, and Schema.org structured data. Each page must be a complete, standalone HTML file.

---

## 1. Brand Information

- **Brand Name:** Clinic Wellness
- **Industry:** 醫療健康
- **Positioning:** 為診所、健康管理中心打造的白藍乾淨信任感形象網站。
- **Visual Theme:** 白藍乾淨
- **Layout Type:** 經典 Landing Page

## 2. Complete Color System

CSS Custom Properties (:root variables) - use these EXACT values:

- --primary: #4a8bc2
- --primary-dark: #1a5276
- --font-serif: 'Noto Sans TC', sans-serif
- --dark: #0d2b45
- --bg-cream: #ffffff
- --secondary: #f0f7ff
- --light: #d6e8f7

## 3. Typography

- Chinese Font: Noto Sans TC via Google Fonts CDN
- Include font weights: 300, 400, 500, 700, 800, 900
- English/Numbers: Bootstrap 5 system default

## 4. Navigation Bar (Fixed-Top)

- **Brand Text:** Clinic Wellness
- **Nav Items:** 關於, 服務, 健檢, 設備, 好評, FAQ, 預約, 流程, 部落格, 聯絡
- Mobile: Hamburger toggle button with Bootstrap collapse
- Breakpoint: navbar-expand-lg

## 5. Homepage (index.html) Structure

- **Hero Heading:** 您的健康 我們的承諾
- **Total Content Sections:** 4

  Section 1: [VITALCARE CLINIC] 
  Section 2: [WHY US] 為什麼選擇 VitalCare？
  Section 3: [SERVICES] 服務項目
  Section 4: [TEAM] 醫療團隊

- **Footer Columns:** VitalCare 診所, 快速連結, 聯絡資訊, 追蹤我們
- **Social Icons:** Facebook, Instagram, Line (Bootstrap Icons)
- **Copyright:** 2026 Clinic Wellness. All Rights Reserved.

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
