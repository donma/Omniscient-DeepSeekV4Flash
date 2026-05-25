# Beauty Studio - 美容美學網站樣板

## 樣板介紹
一套為美容美學產業設計的 12 頁完整形象網站，採用溫暖的奶茶色系，營造優雅、放鬆的品牌氛圍。基於 Bootstrap 5 建構，完整支援 RWD 響應式設計。

## 適合產業
- 美容沙龍
- 美甲美睫工作室
- SPA / 芳療會館
- 皮膚管理

## 檔案結構
```
template-001-beauty-studio/
├── index.html            # 首頁
├── about.html            # 品牌故事
├── services.html         # 服務項目
├── service-detail.html   # 服務詳細
├── portfolio.html        # 作品集
├── reviews.html          # 顧客評價
├── faq.html              # 常見問題
├── booking.html          # 線上預約
├── process.html          # 服務流程
├── blog.html             # 部落格列表
├── blog-detail.html      # 部落格內頁
├── contact.html          # 聯絡我們
├── template.json         # 樣板設定檔
├── tags.json             # 標籤分類檔
├── prompt.md             # AI 生成提示詞
├── README.md             # 本說明文件
├── images-sources.md     # 圖片來源記錄
└── assets/
    ├── css/
    │   ├── style.css     # 主要樣式
    │   └── responsive.css # 響應式樣式
    ├── js/
    │   └── main.js       # JavaScript
    └── img/
        └── preview.jpg   # 預覽圖
```

## 如何修改品牌名稱
1. 全域搜尋「Beauty Studio」或「美學工作室」
2. 替換為您的品牌名稱
3. 修改每個頁面的 title 和 meta description

## 如何替換圖片
- 所有圖片使用 Unsplash 可商用圖片
- 搜尋 unsplash.com 替換為您想要的圖片
- 若需本地圖片，請放入 assets/img/ 並更新 HTML 中的 src 路徑

## 如何修改 Line/IG 連結
- 搜尋 `line.me` 和 `instagram.com` 連結
- 替換為您的社群帳號網址
- 聯絡頁面和 footer 皆需更新

## 如何修改 Google Map
- 聯絡頁面中有 Google Map iframe 佔位
- 前往 Google Maps 取得您店址的嵌入代碼
- 替換 iframe 的 src

## 如何修改 SEO title/description
- 每個 HTML 頁面的 `<title>` 標籤
- 每個 HTML 頁面的 `<meta name="description">`
- Open Graph 的 `<meta property="og:title">` 和 `<meta property="og:description">`

## 圖片來源注意事項
本樣板使用的 Unsplash 圖片僅作為設計示意，正式上線前請替換為客戶自有圖片或取得 Unsplash 授權。
