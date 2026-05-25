(function () {
  'use strict';

  var templates = [];
  var currentView = 'grid';
  var filters = { industry: 'all', color: 'all', layout: 'all', feature: 'all' };

  var industryCategories = [
    '全部', '餐飲甜點', '美容健康', '零售商品', '專業服務',
    '教育課程', '創意設計', '空間生活', '旅遊休閒', '科技商務', '地方品牌', '個人品牌', '活動組織'
  ];

  var colorCategories = [
    '全部', '淺色系', '深色系', '奶茶色', '黑金色', '灰白極簡',
    '粉色柔和', '綠色自然', '藍白信任', '暖棕生活', '高對比現代', '科技漸層', '大地色'
  ];

  var layoutTypes = [
    '全部', '經典 Landing Page', '大圖沉浸式 Hero', '左右分割 Split Hero',
    'Magazine 雜誌式首頁', 'Masonry 作品牆', '商品型 Grid Catalog',
    'Storytelling 長卷軸', '活動 / 體驗導向', '影音 / 氛圍導向',
    '科技產品導向', '個人品牌站', '活動報名頁', '非營利組織站'
  ];

  var featureTags = [
    '全部', 'Slider Banner', '服務列表', '商品分類', '商品詳情', '作品集',
    '案例詳情', '顧客好評', 'FAQ', '預約須知', '地圖區塊', 'Line 預約',
    'Line 詢問', 'Instagram 連結', 'Blog', '強 SEO', 'LocalBusiness Schema',
    'Organization Schema', '圖片豐富', 'Demo CTA', '價格方案', '產品特色',
    '解決方案', '議程列表', '捐款 CTA', '訂位 CTA', '報名 CTA', '諮詢 CTA',
    '訂房 CTA', '購買 CTA', '邀約 CTA', '師資介紹', '醫師介紹', '課程列表',
    '房型介紹', '行程列表'
  ];

  function init() {
    loadData();
    renderFilters();
    setupListeners();
    renderGrid();
  }

  function loadData() {
    if (typeof TEMPLATES_DATA !== 'undefined' && TEMPLATES_DATA.length >= 90) {
      templates = TEMPLATES_DATA;
    } else {
      var xhr = new XMLHttpRequest();
      xhr.open('GET', 'data/templates.json', false);
      try {
        xhr.send();
        if (xhr.status >= 200 && xhr.status < 400) {
          templates = JSON.parse(xhr.responseText);
        } else {
          templates = fallbackTemplates || [];
        }
      } catch (e) {
        templates = fallbackTemplates || [];
      }
    }
  }

  function renderFilters() {
    renderFilterGroup('industryFilter', industryCategories, 'industry');
    renderFilterGroup('colorFilter', colorCategories, 'color');
    renderFilterGroup('layoutFilter', layoutTypes, 'layout');
    renderFilterGroup('featureFilter', featureTags, 'feature');
  }

  function renderFilterGroup(containerId, items, filterKey) {
    var container = document.getElementById(containerId);
    if (!container) return;
    container.innerHTML = '';
    items.forEach(function (item) {
      var span = document.createElement('span');
      span.className = 'filter-tag' + (item === '全部' ? ' active' : '');
      span.textContent = item;
      span.dataset.filter = item === '全部' ? 'all' : item;
      span.dataset.filterKey = filterKey;
      container.appendChild(span);
    });
  }

  function setupListeners() {
    document.querySelectorAll('.filter-tag').forEach(function (el) {
      el.addEventListener('click', function () {
        var key = this.dataset.filterKey;
        var value = this.dataset.filter;
        filters[key] = value;
        var group = this.parentElement;
        group.querySelectorAll('.filter-tag').forEach(function (t) { t.classList.remove('active'); });
        this.classList.add('active');
        renderGrid();
      });
    });

    document.getElementById('resetFilters').addEventListener('click', function () {
      filters = { industry: 'all', color: 'all', layout: 'all', feature: 'all' };
      document.querySelectorAll('.filter-tag').forEach(function (el) {
        el.classList.toggle('active', el.dataset.filter === 'all');
      });
      renderGrid();
    });

    document.querySelectorAll('.view-toggle .btn').forEach(function (btn) {
      btn.addEventListener('click', function () {
        document.querySelectorAll('.view-toggle .btn').forEach(function (b) { b.classList.remove('active'); });
        this.classList.add('active');
        currentView = this.dataset.view;
        var grid = document.getElementById('templateGrid');
        grid.className = 'row template-grid' + (currentView === 'list' ? ' list-view' : '');
        renderGrid();
      });
    });
  }

  function getFilteredTemplates() {
    return templates.filter(function (t) {
      if (filters.industry !== 'all' && t.industryCategory !== filters.industry) return false;
      if (filters.color !== 'all') {
        var colorMatch = (t.colorTheme && t.colorTheme.indexOf(filters.color) !== -1);
        if (!colorMatch && t.tags) {
          var tagColorMatch = t.tags.some(function (tag) { return tag.indexOf(filters.color) !== -1; });
          if (!tagColorMatch) return false;
        }
      }
      if (filters.layout !== 'all' && t.layoutType !== filters.layout) return false;
      if (filters.feature !== 'all') {
        if (!t.tags || t.tags.indexOf(filters.feature) === -1) return false;
      }
      return true;
    });
  }

  function renderGrid() {
    var grid = document.getElementById('templateGrid');
    if (!grid) return;
    var filtered = getFilteredTemplates();
    document.getElementById('resultCount').textContent = filtered.length;

    grid.innerHTML = '';
    if (filtered.length === 0) {
      grid.innerHTML = '<div class="col-12 text-center py-5"><p class="text-secondary">沒有符合條件的樣板，請調整篩選條件。</p></div>';
      return;
    }

    var colsClass = currentView === 'list' ? '' : 'col-md-6 col-xl-4';

    filtered.forEach(function (t) {
      var col = document.createElement('div');
      col.className = colsClass;

      var zipBadge = t.hasZip
        ? '<span class="badge bg-success"><i class="bi bi-check-circle"></i> ZIP</span>'
        : '<span class="badge bg-secondary"><i class="bi bi-hourglass"></i> ZIP 待打包</span>';

      var promptBadge = '<span class="badge bg-info text-dark"><i class="bi bi-file-text"></i> Prompt</span>';
      var pagesBadge = '<span class="badge bg-primary"><i class="bi bi-file-earmark"></i> 12 Pages</span>';
      var imageRichBadge = t.imageRich ? '<span class="badge bg-warning text-dark"><i class="bi bi-images"></i> 圖片豐富</span>' : '';

      var tagsHtml = (t.tags || []).slice(0, 5).map(function (tag) {
        return '<span class="badge">' + tag + '</span>';
      }).join('');

      var detailUrl = 'template-detail.html?id=' + t.id;

      col.innerHTML =
        '<div class="template-card card">' +
          '<img src="' + t.previewImage + '" class="card-img-top" alt="' + t.name + ' 預覽" loading="lazy" onerror="this.src=\'data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22400%22 height=%22300%22><rect fill=%22%232a2a45%22 width=%22400%22 height=%22300%22/><text fill=%22%23a5a5c0%22 font-size=%2216%22 x=%2250%22 y=%22150%22>' + encodeURIComponent(t.name) + '</text></svg>\'">' +
          '<div class="card-body">' +
            '<h3 class="card-title">' + t.name + '</h3>' +
            '<p class="card-meta">' + (t.industryCategory || t.industry) + ' / ' + (t.colorTheme || '') + (t.layoutType ? ' / ' + t.layoutType : '') + '</p>' +
            '<div class="card-tags">' + tagsHtml + '</div>' +
            '<div class="card-icons">' + pagesBadge + promptBadge + zipBadge + imageRichBadge + '</div>' +
            '<div class="card-actions">' +
              '<a href="' + t.demoUrl + '" class="btn btn-outline-primary btn-sm" target="_blank"><i class="bi bi-eye"></i> 預覽</a>' +
              (t.hasZip
                ? '<a href="' + t.zipUrl + '" class="btn btn-outline-success btn-sm" download><i class="bi bi-download"></i> ZIP</a>'
                : '<button class="btn btn-outline-secondary btn-sm" disabled><i class="bi bi-hourglass"></i> 待打包</button>') +
              '<a href="' + t.promptUrl + '" class="btn btn-outline-info btn-sm" target="_blank"><i class="bi bi-file-text"></i> Prompt</a>' +
              '<a href="' + detailUrl + '" class="btn btn-outline-light btn-sm"><i class="bi bi-info-circle"></i> 詳情</a>' +
            '</div>' +
          '</div>' +
        '</div>';

      grid.appendChild(col);
    });
  }

  // Detail page
  if (window.location.pathname.indexOf('template-detail.html') !== -1) {
    initDetail();
  }

  function initDetail() {
    loadData();
    var params = new URLSearchParams(window.location.search);
    var id = params.get('id');
    var t = templates.find(function (x) { return x.id === id; });
    var container = document.getElementById('detailContainer');
    if (!t) {
      container.innerHTML = '<div class="text-center py-5"><h3>找不到此樣板</h3><a href="index.html" class="btn btn-primary mt-3">返回列表</a></div>';
      return;
    }

    var pageNames = ['index.html', 'about.html', 'services.html', 'service-detail.html', 'portfolio.html', 'reviews.html', 'faq.html', 'booking.html', 'process.html', 'blog.html', 'blog-detail.html', 'contact.html'];
    var pagesHtml = pageNames.map(function (p) {
      return '<li><i class="bi bi-file-earmark-code"></i>' + p + '</li>';
    }).join('');

    document.title = t.name + ' - Omniscient 樣板詳情';
    document.querySelector('meta[name="description"]').content = t.name + ' - 完整 12 頁網站樣板，產業：' + (t.industryCategory || t.industry) + '，色系：' + t.colorTheme;

    var zipBtn = t.hasZip
      ? '<a href="' + t.zipUrl + '" class="btn btn-success btn-lg" download><i class="bi bi-download"></i> 下載 ZIP</a>'
      : '<button class="btn btn-secondary btn-lg" disabled><i class="bi bi-hourglass"></i> ZIP 待打包</button>';

    container.innerHTML =
      '<div class="detail-hero">' +
        '<img src="' + t.previewImage + '" alt="' + t.name + '" onerror="this.src=\'data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22800%22 height=%22500%22><rect fill=%22%232a2a45%22 width=%22800%22 height=%22500%22/><text fill=%22%23a5a5c0%22 font-size=%2224%22 x=%2250%22 y=%22250%22>' + encodeURIComponent(t.name + ' Preview') + '</text></svg>\'">' +
        '<div class="detail-info">' +
          '<h1>' + t.name + '</h1>' +
          '<div class="detail-meta">' +
            '<span class="badge bg-primary">' + (t.industryCategory || t.industry) + '</span>' +
            '<span class="badge bg-secondary">' + (t.colorTheme || '') + '</span>' +
            '<span class="badge bg-info text-dark">' + (t.layoutType || '經典版型') + '</span>' +
            '<span class="badge bg-light text-dark"><i class="bi bi-file-earmark"></i> 12 Pages</span>' +
            (t.imageRich ? '<span class="badge bg-warning text-dark"><i class="bi bi-images"></i> 圖片豐富</span>' : '') +
          '</div>' +
          '<p style="color:var(--text-secondary);margin:0.5rem 0;font-size:1.05rem;">' + t.name + ' 是一套完整 12 頁的 ' + (t.industryCategory || t.industry) + ' 網站樣板，採用 ' + t.colorTheme + ' 色系，' + (t.layoutType || '經典版型') + ' 版型設計。適合 ' + (t.industryCategory || t.industry) + ' 產業使用。</p>' +
          '<div class="detail-tags">' + (t.tags || []).map(function (tag) { return '<span class="badge">' + tag + '</span>'; }).join('') + '</div>' +
          '<div class="detail-actions">' +
            '<a href="' + t.demoUrl + '" class="btn btn-primary btn-lg" target="_blank"><i class="bi bi-eye"></i> 預覽網站</a>' +
            zipBtn +
            '<a href="' + t.promptUrl + '" class="btn btn-info btn-lg" target="_blank"><i class="bi bi-file-text"></i> 檢視 Prompt</a>' +
          '</div>' +
          '<hr>' +
          '<h4><i class="bi bi-files"></i> 12 頁頁面清單</h4>' +
          '<ul class="page-list">' + pagesHtml + '</ul>' +
          '<hr>' +
          '<h4><i class="bi bi-search-heart"></i> SEO 結構說明</h4>' +
          '<p style="color:var(--text-secondary)">本樣板所有 HTML 頁面均包含：語意化 HTML5 結構、meta title / description、canonical placeholder、Open Graph 標籤、圖片 alt 屬性。首頁包含 LocalBusiness 或 Organization Schema 結構化資料。</p>' +
        '</div>' +
      '</div>';
  }

  if (window.location.pathname.indexOf('template-detail.html') === -1) {
    init();
  }
})();
