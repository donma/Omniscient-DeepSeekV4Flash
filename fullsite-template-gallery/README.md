# Omniscient 全能模板市集 — 90 套完整全端網站模板

一個收錄 **90 套完整全端網站模板**的展示型畫廊，涵蓋美業、餐飲、科技、醫療、零售、教育等多元產業。每套模板包含 12 頁完整 HTML 頁面、SEO 結構、JSON-LD Schema、RWD 響應式設計，純前端 (HTML5 + CSS3 + JS + Bootstrap 5)，無需後端即可運行。

## 專案結構

```
fullsite-template-gallery/
├── index.html              # 畫廊首頁（篩選、網格展示）
├── template-detail.html    # 模板詳細頁面
├── assets/
│   ├── css/gallery.css     # 畫廊樣式
│   ├── js/
│   │   ├── gallery.js      # 畫廊邏輯（渲染、篩選）
│   │   └── data.js         # 90 筆模板資料（繁體中文）
│   └── img/previews/       # 90 張模板預覽截圖
├── data/templates.json     # 模板資料（JSON 來源）
├── downloads/              # ZIP 下載目錄（待打包）
└── templates/              # 90 套模板目錄
    └── template-NNN-slug/
        ├── index.html          # 首頁
        ├── about.html          # 關於我們
        ├── services.html       # 服務項目
        ├── service-detail.html # 服務詳細
        ├── portfolio.html      # 作品展示
        ├── reviews.html        # 客戶評價
        ├── faq.html            # 常見問題
        ├── booking.html        # 預約諮詢
        ├── process.html        # 服務流程
        ├── blog.html           # 部落格列表
        ├── blog-detail.html    # 部落格內文
        ├── contact.html        # 聯絡我們
        ├── assets/
        │   ├── css/style.css
        │   ├── js/main.js
        │   └── img/preview.jpg
        ├── template.json       # 模板元資料
        ├── tags.json           # 顏色/功能標籤
        ├── prompt.md           # AI 生成提示詞
        └── README.md           # 模板說明
```

## 特色

- **90 套產業模板** — 美業、餐飲、時尚、咖啡、設計、花藝、健身、醫療、行銷、科技、教育、旅遊、飯店、零售、手作等
- **12 頁完整結構** — 每套模板皆含首頁、關於、服務、作品、評價、FAQ、預約、流程、部落格、聯絡等完整頁面
- **繁體中文內容** — 所有文字內容皆為台灣繁體中文
- **純前端架構** — 無需後端、無需資料庫，直接開啟 HTML 即可瀏覽
- **Bootstrap 5 響應式** — 桌面 / 平板 / 手機全尺寸支援
- **完整 SEO** — Open Graph、Twitter Card、JSON-LD Schema、語意化 HTML5
- **一鍵預覽截圖** — 每套模板皆附 1280×800 首頁截圖
- **AI 生成提示詞** — 每套模板附 `prompt.md` 完整規格書，可重現生成

## 使用方式

直接以瀏覽器開啟 `index.html` 即可瀏覽畫廊（支援 `file://` 通訊協定）。

- 使用分類篩選按鈕快速過濾產業類型
- 點擊模板卡片進入詳細頁面
- 點選「檢視提示詞」可查看該模板的完整 AI 生成規格
- 點選「線上預覽」直接開啟模板首頁

## 技術棧

- HTML5 / CSS3 / JavaScript（純前端）
- Bootstrap 5.3.2（CDN）
- Bootstrap Icons 1.11.3（CDN）
- Google Fonts — Noto Sans TC（CDN）
- Unsplash 免費圖庫圖片
- JSON-LD Schema.org 結構化資料

## 模板產業涵蓋

| 類別 | 模板數量 |
|------|---------|
| 美業與個人護理 | 6 |
| 餐飲與食品 | 10 |
| 零售與品牌 | 12 |
| 科技與企業服務 | 10 |
| 醫療與健康 | 4 |
| 教育與學習 | 5 |
| 運動與健身 | 6 |
| 旅遊與住宿 | 5 |
| 文創與手作 | 10 |
| 媒體與創意 | 10 |
| 專業服務（會計、法律、保險、人資等） | 6 |
| 其他 | 6 |

## 注意事項

- 模板使用 Unsplash 免費圖片，部分圖片需保留原作者 attribution
- 所有模板的 `hasZip` 設為 `false`，`zipUrl` 為佔位值，尚未打包 ZIP
- 可從 `file://` 直接瀏覽畫廊，無需 HTTP Server

---

以 **DeepSeek V4 Flash** 為基礎，結合 Claude、Gemini、GPT 等多個 AI 模型協作生成。
