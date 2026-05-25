(function () {
  'use strict';

  var templates = [];
  var currentView = 'grid';
  var filters = { industry: 'all', color: 'all', layout: 'all', feature: 'all' };
  var searchQuery = '';
  var searchTimer = null;

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

  var pageNames = ['index.html', 'about.html', 'services.html', 'service-detail.html', 'portfolio.html', 'reviews.html', 'faq.html', 'booking.html', 'process.html', 'blog.html', 'blog-detail.html', 'contact.html'];

  function init() {
    loadData();
    renderFilters();
    setupListeners();
    applyFiltersAndRender();
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
        applyFiltersAndRender();
      });
    });

    document.getElementById('resetFilters').addEventListener('click', function () {
      filters = { industry: 'all', color: 'all', layout: 'all', feature: 'all' };
      searchQuery = '';
      var searchInput = document.getElementById('searchInput');
      if (searchInput) searchInput.value = '';
      document.querySelectorAll('.filter-tag').forEach(function (el) {
        el.classList.toggle('active', el.dataset.filter === 'all');
      });
      applyFiltersAndRender();
    });

    document.querySelectorAll('.view-toggle .btn').forEach(function (btn) {
      btn.addEventListener('click', function () {
        document.querySelectorAll('.view-toggle .btn').forEach(function (b) { b.classList.remove('active'); });
        this.classList.add('active');
        currentView = this.dataset.view;
        var grid = document.getElementById('templateGrid');
        grid.className = 'row template-grid' + (currentView === 'list' ? ' list-view' : '');
        applyFiltersAndRender();
      });
    });

    var searchInput = document.getElementById('searchInput');
    if (searchInput) {
      searchInput.addEventListener('input', function () {
        clearTimeout(searchTimer);
        searchTimer = setTimeout(function () {
          searchQuery = searchInput.value.trim().toLowerCase();
          applyFiltersAndRender();
        }, 200);
      });
    }
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
      if (searchQuery) {
        var name = (t.name || '').toLowerCase();
        var industry = ((t.industryCategory || t.industry || '')).toLowerCase();
        var color = (t.colorTheme || '').toLowerCase();
        var layout = (t.layoutType || '').toLowerCase();
        var tags = (t.tags || []).join(' ').toLowerCase();
        if (name.indexOf(searchQuery) === -1 && industry.indexOf(searchQuery) === -1 && color.indexOf(searchQuery) === -1 && layout.indexOf(searchQuery) === -1 && tags.indexOf(searchQuery) === -1) {
          return false;
        }
      }
      return true;
    });
  }

  function applyFiltersAndRender() {
    var filtered = getFilteredTemplates();
    renderGrid(filtered);
  }

  function renderGrid(filtered) {
    var grid = document.getElementById('templateGrid');
    if (!grid) return;
    document.getElementById('resultCount').textContent = filtered.length;

    grid.innerHTML = '';
    if (filtered.length === 0) {
      grid.innerHTML = '<div class="col-12"><div class="empty-state"><i class="bi bi-search"></i><h4>沒有符合條件的樣板</h4><p>請調整篩選條件或搜尋關鍵字。</p></div></div>';
      return;
    }

    var colsClass = currentView === 'list' ? '' : 'col-md-6 col-xl-4';
    var delay = 0;

    filtered.forEach(function (t) {
      var col = document.createElement('div');
      col.className = colsClass;

      var zipBadge = t.hasZip
        ? '<span class="badge bg-success"><i class="bi bi-check-circle"></i> ZIP</span>'
        : '<span class="badge bg-warning text-dark"><i class="bi bi-hourglass"></i> 待打包</span>';

      var promptBadge = '<span class="badge"><i class="bi bi-file-text"></i> Prompt</span>';
      var pagesBadge = '<span class="badge"><i class="bi bi-file-earmark"></i> 12' + '\u9801' + '</span>';
      var imageRichBadge = t.imageRich ? '<span class="badge" style="background:rgba(251,191,36,0.15);color:var(--accent-amber);border-color:rgba(251,191,36,0.15);"><i class="bi bi-images"></i> \u5716\u7247\u8c50\u5bcc</span>' : '';

      var tagsHtml = (t.tags || []).slice(0, 4).map(function (tag) {
        return '<span class="badge">' + tag + '</span>';
      }).join('');

      var detailUrl = 'template-detail.html?id=' + t.id;

      col.style.animationDelay = (delay * 0.05) + 's';
      delay++;

      col.innerHTML =
        '<div class="template-card card">' +
          '<div class="card-img-wrap">' +
            '<img src="' + t.previewImage + '" alt="' + t.name + ' \u9810\u89bd" loading="lazy" onerror="this.src=\'data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22400%22 height=%22300%22><rect fill=%22%2314142a%22 width=%22400%22 height=%22300%22/><text fill=%22%235c5c7a%22 font-size=%2216%22 x=%2250%22 y=%22150%22>' + encodeURIComponent(t.name) + '</text></svg>\'">' +
            '<div class="card-img-overlay-badges">' + pagesBadge + promptBadge + zipBadge + '</div>' +
          '</div>' +
          '<div class="card-body">' +
            '<h3 class="card-title">' + t.name + '</h3>' +
            '<div class="card-meta">' +
              '<span><i class="bi bi-grid"></i>' + (t.industryCategory || t.industry) + '</span>' +
              '<span><i class="bi bi-palette"></i>' + (t.colorTheme || '') + '</span>' +
              '<span><i class="bi bi-layout-three-columns"></i>' + (t.layoutType || '\u7d93\u5178\u7248\u578b') + '</span>' +
            '</div>' +
            '<div class="card-tags">' + tagsHtml + '</div>' +
            '<div class="card-actions">' +
              '<a href="' + t.demoUrl + '" class="btn btn-outline-primary btn-sm" target="_blank"><i class="bi bi-eye"></i> \u9810\u89bd</a>' +
              '<a href="' + detailUrl + '" class="btn btn-outline-light btn-sm"><i class="bi bi-info-circle"></i> \u8a73\u60c5</a>' +
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
      container.innerHTML = '<div class="text-center py-5"><i class="bi bi-exclamation-circle" style="font-size:3rem;color:var(--text-muted);display:block;margin-bottom:1rem;"></i><h3 style="color:var(--text-secondary);font-weight:600;">\u627e\u4e0d\u5230\u6b64\u6a23\u677f</h3><a href="index.html" class="btn btn-primary mt-3" style="border-radius:12px;padding:0.6rem 2rem;">\u8fd4\u56de\u5217\u8868</a></div>';
      return;
    }

    var pagesHtml = pageNames.map(function (p) {
      return '<li><i class="bi bi-file-earmark-code"></i>' + p + '</li>';
    }).join('');

    document.title = t.name + ' — Omniscient \u6a23\u677f\u8a73\u60c5';
    document.querySelector('meta[name="description"]').content = t.name + ' - \u5b8c\u6574 12 \u9801\u7db2\u7ad9\u6a23\u677f\uff0c\u7522\u696d\uff1a' + (t.industryCategory || t.industry) + '\uff0c\u8272\u7cfb\uff1a' + t.colorTheme;

    var zipBtn = t.hasZip
      ? '<a href="' + t.zipUrl + '" class="btn btn-success" download><i class="bi bi-download"></i> \u4e0b\u8f09 ZIP</a>'
      : '<button class="btn btn-success" disabled style="opacity:0.5;"><i class="bi bi-hourglass"></i> ZIP \u5f85\u6253\u5305</button>';

    var tagsHtml = (t.tags || []).map(function (tag) {
      return '<span class="badge">' + tag + '</span>';
    }).join('');

    container.innerHTML =
      '<div class="detail-hero">' +
        '<div class="hero-img-wrap">' +
          '<img src="' + t.previewImage + '" alt="' + t.name + '" onerror="this.src=\'data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 width=%22800%22 height=%22500%22><rect fill=%22%2314142a%22 width=%22800%22 height=%22500%22/><text fill=%22%235c5c7a%22 font-size=%2224%22 x=%2250%22 y=%22250%22>' + encodeURIComponent(t.name) + '</text></svg>\'">' +
        '</div>' +
        '<div class="detail-info">' +
          '<h1>' + t.name + '</h1>' +
          '<div class="detail-meta">' +
            '<span class="badge badge-industry">' + (t.industryCategory || t.industry) + '</span>' +
            '<span class="badge badge-color">' + (t.colorTheme || '') + '</span>' +
            '<span class="badge badge-layout">' + (t.layoutType || '\u7d93\u5178\u7248\u578b') + '</span>' +
            '<span class="badge badge-pages"><i class="bi bi-file-earmark"></i> 12 \u9801</span>' +
            (t.imageRich ? '<span class="badge badge-image"><i class="bi bi-images"></i> \u5716\u7247\u8c50\u5bcc</span>' : '') +
          '</div>' +
          '<p style="color:var(--text-secondary);margin:0.5rem 0;font-size:1rem;line-height:1.7;">' + t.name + ' \u662f\u4e00\u5957\u5b8c\u6574 12 \u9801\u7684 ' + (t.industryCategory || t.industry) + ' \u7db2\u7ad9\u6a23\u677f\uff0c\u63a1\u7528 ' + t.colorTheme + ' \u8272\u7cfb\uff0c' + (t.layoutType || '\u7d93\u5178\u7248\u578b') + ' \u7248\u578b\u8a2d\u8a08\u3002\u9069\u5408 ' + (t.industryCategory || t.industry) + ' \u7522\u696d\u4f7f\u7528\u3002</p>' +
          '<div class="detail-actions">' +
            '<a href="' + t.demoUrl + '" class="btn btn-primary" target="_blank"><i class="bi bi-eye"></i> \u9810\u89bd\u7db2\u7ad9</a>' +
            zipBtn +
            '<a href="' + t.promptUrl + '" class="btn btn-info" target="_blank"><i class="bi bi-file-text"></i> \u6aa2\u8996 Prompt</a>' +
          '</div>' +
        '</div>' +
      '</div>' +
      '<div class="row mt-4">' +
        '<div class="col-md-7">' +
          '<div class="detail-section">' +
            '<h4><i class="bi bi-files"></i> 12 \u9801\u9801\u9762\u6e05\u55ae</h4>' +
            '<ul class="page-list">' + pagesHtml + '</ul>' +
          '</div>' +
        '</div>' +
        '<div class="col-md-5">' +
          '<div class="detail-section">' +
            '<h4><i class="bi bi-tags"></i> \u529f\u80fd\u6a19\u7c64</h4>' +
            '<div class="detail-tags">' + tagsHtml + '</div>' +
          '</div>' +
          '<div class="detail-section">' +
            '<h4><i class="bi bi-search-heart"></i> SEO \u7d50\u69cb</h4>' +
            '<p style="color:var(--text-secondary);font-size:0.85rem;line-height:1.7;margin:0;">' +
              '\u672c\u6a23\u677f\u6240\u6709 HTML \u9801\u9762\u5747\u542b\u6709\uff1a\u8a9e\u610f\u5316 HTML5 \u7d50\u69cb\u3001meta title / description\u3001canonical placeholder\u3001Open Graph \u6a19\u7c64\u3001\u5716\u7247 alt \u5c6c\u6027\u3002\u9996\u9801\u5305\u542b LocalBusiness \u6216 Organization Schema \u7d50\u69cb\u5316\u8cc7\u6599\u3002' +
            '</p>' +
          '</div>' +
        '</div>' +
      '</div>';
  }

  if (window.location.pathname.indexOf('template-detail.html') === -1) {
    init();
  }
})();
