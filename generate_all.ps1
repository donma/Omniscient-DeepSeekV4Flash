$base = "D:\AI_PROJECTS\OmniscientFree\fullsite-template-gallery\templates"

function WriteFile($path, $content) {
    $full = Join-Path $base $path
    $null = New-Item -ItemType Directory -Path (Split-Path $full -Parent) -Force
    Set-Content -Path $full -Value $content -Encoding UTF8
}

function MakeNav($custom) {
    $n = @()
    $n += @{id="index";url="./index.html";label="Home"}
    $n += @{id="about";url="./about.html";label="About"}
    switch($custom) {
        "T031" { 
            $n += @{id="services";url="./services.html";label="Solutions"}
            $n += @{id="service-detail";url="./service-detail.html";label="Product Detail"}
            $n += @{id="portfolio";url="./portfolio.html";label="Case Studies"}
            $n += @{id="booking";url="./booking.html";label="Demo Booking"}
        }
        "T032" { 
            $n += @{id="services";url="./services.html";label="Features"}
            $n += @{id="portfolio";url="./portfolio.html";label="Screenshots"}
            $n += @{id="booking";url="./booking.html";label="Download"}
            $n += @{id="service-detail";url="./service-detail.html";label="Detail"}
        }
        "T034" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Projects"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T035" { 
            $n += @{id="services";url="./services.html";label="Solutions"}
            $n += @{id="portfolio";url="./portfolio.html";label="Case Studies"}
            $n += @{id="booking";url="./booking.html";label="Free Consultation"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T036" { 
            $n += @{id="services";url="./services.html";label="Products"}
            $n += @{id="portfolio";url="./portfolio.html";label="Factory"}
            $n += @{id="booking";url="./booking.html";label="Inquiry"}
            $n += @{id="service-detail";url="./service-detail.html";label="Product Detail"}
        }
        "T037" { 
            $n += @{id="services";url="./services.html";label="Products"}
            $n += @{id="portfolio";url="./portfolio.html";label="Projects"}
            $n += @{id="booking";url="./booking.html";label="Inquiry"}
            $n += @{id="service-detail";url="./service-detail.html";label="Product Detail"}
        }
        "T038" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Coverage"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T039" { 
            $n += @{id="services";url="./services.html";label="Plans"}
            $n += @{id="portfolio";url="./portfolio.html";label="Cases"}
            $n += @{id="booking";url="./booking.html";label="Appointment"}
            $n += @{id="service-detail";url="./service-detail.html";label="Plan Detail"}
        }
        "T040" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Cases"}
            $n += @{id="booking";url="./booking.html";label="Consultation"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T041" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Events"}
            $n += @{id="booking";url="./booking.html";label="Get Quote"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T042" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Work"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T043" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Content"}
            $n += @{id="booking";url="./booking.html";label="Inquiry"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T044" { 
            $n += @{id="services";url="./services.html";label="Packages"}
            $n += @{id="portfolio";url="./portfolio.html";label="Showreel"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Package Detail"}
        }
        "T045" { 
            $n += @{id="services";url="./services.html";label="Courses"}
            $n += @{id="portfolio";url="./portfolio.html";label="Results"}
            $n += @{id="booking";url="./booking.html";label="Register"}
            $n += @{id="service-detail";url="./service-detail.html";label="Course Detail"}
        }
        "T046" { 
            $n += @{id="services";url="./services.html";label="Courses"}
            $n += @{id="portfolio";url="./portfolio.html";label="Testimonials"}
            $n += @{id="booking";url="./booking.html";label="Enroll"}
            $n += @{id="service-detail";url="./service-detail.html";label="Course Detail"}
        }
        "T047" { 
            $n += @{id="services";url="./services.html";label="Classes"}
            $n += @{id="portfolio";url="./portfolio.html";label="Gallery"}
            $n += @{id="booking";url="./booking.html";label="Book Now"}
            $n += @{id="service-detail";url="./service-detail.html";label="Class Detail"}
        }
        "T048" { 
            $n += @{id="services";url="./services.html";label="Classes"}
            $n += @{id="portfolio";url="./portfolio.html";label="Studio"}
            $n += @{id="booking";url="./booking.html";label="Book Trial"}
            $n += @{id="service-detail";url="./service-detail.html";label="Class Detail"}
        }
        "T049" { 
            $n += @{id="services";url="./services.html";label="Treatments"}
            $n += @{id="portfolio";url="./portfolio.html";label="Results"}
            $n += @{id="booking";url="./booking.html";label="Consultation"}
            $n += @{id="service-detail";url="./service-detail.html";label="Treatment Detail"}
        }
        "T050" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Cases"}
            $n += @{id="booking";url="./booking.html";label="預約掛號"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T051" { 
            $n += @{id="services";url="./services.html";label="Topics"}
            $n += @{id="portfolio";url="./portfolio.html";label="Talks"}
            $n += @{id="booking";url="./booking.html";label="Invite"}
            $n += @{id="service-detail";url="./service-detail.html";label="Topic Detail"}
        }
        "T052" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Client Results"}
            $n += @{id="booking";url="./booking.html";label="Book a Session"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T053" { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Work"}
            $n += @{id="booking";url="./booking.html";label="Collaborate"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
        "T054" { 
            $n += @{id="services";url="./services.html";label="Books"}
            $n += @{id="portfolio";url="./portfolio.html";label="Events"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Book Detail"}
        }
        "T055" { 
            $n += @{id="services";url="./services.html";label="Episodes"}
            $n += @{id="portfolio";url="./portfolio.html";label="Guests"}
            $n += @{id="booking";url="./booking.html";label="Subscribe"}
            $n += @{id="service-detail";url="./service-detail.html";label="Episode Detail"}
        }
        "T056" { 
            $n += @{id="services";url="./services.html";label="Works"}
            $n += @{id="portfolio";url="./portfolio.html";label="Exhibitions"}
            $n += @{id="booking";url="./booking.html";label="Contact"}
            $n += @{id="service-detail";url="./service-detail.html";label="Work Detail"}
        }
        "T057" { 
            $n += @{id="services";url="./services.html";label="Portfolio"}
            $n += @{id="portfolio";url="./portfolio.html";label="Shop"}
            $n += @{id="booking";url="./booking.html";label="Commission"}
            $n += @{id="service-detail";url="./service-detail.html";label="Portfolio Detail"}
        }
        "T058" { 
            $n += @{id="services";url="./services.html";label="Schedule"}
            $n += @{id="portfolio";url="./portfolio.html";label="Speakers"}
            $n += @{id="booking";url="./booking.html";label="Register"}
            $n += @{id="service-detail";url="./service-detail.html";label="Session Detail"}
        }
        "T059" { 
            $n += @{id="services";url="./services.html";label="Exhibition"}
            $n += @{id="portfolio";url="./portfolio.html";label="Artists"}
            $n += @{id="booking";url="./booking.html";label="Tickets"}
            $n += @{id="service-detail";url="./service-detail.html";label="Exhibition Detail"}
        }
        "T060" { 
            $n += @{id="services";url="./services.html";label="Our Work"}
            $n += @{id="portfolio";url="./portfolio.html";label="Projects"}
            $n += @{id="booking";url="./booking.html";label="Donate"}
            $n += @{id="service-detail";url="./service-detail.html";label="Work Detail"}
        }
        default { 
            $n += @{id="services";url="./services.html";label="Services"}
            $n += @{id="portfolio";url="./portfolio.html";label="Portfolio"}
            $n += @{id="booking";url="./booking.html";label="Booking"}
            $n += @{id="service-detail";url="./service-detail.html";label="Service Detail"}
        }
    }
    $n += @{id="reviews";url="./reviews.html";label="Reviews"}
    $n += @{id="faq";url="./faq.html";label="FAQ"}
    $n += @{id="process";url="./process.html";label="Process"}
    $n += @{id="blog";url="./blog.html";label="Blog"}
    $n += @{id="blog-detail";url="./blog-detail.html";label="Blog Detail"}
    $n += @{id="contact";url="./contact.html";label="Contact"}
    return $n
}

function Head($t,$d,$u) {
    return @"
<!DOCTYPE html>
<html lang="zh-Hant">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>$t</title>
<meta name="description" content="$d">
<link rel="canonical" href="$u">
<meta property="og:title" content="$t">
<meta property="og:description" content="$d">
<meta property="og:image" content="https://images.unsplash.com/photo-1551434678-e0768f08c8c8?w=1200">
<meta property="og:type" content="website">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
"@
}

function NavHtml($active, $nav) {
    $lis = ""
    foreach($x in $nav) {
        $c = if($x.id -eq $active){" active"}else{""}
        $lis += "<li class='nav-item'><a class='nav-link$c' href='$($x.url)'>$($x.label)</a></li>`n"
    }
    return @"
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
<div class="container">
<a class="navbar-brand fw-bold" href="./index.html"><i class="bi bi-hexagon-fill me-2"></i>Brand</a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav"><span class="navbar-toggler-icon"></span></button>
<div class="collapse navbar-collapse" id="mainNav"><ul class="navbar-nav ms-auto">
$lis
</ul></div></div></nav>
"@
}

function FooterHtml() {
    return @'
<footer class="footer pt-5 pb-3">
<div class="container">
<div class="row g-4">
<div class="col-lg-4">
<h5 class="fw-bold mb-3"><i class="bi bi-hexagon-fill me-2"></i>Brand</h5>
<p>專業值得信賴的合作夥伴，為您提供最優質的服務與解決方案。</p>
<div class="social-links mt-3">
<a href="#" class="me-2" aria-label="LINE"><i class="bi bi-line"></i></a>
<a href="#" class="me-2" aria-label="Instagram"><i class="bi bi-instagram"></i></a>
<a href="#" class="me-2" aria-label="Facebook"><i class="bi bi-facebook"></i></a>
<a href="#" aria-label="YouTube"><i class="bi bi-youtube"></i></a>
</div></div>
<div class="col-lg-2 col-md-4">
<h6 class="fw-bold mb-3">快速連結</h6>
<ul class="list-unstyled">
<li class="mb-2"><a href="./about.html" class="text-decoration-none">關於我們</a></li>
<li class="mb-2"><a href="./services.html" class="text-decoration-none">服務項目</a></li>
<li class="mb-2"><a href="./portfolio.html" class="text-decoration-none">案例作品</a></li>
<li class="mb-2"><a href="./blog.html" class="text-decoration-none">最新消息</a></li>
</ul></div>
<div class="col-lg-3 col-md-4">
<h6 class="fw-bold mb-3">聯絡資訊</h6>
<ul class="list-unstyled">
<li class="mb-2"><i class="bi bi-geo-alt me-2"></i>台北市大安區忠孝東路四段100號</li>
<li class="mb-2"><i class="bi bi-telephone me-2"></i>(02) 2771-1234</li>
<li class="mb-2"><i class="bi bi-envelope me-2"></i>info@brand.com</li>
</ul></div>
<div class="col-lg-3 col-md-4">
<h6 class="fw-bold mb-3">營業時間</h6>
<ul class="list-unstyled">
<li class="mb-1">週一至週五：09:00-18:00</li>
<li class="mb-1">週六：10:00-17:00</li>
<li>週日：公休</li>
</ul></div></div>
<hr class="my-4">
<div class="row"><div class="col text-center"><p class="mb-0">&copy; 2026 Brand. All rights reserved.</p></div></div></div></footer>
'@
}

function ScriptsHtml() {
    return '<button id="backToTop" class="btn btn-primary rounded-circle position-fixed" aria-label="回到頂部"><i class="bi bi-arrow-up"></i></button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js"></script>'
}

function SchemaHtml($nn, $dd, $uu) {
    return "<script type='application/ld+json'>{`"@context`":`"https://schema.org`",`"@type`":`"Organization`",`"name`":`"$nn`",`"description`":`"$dd`",`"url`":`"$uu`"}</script>"
}

function WritePage($dir, $pg, $title, $desc, $body, $nav, $bname) {
    $h = Head $title $desc "./$pg.html"
    $n = NavHtml $pg $nav
    $f = FooterHtml
    $s = ScriptsHtml
    $sc = SchemaHtml $bname $desc "./$pg.html"
    $html = "$h<body>$n<main>$body</main>$f$s$sc</body></html>"
    WriteFile "$dir/$pg.html" $html
}

function WriteConfigs($dir, $t) {
    # template.json
    $tj = @"
{
    "id": "$($t.id)",
    "slug": "$($t.slug)",
    "name": "$($t.name)",
    "description": "$($t.desc)",
    "industry": "$($t.industry)",
    "industryCategory": "$($t.cat)",
    "colorTheme": "$($t.color)",
    "layoutType": "$($t.layout)",
    "previewImage": "assets/img/preview.jpg",
    "zipFile": "../../downloads/$($t.id)-$($t.slug).zip",
    "hasZip": false,
    "promptFile": "prompt.md",
    "pageCount": 12,
    "imageRich": true,
    "imagePolicy": "圖片僅作為設計示意，正式交付前請替換為客戶自有或授權圖片。",
    "pages": ["index.html","about.html","services.html","service-detail.html","portfolio.html","reviews.html","faq.html","booking.html","process.html","blog.html","blog-detail.html","contact.html"]
}
"@
    WriteFile "$dir/template.json" $tj
    
    WriteFile "$dir/tags.json" "`"$($t.industry)`",`"$($t.cat)`",`"Bootstrap 5`",`"RWD`",`"$($t.color)`",`"HTML5`",`"CSS3`""
    
    WriteFile "$dir/prompt.md" @"
# $($t.name)

## 產業
$($t.industry)

## 網站目標
$($t.desc)

## 設計方向
- 色系：$($t.color)
- 版型：$($t.layout)
- 獨特功能：$($t.features)
"@
    
    WriteFile "$dir/README.md" @"
# $($t.name) - 網站樣板

## 介紹
本套樣板為 $($t.name) 專屬設計，包含 12 個完整頁面，適用於 $($t.industry)。

## 檔案結構
```
template-$($t.id)-$($t.slug)/
├── index.html          # 首頁
├── about.html          # 關於我們
├── services.html       # 服務項目
├── service-detail.html # 服務詳細
├── portfolio.html      # 作品案例
├── reviews.html        # 客戶評價
├── faq.html            # 常見問題
├── booking.html        # 預約諮詢
├── process.html        # 服務流程
├── blog.html           # 最新消息
├── blog-detail.html    # 文章詳細
├── contact.html        # 聯絡我們
├── README.md           # 本文件
├── template.json       # 樣板設定
├── tags.json           # 標籤設定
├── prompt.md           # AI 提示詞
└── assets/
    ├── css/
    │   ├── style.css
    │   └── responsive.css
    ├── js/
    │   └── main.js
    └── img/
        ├── preview.jpg
        └── image-sources.md
```

## 修改方式
- 品牌資訊：修改導覽列與頁尾的 Brand 文字
- 圖片替換：替換 Unsplash 圖片為客戶自有圖片
- 社交連結：修改 footer 中社交媒體連結 href
- 地圖：替換 Google Maps iframe src
- SEO：修改每頁 title 與 meta description
"@

    # CSS
    WriteFile "$dir/assets/css/style.css" @"
:root{--c1:$($t.c1);--c2:$($t.c2);--c3:$($t.c3);--c4:$($t.c4);--c5:$($t.c5)}
*{font-family:'Noto Sans TC',sans-serif}
body{padding-top:76px}
.navbar{background:linear-gradient(135deg,var(--c1),var(--c2))!important;box-shadow:0 2px 20px rgba(0,0,0,.1)}
.navbar .nav-link{color:rgba(255,255,255,.85)!important;font-weight:500;margin:0 4px;padding:8px 16px!important;border-radius:8px;transition:.3s}
.navbar .nav-link:hover,.navbar .nav-link.active{color:#fff!important;background:rgba(255,255,255,.15)}
.hero{min-height:90vh;display:flex;align-items:center;position:relative;overflow:hidden;background:linear-gradient(135deg,var(--c1),var(--c2))}
.hero h1{font-weight:900;font-size:3.2rem;line-height:1.2}
.hero .subtitle{font-size:1.2rem;opacity:.9}
section{padding:100px 0}
.section-title{font-weight:900;margin-bottom:60px;position:relative;text-align:center}
.section-title:after{content:'';display:block;width:60px;height:4px;background:var(--c4);margin:16px auto 0;border-radius:2px}
.card{border:none;border-radius:16px;overflow:hidden;transition:.4s;box-shadow:0 4px 20px rgba(0,0,0,.08)}
.card:hover{transform:translateY(-8px);box-shadow:0 12px 40px rgba(0,0,0,.15)}
.card-img-top{height:240px;object-fit:cover}
.btn-primary{background:var(--c4);border-color:var(--c4);padding:12px 32px;border-radius:50px;font-weight:700;transition:.3s}
.btn-primary:hover{background:var(--c5);border-color:var(--c5);transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,0,0,.2)}
.btn-outline-light{border-radius:50px;padding:12px 32px;font-weight:700}
.footer{background:var(--c1);color:rgba(255,255,255,.8)}
.footer a{color:rgba(255,255,255,.7);transition:.3s}
.footer a:hover{color:#fff}
.social-links a{display:inline-flex;width:40px;height:40px;align-items:center;justify-content:center;border-radius:50%;background:rgba(255,255,255,.1);transition:.3s;font-size:1.2rem;color:rgba(255,255,255,.7);text-decoration:none}
.social-links a:hover{background:var(--c4);color:#fff}
#backToTop{width:48px;height:48px;bottom:30px;right:30px;z-index:999;display:none;box-shadow:0 4px 15px rgba(0,0,0,.3)}
.bg-soft{background:var(--c5);opacity:.05}
.step-circle{width:60px;height:60px;border-radius:50%;display:flex;align-items:center;justify-content:center;background:var(--c4);color:#fff;font-size:1.5rem;font-weight:900;margin:0 auto 16px}
.price-card{border:2px solid transparent;transition:.3s}
.price-card.featured{border-color:var(--c4);transform:scale(1.05)}
.price-card .price{font-size:3rem;font-weight:900;color:var(--c4)}
.faq-accordion .accordion-button:not(.collapsed){background:var(--c4);color:#fff}
.testimonial-card .bi-star-fill{color:#f59e0b}
.process-step{position:relative;text-align:center}
.process-step:not(:last-child):after{content:'→';position:absolute;right:-20px;top:50%;transform:translateY(-50%);font-size:2rem;color:var(--c3)}
.blog-card .card-text{display:-webkit-box;-webkit-line-clamp:3;-webkit-box-orient:vertical;overflow:hidden}
.hero-overlay{position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.5);z-index:1}
.hero-content{z-index:2;position:relative}
.icon-box{width:72px;height:72px;display:flex;align-items:center;justify-content:center;border-radius:16px;background:var(--c4);color:#fff;font-size:2rem;margin-bottom:1rem}
"@

    WriteFile "$dir/assets/css/responsive.css" @"
@media(max-width:991.98px){
.hero{text-align:center;padding:120px 0 60px}
.hero h1{font-size:2.5rem}
.process-step:not(:last-child):after{display:none}
.price-card.featured{transform:none}
}
@media(max-width:767.98px){
.hero h1{font-size:2rem}
section{padding:60px 0}
.section-title{font-size:1.5rem}
.card-img-top{height:200px}
}
@media(max-width:575.98px){
.hero h1{font-size:1.6rem}
.hero .subtitle{font-size:1rem}
}
"@

    WriteFile "$dir/assets/js/main.js" @"
document.addEventListener('DOMContentLoaded',function(){
var btt=document.getElementById('backToTop');
if(btt){window.addEventListener('scroll',function(){btt.style.display=window.scrollY>300?'block':'none'});
btt.addEventListener('click',function(){window.scrollTo({top:0,behavior:'smooth'})})}
document.querySelectorAll('a[href^="#"]').forEach(function(a){
a.addEventListener('click',function(e){var h=this.getAttribute('href');if(h!=='#'){e.preventDefault();var t=document.querySelector(h);if(t)t.scrollIntoView({behavior:'smooth'})}})});
document.querySelectorAll('form').forEach(function(f){f.addEventListener('submit',function(e){e.preventDefault();alert('感謝您的填寫！我們將盡快與您聯繫。');this.reset()})});
});
"@

    WriteFile "$dir/assets/img/image-sources.md" @"
# 圖片來源

本樣板使用 Unsplash 免費授權圖片作為設計示意之用。

## 注意事項
圖片僅作為設計示意，正式交付前請替換為客戶自有或授權圖片。
請勿直接使用於商業用途，建議購買正版圖庫或使用客戶提供之圖片。
"@

    # Preview SVG
    $svg = "<svg xmlns='http://www.w3.org/2000/svg' width='800' height='600' viewBox='0 0 800 600'><rect width='800' height='600' fill='$($t.c1)'/><rect x='50' y='50' width='700' height='500' rx='20' fill='$($t.c2)'/><text x='400' y='200' text-anchor='middle' font-family='Arial' font-size='32' font-weight='bold' fill='white'>$($t.name)</text><text x='400' y='250' text-anchor='middle' font-family='Arial' font-size='16' fill='#aaa'>Template Preview</text><text x='400' y='290' text-anchor='middle' font-family='Arial' font-size='14' fill='#888'>$($t.id)</text><rect x='300' y='400' width='200' height='40' rx='8' fill='$($t.c4)'/><text x='400' y='426' text-anchor='middle' font-family='Arial' font-size='14' fill='white' font-weight='bold'>PREVIEW</text></svg>"
    $b64 = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($svg))
    WriteFile "$dir/assets/img/preview.jpg" "data:image/svg+xml;base64,$b64"
}

function WriteInnerPages($dir, $tname, $desc, $nav, $exclude) {
    $pages = @("about","services","service-detail","portfolio","reviews","faq","booking","process","blog","blog-detail","contact")
    foreach($pg in $pages) {
        if($pg -eq $exclude) { continue }
        $label = (Get-Culture).TextInfo.ToTitleCase($pg.Replace("-"," "))
        $body = @"
<section class="py-5">
<div class="container">
<h1 class="fw-bold mb-4">$label</h1>
<p class="text-muted fs-5">$desc</p>
<div class="row g-4 mt-4">
<div class="col-md-6">
<img src="https://images.unsplash.com/photo-1551434678-e0768f08c8c8?w=800" alt="$label" class="img-fluid rounded-4 shadow">
</div>
<div class="col-md-6">
<h3 class="fw-bold mb-3">關於 $label</h3>
<p>歡迎來到 $tname。我們致力於提供最優質的服務，滿足您的需求。請瀏覽我們的網站了解更多資訊，或直接與我們聯繫。</p>
<a href="./booking.html" class="btn btn-primary mt-3">立即諮詢</a>
</div></div></div></section>
<section class="bg-soft py-5">
<div class="container">
<h2 class="section-title">核心價值</h2>
<div class="row g-4">
<div class="col-lg-4"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-check-circle-fill"></i></div><h4 class="fw-bold mt-3">專業</h4><p class="text-muted">擁有豐富的產業經驗與專業知識。</p></div></div>
<div class="col-lg-4"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-heart-fill"></i></div><h4 class="fw-bold mt-3">用心</h4><p class="text-muted">用心傾聽客戶需求，提供最佳方案。</p></div></div>
<div class="col-lg-4"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-star-fill"></i></div><h4 class="fw-bold mt-3">品質</h4><p class="text-muted">堅持最高品質標準，超越客戶期待。</p></div></div>
</div></div></section>
"@
        WritePage $dir $pg "$tname - $label" $desc $body $nav $tname
    }
}

function WriteCommonSections($t) {
    return @"
<section>
<div class="container">
<h2 class="section-title">核心服務</h2>
<div class="row g-4">
<div class="col-lg-4 col-md-6"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-lightning-fill"></i></div><h4 class="fw-bold mt-3">專業服務</h4><p class="text-muted">提供專業且高效的服務，滿足客戶多元化的需求與期待。</p></div></div>
<div class="col-lg-4 col-md-6"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-gear-fill"></i></div><h4 class="fw-bold mt-3">客製方案</h4><p class="text-muted">結合最新技術與豐富經驗，為您打造量身訂做的解決方案。</p></div></div>
<div class="col-lg-4 col-md-6"><div class="card p-4 h-100"><div class="icon-box"><i class="bi bi-graph-up-arrow"></i></div><h4 class="fw-bold mt-3">持續優化</h4><p class="text-muted">持續優化與創新，協助客戶在競爭激烈的市場中脫穎而出。</p></div></div>
</div></div></section>
<section class="bg-soft">
<div class="container">
<h2 class="section-title">關於 $($t.name)</h2>
<div class="row align-items-center">
<div class="col-lg-6"><img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?w=800" alt="團隊" class="img-fluid rounded-4 shadow"></div>
<div class="col-lg-6"><h3 class="fw-bold mb-4">我們的故事</h3><p>我們是一群充滿熱情的專業團隊，致力於為客戶創造最大價值。多年來，我們服務了超過百家企業，累積了豐富的產業經驗與專業知識。</p><p>我們相信每一個專案都是一段合作的旅程。</p><a href="./about.html" class="btn btn-primary mt-3">了解更多</a></div>
</div></div></section>
<section>
<div class="container">
<h2 class="section-title">客戶好評</h2>
<div class="row g-4">
<div class="col-lg-4 col-md-6"><div class="card p-4 testimonial-card h-100"><div class="d-flex gap-1 mb-3"><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i></div><p class="mb-3">"非常專業的團隊，服務態度優良，值得信賴的合作夥伴。"</p><div class="d-flex align-items-center"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=100" alt="客戶" class="rounded-circle me-3" width="48" height="48" style="object-fit:cover"><div><strong>林小姐</strong><br><small class="text-muted">企業主管</small></div></div></div></div>
<div class="col-lg-4 col-md-6"><div class="card p-4 testimonial-card h-100"><div class="d-flex gap-1 mb-3"><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i></div><p class="mb-3">"專業度與效率都讓人印象深刻，大大改善了我們的業務流程。"</p><div class="d-flex align-items-center"><img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100" alt="客戶" class="rounded-circle me-3" width="48" height="48" style="object-fit:cover"><div><strong>陳先生</strong><br><small class="text-muted">創辦人</small></div></div></div></div>
<div class="col-lg-4 col-md-6"><div class="card p-4 testimonial-card h-100"><div class="d-flex gap-1 mb-3"><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i></div><p class="mb-3">"從諮詢到執行，每一個環節都讓人感到安心與專業。"</p><div class="d-flex align-items-center"><img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100" alt="客戶" class="rounded-circle me-3" width="48" height="48" style="object-fit:cover"><div><strong>王小姐</strong><br><small class="text-muted">行銷總監</small></div></div></div></div>
</div></div></section>
<section class="bg-soft">
<div class="container">
<h2 class="section-title">最新消息</h2>
<div class="row g-4">
<div class="col-lg-4 col-md-6"><div class="card blog-card h-100"><img src="https://images.unsplash.com/photo-1504711434969-e33886168d0c?w=600" class="card-img-top" alt="部落格"><div class="card-body"><small class="text-muted">2026年5月20日</small><h5 class="fw-bold mt-2">產業趨勢分析</h5><p class="card-text text-muted">深入探討最新產業趨勢與未來發展方向。</p><a href="./blog-detail.html" class="btn btn-outline-primary btn-sm">閱讀更多</a></div></div></div>
<div class="col-lg-4 col-md-6"><div class="card blog-card h-100"><img src="https://images.unsplash.com/photo-1557804506-669a67965ba0?w=600" class="card-img-top" alt="部落格"><div class="card-body"><small class="text-muted">2026年5月15日</small><h5 class="fw-bold mt-2">成功案例分享</h5><p class="card-text text-muted">了解如何透過專業服務提升營運效率。</p><a href="./blog-detail.html" class="btn btn-outline-primary btn-sm">閱讀更多</a></div></div></div>
<div class="col-lg-4 col-md-6"><div class="card blog-card h-100"><img src="https://images.unsplash.com/photo-1559136555-9303baea8ebd?w=600" class="card-img-top" alt="部落格"><div class="card-body"><small class="text-muted">2026年5月10日</small><h5 class="fw-bold mt-2">新服務上線</h5><p class="card-text text-muted">全新服務方案為客戶帶來更全面的體驗。</p><a href="./blog-detail.html" class="btn btn-outline-primary btn-sm">閱讀更多</a></div></div></div>
</div></div></section>
<section>
<div class="container text-center">
<h2 class="section-title">準備好開始了嗎？</h2>
<p class="fs-5 text-muted mb-4">立即聯繫我們，讓專業團隊為您服務。</p>
<a href="./booking.html" class="btn btn-primary btn-lg px-5">立即諮詢</a>
</div></section>
"@
}

# ============================================================
# TEMPLATE DATA
# ============================================================
$templates = @()

# T031
$templates += @{id="T031";slug="ai-saas-company";name="AI SaaS Company";c1="#0a0a1a";c2="#1a1a3e";c3="#4a4a8a";c4="#7c3aed";c5="#06b6d4";industry="AI 軟體即服務";cat="科技商務";color="深色科技漸層";layout="全寬深色";desc="適合 AI SaaS 企業的科技感官方網站，展示產品功能與訂價方案。";desc2="AI驅動的智慧解決方案";features="全寬深色 Hero 含動態網格背景, 價格卡片, 產品功能 grid"}
# T032
$templates += @{id="T032";slug="app-landing";name="App Landing Page";c1="#f8fafc";c2="#e2e8f0";c3="#3b82f6";c4="#6366f1";c5="#0f172a";industry="App 應用程式";cat="科技商務";color="淺色科技";layout="手機 Mockup";desc="適合 App 產品頁面，展示功能亮點並引導下載。";desc2="前所未有的行動體驗";features="手機 Mockup 在 Hero 右側, 功能圖標列表, app store 下載按鈕"}
# T033
$templates += @{id="T033";slug="cyber-security";name="Cyber Security";c1="#020813";c2="#0a1a2e";c3="#1a3a5a";c4="#00d4aa";c5="#e94560";industry="資訊安全";cat="科技商務";color="深藍黑網格";layout="柵格背景";desc="適合資安公司的專業網站，展現防護能力與技術實力。";desc2="守護您的數位資產";features="柵格/線條背景 Hero, 盾牌圖標, 風險矩陣圖"}
# T034
$templates += @{id="T034";slug="system-integrator";name="System Integrator";c1="#f0f4f8";c2="#dce2e8";c3="#4a7a9a";c4="#2a5a7a";c5="#1a3a5a";industry="系統整合";cat="科技商務";color="白灰藍企業感";layout="流程圖";desc="適合系統整合商的企業官網，展示技術整合能力。";desc2="串聯科技，驅動未來";features="流程圖 Hero, 技術棧標籤, 客戶 Logo 牆"}
# T035
$templates += @{id="T035";slug="cloud-consulting";name="Cloud Consulting";c1="#f0f8ff";c2="#e0f0fe";c3="#3b82f6";c4="#1a5a8a";c5="#0a2a4a";industry="雲端顧問";cat="科技商務";color="藍白乾淨專業";layout="架構圖";desc="適合雲端顧問公司，展示雲端解決方案與諮詢服務。";desc2="讓您的企業輕鬆上雲";features="雲端架構圖 Hero, 方案比較表, 諮詢表單"}
# T036
$templates += @{id="T036";slug="industrial-manufacturing";name="Industrial Manufacturing";c1="#0a0a0a";c2="#2a2a2a";c3="#4a4a4a";c4="#e87a20";c5="#f5f0e8";industry="工業製造";cat="科技商務";color="灰黑橘機械感";layout="工廠大圖";desc="適合工業製造商的產品展示官網，展現工廠實力。";desc2="精密製造，品質保證";features="工廠大圖 Hero, 產品規格表, 認證標章"}
# T037
$templates += @{id="T037";slug="building-materials";name="Building Materials";c1="#2a2a2a";c2="#5a5a5a";c3="#8a8a8a";c4="#c4c4c4";c5="#f0f0f0";industry="建材";cat="空間生活";color="灰白建築大圖材質";layout="材質紋理";desc="適合建材品牌的產品型錄網站，展示材質與施工案例。";desc2="構築您的理想空間";features="材質紋理 Hero, 產品分類 grid, 施工案例"}
# T038
$templates += @{id="T038";slug="logistics-company";name="Logistics Company";c1="#0a3a5a";c2="#1a6a8a";c3="#e87a20";c4="#f5a040";c5="#f0f8fa";industry="物流運輸";cat="專業服務";color="藍橘速度感";layout="地圖路線";desc="適合物流公司的服務官網，展示運輸網絡與服務範圍。";desc2="準時送達，使命必達";features="地圖路線 Hero, 服務範圍卡片, 追蹤步驟"}

# T039
$templates += @{id="T039";slug="insurance-consultant";name="Insurance Consultant";c1="#0a1628";c2="#1a2a4a";c3="#c9a84c";c4="#d4b86a";c5="#f5f0e8";industry="保險顧問";cat="專業服務";color="深藍金信任感";layout="人像信任";desc="適合保險顧問的個人品牌官網，建立專業信任感。";desc2="守護您與家人的未來";features="人像信任 Hero, 方案卡片, 理賠流程"}
# T040
$templates += @{id="T040";slug="hr-consulting";name="HR Consulting";c1="#f5f7fa";c2="#e8ecf0";c3="#4a7a9a";c4="#2a5a7a";c5="#1a3a5a";industry="人力資源";cat="專業服務";color="淺色商務人像感";layout="團隊人像";desc="適合人資顧問公司的專業服務網站。";desc2="發掘人才，成就企業";features="團隊人像 Hero, 服務流程圖, 客戶見證"}
# T041
$templates += @{id="T041";slug="event-planning";name="Event Planning";c1="#1a0a2a";c2="#4a1a6a";c3="#e94560";c4="#f59e0b";c5="#f0f0f0";industry="活動策劃";cat="創意設計";color="高彩現代動態感";layout="動態派對";desc="適合活動策劃公司的創意官網，展示精彩活動案例。";desc2="打造每一場難忘的盛典";features="動態派對 Hero, 活動案例牆, 提案步驟"}
# T042
$templates += @{id="T042";slug="marketing-agency";name="Marketing Agency";c1="#0a0a1a";c2="#1a1a3e";c3="#e94560";c4="#06b6d4";c5="#f5f5f5";industry="行銷代理商";cat="創意設計";color="深色潮流數據感";layout="數據儀表板";desc="適合行銷代理商的作品展示與數據成果官網。";desc2="數據驅動，創造品牌價值";features="數據儀表板 Hero, 案例展示, 業績增長數字"}
# T043
$templates += @{id="T043";slug="social-media-agency";name="Social Media Agency";c1="#f0f0f8";c2="#e8e0f0";c3="#8a5ac9";c4="#e94560";c5="#f59e0b";industry="社群媒體行銷";cat="創意設計";color="亮色卡片社群感";layout="社群牆";desc="適合社群媒體行銷公司的內容展示網站。";desc2="讓您的品牌在社群發光";features="社群牆 Hero, 內容案例卡片, 平台圖標"}
# T044
$templates += @{id="T044";slug="video-production";name="Video Production";c1="#000000";c2="#1a1a1a";c3="#3a3a3a";c4="#e8c84a";c5="#f0f0f0";industry="影片製作";cat="創意設計";color="黑色電影感大圖";layout="播放按鈕";desc="適合影片製作公司的作品展示官網，凸顯視覺張力。";desc2="用影像說故事";features="播放按鈕 Hero, 作品 grid 含懸浮播放, 製作流程"}
# T045
$templates += @{id="T045";slug="cram-school";name="Cram School";c1="#1a5276";c2="#2e86c1";c3="#f39c12";c4="#f7dc6f";c5="#f0f8ff";industry="補習班";cat="教育課程";color="明亮藍黃教育感";layout="學生圖";desc="適合補習班的招生官網，展示課程與教學成果。";desc2="讓孩子愛上學習";features="學生圖 Hero, 課程時間表, 成績進步案例"}
# T046
$templates += @{id="T046";slug="online-course";name="Online Course";c1="#1a0a3a";c2="#3a1a6a";c3="#7c3aed";c4="#06b6d4";c5="#f0f0f8";industry="線上課程";cat="教育課程";color="紫色漸層科技教育";layout="筆電螢幕";desc="適合線上教育平台的課程銷售官網。";desc2="隨時隨地，學習無限";features="筆電/螢幕 Hero, 課程卡片含進度條, 講師介紹"}
# T047
$templates += @{id="T047";slug="yoga-studio";name="Yoga Studio";c1="#f0f5ea";c2="#e0e8d0";c3="#7a9a5a";c4="#4a6a3a";c5="#2a3a1a";industry="瑜珈工作室";cat="美容健康";color="米白綠安靜自然";layout="瑜珈姿勢";desc="適合瑜珈工作室的靜謐品牌官網，傳遞身心平衡理念。";desc2="找回身心靈的平衡";features="瑜珈姿勢 Hero, 課程時間表, 環境空間圖"}
# T048
$templates += @{id="T048";slug="pilates-studio";name="Pilates Studio";c1="#f5e6d3";c2="#e8d5c4";c3="#c9a88e";c4="#8c6e5d";c5="#3d2b1f";industry="皮拉提斯工作室";cat="美容健康";color="奶茶色精品健身";layout="器械設備";desc="適合皮拉提斯工作室的精品健身官網。";desc2="雕塑體態，啟動核心";features="器械設備 Hero, 課程卡片含難度標示, 教練團隊"}
# T049
$templates += @{id="T049";slug="aesthetic-clinic";name="Aesthetic Clinic";c1="#f8f6f0";c2="#ece6dc";c3="#c4b89a";c4="#8a7a5a";c5="#3a2a1a";industry="醫美診所";cat="美容健康";color="白金精緻醫療";layout="診所環境";desc="適合醫美診所的精緻品牌官網，傳遞專業與美感。";desc2="煥發您的自信光彩";features="診所環境 Hero, 療程比較表, 案例前後對比"}
# T050
$templates += @{id="T050";slug="chinese-medicine";name="Chinese Medicine";c1="#f5f0e6";c2="#e8e0d0";c3="#4a6a3a";c4="#2a4a1a";c5="#1a2a0a";industry="中醫診所";cat="美容健康";color="米白墨綠東方信任";layout="東方風格";desc="適合中醫診所的傳統東方風格官網，傳遞養生理念。";desc2="傳承千年智慧，守護您的健康";features="東方風格 Hero, 中藥材展示, 醫師介紹"}
# T051
$templates += @{id="T051";slug="personal-speaker";name="Personal Speaker";c1="#0a0a0a";c2="#1a1a2e";c3="#c9a84c";c4="#f5f0e8";c5="#4a4a4a";industry="個人演講者";cat="個人品牌";color="深色高級舞台感";layout="舞台聚光燈";desc="適合專業講者的個人品牌官網，展示演講主題與經歷。";desc2="啟發思維，改變視野";features="舞台聚光燈 Hero, 演講主題卡片, 合作品牌 Logo"}
# T052
$templates += @{id="T052";slug="career-coach";name="Career Coach";c1="#f5f7fa";c2="#e8ecf0";c3="#4a7a9a";c4="#2a5a7a";c5="#1a3a5a";industry="職涯教練";cat="個人品牌";color="淺色商務人像";layout="專業人像";desc="適合職涯教練的個人品牌官網，建立專業權威感。";desc2="指引您的職涯方向";features="專業人像 Hero, 服務方案表, 客戶見證"}
# T053
$templates += @{id="T053";slug="creator-portfolio";name="Creator Portfolio";c1="#000000";c2="#222222";c3="#555555";c4="#aaaaaa";c5="#f5f5f5";industry="創作者個人作品集";cat="個人品牌";color="黑白極簡作品導向";layout="全屏作品";desc="適合創作者的作品集網站，極簡設計讓作品說話。";desc2="創造不凡";features="全屏作品 Hero, Masonry 作品牆, 社群數據"}
# T054
$templates += @{id="T054";slug="author-book-site";name="Author Book Site";c1="#f5f0e6";c2="#e8e0d0";c3="#c4b89a";c4="#8a7a5a";c5="#3a2a1a";industry="作家/書籍";cat="個人品牌";color="紙感閱讀溫暖";layout="書本翻頁";desc="適合作家的個人網站，介紹書籍與作者故事。";desc2="用文字溫暖世界";features="書本翻頁 Hero, 書籍列表卡片, 作者故事"}
# T055
$templates += @{id="T055";slug="podcast-show";name="Podcast Show";c1="#0a0a1a";c2="#1a1a3e";c3="#6366f1";c4="#e94560";c5="#f5f5f5";industry="Podcast";cat="個人品牌";color="深色聲波媒體感";layout="聲波動畫";desc="適合 Podcast 節目的品牌官網，展示集數與訂閱資訊。";desc2="聽見不一樣的聲音";features="聲波動畫 Hero, 集數列表含播放, 平台訂閱按鈕"}
# T056
$templates += @{id="T056";slug="artist-portfolio";name="Artist Portfolio";c1="#fafafa";c2="#eaeaea";c3="#cacaca";c4="#8a8a8a";c5="#2a2a2a";industry="藝術家";cat="個人品牌";color="大圖留白展覽感";layout="大圖全屏";desc="適合藝術家的作品集網站，大圖留白凸顯作品質感。";desc2="藝術，就是生活的片刻";features="大圖全屏 Hero, 作品分類展示, 展覽歷程時間線"}
# T057
$templates += @{id="T057";slug="illustrator-portfolio";name="Illustrator Portfolio";c1="#faf0f0";c2="#f0e0e8";c3="#e8a0b0";c4="#c06080";c5="#8a3050";industry="插畫家";cat="個人品牌";color="高彩手繪感";layout="手繪風格";desc="適合插畫家的個人作品集網站，展現手繪風格。";desc2="用畫筆描繪世界";features="手繪風格 Hero, 作品瀑布流, 委託流程"}
# T058
$templates += @{id="T058";slug="conference-event";name="Conference Event";c1="#0a0a1a";c2="#1a1a3e";c3="#06b6d4";c4="#f59e0b";c5="#f5f5f5";industry="研討會";cat="活動組織";color="科技深色議程導向";layout="倒數計時";desc="適合研討會/會議的活動官網，包含議程與講者資訊。";desc2="匯聚創新，共創未來";features="倒數計時 Hero, 議程時間表, 講者卡片"}
# T059
$templates += @{id="T059";slug="exhibition-event";name="Exhibition Event";c1="#fafafa";c2="#eaeaea";c3="#cacaca";c4="#8a8a8a";c5="#2a2a2a";industry="展覽";cat="活動組織";color="白色藝廊大圖";layout="藝廊白牆";desc="適合展覽/藝廊的活動官網，白牆大圖凸顯藝術品。";desc2="藝術與空間的對話";features="藝廊白牆 Hero, 藝術家作品展示, 展期資訊"}
# T060
$templates += @{id="T060";slug="nonprofit-organization";name="Nonprofit Organization";c1="#f5f0e8";c2="#e8e0d0";c3="#4a7a5a";c4="#2a5a3a";c5="#1a3a2a";industry="非營利組織";cat="活動組織";color="溫暖人文信任";layout="人文感動";desc="適合非營利組織的倡議官網，傳遞公益理念與專案成果。";desc2="用愛心改變世界";features="人文感動 Hero, 專案成果展示, 捐款 CTA"}

# ============================================================
# HERO GENERATION
# ============================================================
function GetHero($t) {
    switch($t.layout) {
        "全寬深色" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));position:relative">
<div style="position:absolute;top:0;left:0;width:100%;height:100%;background-image:radial-gradient(circle at 20px 20px,rgba(255,255,255,.03) 1px,transparent 1px);background-size:40px 40px;z-index:0"></div>
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-7 text-white"><span class="badge bg-light text-dark mb-3 px-3 py-2"><i class="bi bi-robot me-2"></i>$($t.name)</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><div class="d-flex gap-3 flex-wrap"><a href="./booking.html" class="btn btn-primary btn-lg px-4"><i class="bi bi-play-circle me-2"></i>預約演示</a><a href="./services.html" class="btn btn-outline-light btn-lg px-4">探索方案</a></div><div class="mt-5 d-flex gap-4 text-white-50"><div><small>99.9%</small><br><small>正常運行</small></div><div><small>500+</small><br><small>企業客戶</small></div><div><small>24/7</small><br><small>技術支援</small></div></div></div><div class="col-lg-5 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1551434678-e0768f08c8c8?w=800" alt="$($t.name)" class="img-fluid rounded-4 shadow-lg"></div></div></div></section>
"@ }
        "手機 Mockup" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><span class="badge bg-primary mb-3 px-3 py-2"><i class="bi bi-phone me-2"></i>全新上線</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><div class="d-flex gap-3 flex-wrap mt-4"><a href="#" class="btn btn-primary btn-lg px-4"><i class="bi bi-apple me-2"></i>App Store</a><a href="#" class="btn btn-outline-dark btn-lg px-4"><i class="bi bi-google-play me-2"></i>Google Play</a></div></div><div class="col-lg-6 mt-4 mt-lg-0 text-center"><img src="https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=400" alt="App 畫面" class="img-fluid" style="max-height:500px"></div></div></div></section>
"@ }
        "柵格背景" { return @"
<section class="hero" style="background:$($t.c1);position:relative">
<div style="position:absolute;top:0;left:0;width:100%;height:100%;background:linear-gradient(rgba(0,212,170,.05) 1px,transparent 1px),linear-gradient(90deg,rgba(0,212,170,.05) 1px,transparent 1px);background-size:60px 60px;z-index:0"></div>
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-6 text-white"><div class="mb-4"><i class="bi bi-shield-fill-check" style="font-size:3rem;color:$($t.c4)"></i></div><span class="badge mb-3 px-3 py-2" style="background:$($t.c4);color:$($t.c1)">24/7 安全防護</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);color:$($t.c1);font-weight:700;border-radius:50px">免費諮詢</a></div><div class="col-lg-6 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1555949963-ff9fe0c870eb?w=800" alt="網路安全" class="img-fluid rounded-4"></div></div></div></section>
"@ }
        "流程圖" { return @"
<section class="hero" style="background:$($t.c1);padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">系統整合專家</span><h1 style="color:$($t.c5);font-weight:900">$($t.desc2)</h1><p class="mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">聯繫我們</a></div><div class="col-lg-6 mt-4 mt-lg-0"><div class="bg-white p-4 rounded-4 shadow"><div class="d-flex align-items-center justify-content-between mb-3"><span class="badge bg-success">前端</span><span class="badge" style="background:$($t.c3)">API</span><span class="badge bg-warning">資料庫</span><span class="badge bg-info">雲端</span></div><div style="height:4px;background:linear-gradient(90deg,$($t.c4) 0%,$($t.c3) 50%,$($t.c4) 100%);border-radius:2px;margin:20px 0"></div><div class="d-flex justify-content-around text-center"><div><i class="bi bi-box" style="color:$($t.c4);font-size:2rem"></i><br><small>系統A</small></div><div><i class="bi bi-arrow-right" style="font-size:2rem;color:$($t.c3)"></i></div><div><i class="bi bi-box" style="color:$($t.c4);font-size:2rem"></i><br><small>系統B</small></div><div><i class="bi bi-arrow-right" style="font-size:2rem;color:$($t.c3)"></i></div><div><i class="bi bi-cloud" style="color:$($t.c4);font-size:2rem"></i><br><small>雲端</small></div></div></div></div></div></div></section>
"@ }
        "架構圖" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-7"><span class="badge bg-info text-dark mb-3 px-3 py-2"><i class="bi bi-cloud me-2"></i>雲端解決方案</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-primary btn-lg px-4">免費諮詢</a></div><div class="col-lg-5 mt-4 mt-lg-0"><div class="bg-white bg-opacity-10 p-4 rounded-4"><div class="text-center text-white"><i class="bi bi-cloud-arrow-up" style="font-size:3rem"></i><div class="d-flex justify-content-center gap-3 mt-3"><span class="badge bg-primary">AWS</span><span class="badge bg-success">GCP</span><span class="badge bg-info text-dark">Azure</span></div><div class="mt-3 small">遷移 | 架構 | 維運 | 安全</div></div></div></div></div></div></section>
"@ }
        "工廠大圖" { return @"
<section class="hero" style="padding:0;min-height:80vh;position:relative">
<img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=1200" alt="工廠" class="w-100 h-100" style="position:absolute;object-fit:cover">
<div class="hero-overlay" style="background:linear-gradient(rgba(0,0,0,.4),rgba(0,0,0,.7))"></div>
<div class="container hero-content text-center text-white"><h1 class="fw-bold display-4">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-5" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#fff">索取報價</a></div></section>
"@ }
        "材質紋理" { return @"
<section class="hero" style="padding:0;min-height:80vh;position:relative">
<img src="https://images.unsplash.com/photo-1518005020951-eccb494ad742?w=1200" alt="建材" class="w-100 h-100" style="position:absolute;object-fit:cover">
<div class="hero-overlay" style="background:linear-gradient(rgba(0,0,0,.3),rgba(0,0,0,.7))"></div>
<div class="container hero-content text-center text-white"><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><div class="d-flex justify-content-center gap-3 flex-wrap"><a href="./services.html" class="btn btn-lg px-4" style="background:$($t.c4);border:none;border-radius:50px;color:$($t.c5)!important;font-weight:700">產品目錄</a><a href="./portfolio.html" class="btn btn-outline-light btn-lg px-4">施工案例</a></div></div></section>
"@ }
        "地圖路線" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff"><i class="bi bi-truck me-2"></i>全台配送</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><div class="d-flex gap-4"><div><h3 class="fw-bold mb-0" style="color:$($t.c3)">500+</h3><small>服務城市</small></div><div><h3 class="fw-bold mb-0" style="color:$($t.c3)">24hr</h3><small>快速到貨</small></div><div><h3 class="fw-bold mb-0" style="color:$($t.c3)">98%</h3><small>準時率</small></div></div></div><div class="col-lg-6 mt-4 mt-lg-0"><div class="bg-white bg-opacity-10 p-4 rounded-4"><i class="bi bi-geo-alt-fill text-white" style="font-size:3rem"></i></div></div></div></div></section>
"@ }
        "人像信任" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-5 text-center"><div style="width:320px;height:320px;border-radius:50%;overflow:hidden;border:4px solid $($t.c3);margin:0 auto"><img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?w=400" alt="專業顧問" class="w-100 h-100" style="object-fit:cover"></div></div><div class="col-lg-7 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:$($t.c1)"><i class="bi bi-shield-check me-2"></i>20年專業經驗</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c3);color:$($t.c1);border-radius:50px;font-weight:700">預約諮詢</a></div></div></div></section>
"@ }
        "團隊人像" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">專業人資團隊</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">免費諮詢</a></div><div class="col-lg-6 mt-4 mt-lg-0"><div class="row g-2"><div class="col-4"><img src="https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=300" alt="團隊" class="img-fluid rounded-3"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?w=300" alt="團隊" class="img-fluid rounded-3"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?w=300" alt="團隊" class="img-fluid rounded-3"></div></div></div></div></div></section>
"@ }
        "動態派對" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px;position:relative;overflow:hidden">
<div style="position:absolute;top:-50px;right:-50px;width:300px;height:300px;border-radius:50%;background:radial-gradient(circle,rgba(233,69,96,.3),transparent 70%)"></div>
<div style="position:absolute;bottom:-80px;left:-80px;width:400px;height:400px;border-radius:50%;background:radial-gradient(circle,rgba(245,158,11,.2),transparent 70%)"></div>
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-7 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)"><i class="bi bi-stars me-2"></i>專業策劃</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#fff">獲取報價</a></div><div class="col-lg-5 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1492684223066-81342ee5ff30?w=800" alt="活動策劃" class="img-fluid rounded-4 shadow-lg"></div></div></div></section>
"@ }
        "數據儀表板" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)">數據驅動行銷</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#fff">免費諮詢</a></div><div class="col-lg-6 mt-4 mt-lg-0"><div class="bg-white bg-opacity-10 p-4 rounded-4"><div class="row g-2 text-white text-center"><div class="col-4"><div class="p-3 rounded-3" style="background:rgba(255,255,255,.1)"><h3 class="fw-bold mb-0">300%</h3><small>平均成長</small></div></div><div class="col-4"><div class="p-3 rounded-3" style="background:rgba(255,255,255,.1)"><h3 class="fw-bold mb-0">500+</h3><small>合作品牌</small></div></div><div class="col-4"><div class="p-3 rounded-3" style="background:rgba(255,255,255,.1)"><h3 class="fw-bold mb-0">98%</h3><small>客戶滿意</small></div></div></div></div></div></div></div></section>
"@ }
        "社群牆" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff"><i class="bi bi-instagram me-2"></i>社群行銷</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c3);border:none;border-radius:50px;font-weight:700;color:#fff">立即諮詢</a></div><div class="col-lg-6 mt-4 mt-lg-0"><div class="row g-2"><div class="col-4"><img src="https://images.unsplash.com/photo-1611162617474-5b21e879e113?w=300" alt="社群" class="img-fluid rounded-3"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1611162616305-c69b3037c7bb?w=300" alt="社群" class="img-fluid rounded-3"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1611162618071-b39a2ec055fb?w=300" alt="社群" class="img-fluid rounded-3"></div></div></div></div></div></section>
"@ }
        "播放按鈕" { return @"
<section class="hero" style="padding:0;min-height:80vh;position:relative;background:#000">
<img src="https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=1200" alt="影片製作" class="w-100 h-100" style="position:absolute;object-fit:cover;opacity:.6">
<div class="container hero-content text-center text-white"><div style="width:100px;height:100px;border-radius:50%;background:rgba(255,255,255,.2);border:3px solid $($t.c4);display:flex;align-items:center;justify-content:center;margin:0 auto 30px"><i class="bi bi-play-fill" style="font-size:3rem;color:$($t.c4)"></i></div><h1 class="display-4 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><a href="./portfolio.html" class="btn btn-lg px-5" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#000">觀看作品</a></div></section>
"@ }
        "學生圖" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)"><i class="bi bi-book me-2"></i>招生中</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c3);border:none;border-radius:50px;font-weight:700;color:$($t.c5)!important">立即報名</a></div><div class="col-lg-6 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=800" alt="學生" class="img-fluid rounded-4 shadow-lg"></div></div></div></section>
"@ }
        "筆電螢幕" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-5 text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)">線上學習平台</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#fff">立即註冊</a></div><div class="col-lg-7 mt-4 mt-lg-0 text-center"><img src="https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=800" alt="線上學習" class="img-fluid rounded-4 shadow-lg" style="max-width:90%"></div></div></div></section>
"@ }
        "瑜珈姿勢" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">身心靈平衡</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">預約體驗</a></div><div class="col-lg-6 mt-4 mt-lg-0 text-center"><img src="https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800" alt="瑜珈" class="img-fluid rounded-4"></div></div></div></section>
"@ }
        "器械設備" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6"><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">預約試上</a></div><div class="col-lg-6 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1518611012118-696072aa579a?w=800" alt="皮拉提斯" class="img-fluid rounded-4 shadow"></div></div></div></section>
"@ }
        "診所環境" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-6 text-center"><img src="https://images.unsplash.com/photo-1631217868264-e5b90bb7e133?w=800" alt="診所環境" class="img-fluid rounded-4 shadow"></div><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:$($t.c5)">專業醫美診所</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">預約諮詢</a></div></div></div></section>
"@ }
        "東方風格" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px;position:relative">
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">傳承千年中醫智慧</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">預約掛號</a></div><div class="col-lg-6 mt-4 mt-lg-0 text-center"><img src="https://images.unsplash.com/photo-1584473457406-6249ae02e157?w=800" alt="中醫" class="img-fluid rounded-4"></div></div></div></section>
"@ }
        "舞台聚光燈" { return @"
<section class="hero" style="background:#000;padding:140px 0 80px;position:relative;overflow:hidden">
<div style="position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:600px;height:600px;background:radial-gradient(circle,rgba(201,168,76,.15),transparent 70%)"></div>
<div class="container hero-content text-center text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#000">國際認證講師</span><h1 class="display-4 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-5" style="background:$($t.c3);border:none;border-radius:50px;font-weight:700;color:#000">邀請演講</a></div></section>
"@ }
        "專業人像" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-5 text-center"><div style="width:300px;height:300px;border-radius:50%;overflow:hidden;border:4px solid $($t.c3);margin:0 auto;box-shadow:0 20px 60px rgba(0,0,0,.1)"><img src="https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=400" alt="職涯教練" class="w-100 h-100" style="object-fit:cover"></div></div><div class="col-lg-7"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">ICF認證教練</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">預約會談</a></div></div></div></section>
"@ }
        "全屏作品" { return @"
<section class="hero" style="padding:0;min-height:90vh;position:relative;background:#000">
<img src="https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=1200" alt="作品集" class="w-100 h-100" style="position:absolute;object-fit:cover;opacity:.5">
<div class="container hero-content text-center text-white"><h1 class="display-3 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./portfolio.html" class="btn btn-lg px-5" style="background:white;color:#000;border-radius:50px;font-weight:700">瀏覽作品</a></div></section>
"@ }
        "書本翻頁" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container"><div class="row align-items-center"><div class="col-lg-5 text-center"><img src="https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=500" alt="書籍" class="img-fluid shadow-lg rounded-3" style="max-height:400px"></div><div class="col-lg-7"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:$($t.c5)">暢銷作家</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./services.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">瀏覽書籍</a></div></div></div></section>
"@ }
        "聲波動畫" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px;position:relative;overflow:hidden">
<div class="container hero-content text-center text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)"><i class="bi bi-mic me-2"></i>每週更新</span><h1 class="display-4 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><div class="d-flex justify-content-center gap-3 flex-wrap"><a href="#" class="btn btn-lg px-4" style="background:#1DB954;border:none;border-radius:50px;font-weight:700;color:#fff"><i class="bi bi-spotify me-2"></i>Spotify</a><a href="#" class="btn btn-lg px-4" style="background:$($t.c3);border:none;border-radius:50px;font-weight:700;color:#fff"><i class="bi bi-apple me-2"></i>Apple</a><a href="./booking.html" class="btn btn-outline-light btn-lg px-4">訂閱收聽</a></div></div></section>
"@ }
        "大圖全屏" { return @"
<section class="hero" style="padding:0;min-height:90vh;position:relative;background:$($t.c1)">
<img src="https://images.unsplash.com/photo-1578301978693-85fa9c0320b9?w=1200" alt="藝術作品" class="w-100 h-100" style="position:absolute;object-fit:cover">
<div class="container hero-content text-center text-white"><h1 class="display-3 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5">$($t.desc)</p><a href="./portfolio.html" class="btn btn-lg px-5" style="background:rgba(255,255,255,.2);backdrop-filter:blur(10px);border:2px solid white;border-radius:50px;font-weight:700;color:#fff">探索作品</a></div></section>
"@ }
        "手繪風格" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px;position:relative">
<div style="position:absolute;top:20px;left:20px;font-size:6rem;color:rgba(200,100,130,.1);transform:rotate(-15deg)">✦</div>
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-6"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">原創插畫</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5" style="color:$($t.c5)">$($t.desc)</p><a href="./booking.html" class="btn btn-lg px-4" style="background:$($t.c4);border-radius:50px;font-weight:700;color:#fff">委託創作</a></div><div class="col-lg-6 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1561214115-f2f134cc4912?w=800" alt="插畫" class="img-fluid rounded-4 shadow"></div></div></div></section>
"@ }
        "倒數計時" { return @"
<section class="hero" style="background:linear-gradient(135deg,$($t.c1),$($t.c2));padding:140px 0 80px">
<div class="container text-center text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)">年度重磅活動</span><h1 class="display-3 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><div class="d-flex justify-content-center gap-4 my-5"><div class="text-center"><div class="display-4 fw-bold" style="color:$($t.c3)">15</div><small>天</small></div><div class="text-center"><div class="display-4 fw-bold" style="color:$($t.c3)">08</div><small>時</small></div><div class="text-center"><div class="display-4 fw-bold" style="color:$($t.c3)">32</div><small>分</small></div><div class="text-center"><div class="display-4 fw-bold" style="color:$($t.c3)">15</div><small>秒</small></div></div><a href="./booking.html" class="btn btn-lg px-5" style="background:$($t.c3);border:none;border-radius:50px;font-weight:700;color:#000">立即報名</a></div></section>
"@ }
        "藝廊白牆" { return @"
<section class="hero" style="background:$($t.c1);padding:140px 0 80px">
<div class="container text-center"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3);color:#fff">當代藝術展覽</span><h1 style="color:$($t.c5)">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px;color:$($t.c4)">$($t.desc)</p><div class="row g-3 mt-4"><div class="col-4"><img src="https://images.unsplash.com/photo-1531913764164-f85c3e01e714?w=400" alt="展覽" class="img-fluid rounded-3 shadow-sm"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1578301978693-85fa9c0320b9?w=400" alt="展覽" class="img-fluid rounded-3 shadow-sm"></div><div class="col-4"><img src="https://images.unsplash.com/photo-1518998053901-5348d3961a04?w=400" alt="展覽" class="img-fluid rounded-3 shadow-sm"></div></div><a href="./booking.html" class="btn btn-lg mt-4 px-5" style="background:$($t.c5);border:none;border-radius:50px;font-weight:700;color:#fff">購票參觀</a></div></section>
"@ }
        "人文感動" { return @"
<section class="hero" style="padding:0;min-height:85vh;position:relative">
<img src="https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?w=1200" alt="公益" class="w-100 h-100" style="position:absolute;object-fit:cover">
<div class="hero-overlay" style="background:linear-gradient(rgba(42,90,58,.6),rgba(26,58,42,.8))"></div>
<div class="container hero-content text-center text-white"><span class="badge mb-3 px-3 py-2" style="background:$($t.c3)">非營利組織</span><h1 class="display-4 fw-bold">$($t.desc2)</h1><p class="subtitle mt-4 mb-4 fs-5 mx-auto" style="max-width:600px">$($t.desc)</p><div class="d-flex justify-content-center gap-3 flex-wrap"><a href="./booking.html" class="btn btn-lg px-5" style="background:$($t.c4);border:none;border-radius:50px;font-weight:700;color:#fff"><i class="bi bi-heart me-2"></i>立即捐款</a><a href="./about.html" class="btn btn-outline-light btn-lg px-4">了解更多</a></div></div></section>
"@ }
        default { return @"
<section class="hero">
<div class="container hero-content"><div class="row align-items-center"><div class="col-lg-6 text-white"><span class="badge bg-light text-dark mb-3">$($t.name)</span><h1>$($t.desc2)</h1><p class="subtitle mt-4 mb-4">$($t.desc)</p><a href="./booking.html" class="btn btn-primary btn-lg">立即諮詢</a></div><div class="col-lg-6 mt-4 mt-lg-0"><img src="https://images.unsplash.com/photo-1551434678-e0768f08c8c8?w=800" alt="$($t.name)" class="img-fluid rounded-4 shadow-lg"></div></div></div></section>
"@ }
    }
}

# ============================================================
# MAIN GENERATION LOOP
# ============================================================
Write-Output "Starting generation of $($templates.Count) templates..."

foreach($t in $templates) {
    Write-Output "Generating $($t.id): $($t.name)..."
    $dir = "template-$($t.id)-$($t.slug)"
    $nav = MakeNav $t.id
    
    WriteConfigs $dir $t
    
    $hero = GetHero $t
    $common = WriteCommonSections $t
    $indexBody = $hero + $common
    WritePage $dir "index" "$($t.name) - 首頁" $t.desc $indexBody $nav $t.name
    
    WriteInnerPages $dir $t.name $t.desc $nav
}

Write-Output "=== ALL TEMPLATES GENERATED SUCCESSFULLY! ==="
